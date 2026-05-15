# x-ds-pow-response逆向分析

> ​	节前实在不想上班，但是没事干时间过得很慢，遂来分析下DS的API，用AI击败AI

###	0x01 加密分析

​	首先查看请求，头里面有两个字段比较可疑x-ds-pow-response和x-hif-leim，参数明文传递，无可疑参数，经过多次请求分析，仅x-ds-pow-response这个字段变动，所以先分析这个字段是怎么来的。

![image-20260430162838756](E:\学习笔记\LearningDoc\逆向\DeepeSeek\assets\image-20260430162838756.png)

### 0x02 逆向分析

​	对**/api/v0/chat/completion**这个请求下一个XHR断点,重新发消息触发断点,断下请求后往上跟栈，跟到请求头生成的地方

![image-20260430163646383](E:\学习笔记\LearningDoc\逆向\DeepeSeek\assets\image-20260430163646383.png)

到这边我们可以看到请求参数的设置，这边的B参就是我们需要重点关注的，往上翻看B是怎么来的,找到B的定义位置，添加断点,刷新页面再次请求触发断点,这边有个点是因为所有的请求都会走这个生成头的逻辑，所以这边需要对请求URL过滤下一个条件断点，才能在这个请求下面断住。

```js
let B = {};
o(B, l.headers),
o(B, T.headers),
```

通过步进观察B变量的变化发现在执行完第二个函数之后，参数B就包含了头的内容，所以生成的逻辑就在这两个函数中，但是当我们查看传的参数会发现，其实**X-DS-PoW-Response**在**T.headers**中就已经包含，那就继续跟T看看是怎么来的。

```js
let T = a(l, _);
T.context = _.context,
T.method = null == (c = T.method) ? void 0 : c.toUpperCase(),
T.responseType = t.responseType || "text",
T.url = T.url || "",
```

在这边找到T的生成位置，同样下一个断点进行调试，调试来调试去，当我们把目光放到方法的入参去时，会发现入参的t里面就包含了这个参数值(苦瓜脸),所以不能闷头分析，进来先看看传递的参数是否已经包含我们想要的东西。

![image-20260430165245754](E:\学习笔记\LearningDoc\逆向\DeepeSeek\assets\image-20260430165245754.png)

那就接着往上面找，终于黄天不负有心人，我们找到了头生成的位置

```js
headers: {
    ...(e => {
        if ("challengeResponse"in e.request && e.request.challengeResponse) {
            let t = tx().base64Encode
              , [n,r] = (0,
            tR.Bx)(e.request.challengeResponse, tN, t);
            return {
                [n]: r
            }
        }
        return {}
    }
    )(e),
    ...(r = tx().addSSEHeader) && r() || {}
},
```

下断点调试，这边的r的值就是我们需要的，那么关键的生成函数就是(0,tR.Bx)(e.request.challengeResponse, tN, t)

![image-20260430170544260](E:\学习笔记\LearningDoc\逆向\DeepeSeek\assets\image-20260430170544260.png)

这边还存在个问题是入参**e.request.challengeResponse**也是传递进来的，待会还需要追这个，tn是url，t是Base64函数,我们下断先跟进这个函数。

```js
c = (e, t, n) => ["X-DS-PoW-Response", n(JSON.stringify({
    algorithm: e.algorithm,
    challenge: e.challenge,
    salt: e.salt,
    answer: e.answer,
    signature: e.signature,
    target_path: t
}))];
```

可以看到就是将传进来的参数按一定结构整理后进行Base64编码返回，这就是X-DS-PoW-Response的内容，那重点就是要跟e.request.challengeResponse这个值了。一直往上跟可以看到在这边进行了赋值,继续追c.res

```js
let {abort: h} = s.baseCompletion({
                        ...t,
                        modelType: l ? null : t.modelType,
                        fileExtensions: o,
                        challengeResponse: c.res,
                        parentMessageId: i,
                        scene: "completion",
                        preempt: d
}
```

在上面发现了生成代码,下断确认是否在这边生成，最终确定就是这个函数生了我们需要的东西。

```js
let c = await t.getPowRes();
```

#### getPowRes分析

跟进发现主要代码逻辑是这样的，我们需要的数据是res即t，t是由e赋值而来，e的生成主要是let e = await aW.retrieveAnswer(r),所以还得跟aW.retrieveAnswer(r)这个函数。

```js
aG = async e => {
    let {t, setIsSolvingChallenge: n, scene: r} = e;
    n(!0);
    let s = t("r1PowComputeFail");
    try {
        let e = await aW.retrieveAnswer(r)
          , t = null == e ? void 0 : e.res;
        if (t)
            return {
                success: !0,
                res: t
            };
        return {
            success: !1,
            msg: s
        }
    } catch (e) {
        return y.y.tracker.error({
            name: "fetchPowBroken",
            message: "POW获取异常",
            payload: y.y.tracker.withError(e, {
                scene: r
            })
        }),
        {
            success: !1,
            msg: s
        }
    } finally {
        n(!1)
    }
}
```

继续跟进得到以下关键代码,这段代码做了这些事：

先看有没有正在算 → 没有的话检查缓存是否有效 →有效就用（但只能用一次） → 无效就重新算 → 全程打日志

```js
() => {
    if (this.useProofOfWorkStore.getState().preparing)
        return this.calcImmediatelyNotStore();
    let e = this.verifySolveExpired();
    if ("valid" !== e)
        return this.useProofOfWorkStore.getState().clear(this.tracker, this.scene),
        this.calcImmediatelyNotStore();
    let {pair: {answer: t, challenge: n}} = this.useProofOfWorkStore.getState();
    return (this.useProofOfWorkStore.getState().clear(this.tracker, this.scene),
    Number.isInteger(null == t ? void 0 : t.res.answer)) ? (this.tracker.info({
        name: "retrievePowAnswer",
        message: "获取工作量证明: ".concat(this.scene),
        payload: {
            expireInfo: e,
            expireAt: (null == n ? void 0 : n.expireAt) || -1,
            scene: this.scene,
            answer: (null == t ? void 0 : t.res.answer) || -1,
            expireAfter: (null == n ? void 0 : n.expireAfter) || -1
        }
    }),
    t) : (this.tracker.error({
        name: "retrievePowAnswerFailed",
        message: "获取工作量证明失败: ".concat(this.scene, ",重新计算"),
        payload: this.tracker.withError(Error("invalid answer"), {
            scene: this.scene
        })
    }),
    this.calcImmediatelyNotStore())
}
```

我们需要的是重新计算部分的算法，因为需要跟进到计算的逻辑所以this.calcImmediatelyNotStore()在这个地方下断点，多次执行，等待触发，跟到如下代码,一个是生成内容需要的参数生成，一个是具体生成的逻辑,我们先跟getChallengeWrapped这个函数看看挑战需要的参数是怎么生成的。

```js
let e = await this.getChallengeWrapped()
                              , {challengeResponse: t, duration: n} = await this.doSolveChallenge(e, this.getTracker());
```

跟代码发现这边的参数是通过**/api/v0/chat/create_pow_challenge**这个路径向服务端请求获取的。

#### doSolveChallenge分析

这边其实就是用postMessage发送了一个消息使用Worker进行异步处理，Worker收到挑战参数后加载wasm文件进行计算然后获取结果进行返回

```js
onmessage = e => {
                if ("pow-challenge" !== e.data.type)
                    return;
                let {algorithm: t, challenge: r, salt: o, difficulty: s, signature: a, expireAt: u} = e.data.challenge;
                v.then( () => {
                    let e = ( (e, t, r, o, s) => {
                        if ("DeepSeekHashV1" !== e)
                            throw Error("Unsupported algorithm: " + e);
                        let a = "".concat(r, "_").concat(s, "_")
                          , u = function(e, t, r) {
                            try {
                                let a = n.__wbindgen_add_to_stack_pointer(-16)
                                  , u = h(e, n.__wbindgen_export_0, n.__wbindgen_export_1)
                                  , c = i
                                  , l = h(t, n.__wbindgen_export_0, n.__wbindgen_export_1)
                                  , p = i;
                                n.wasm_solve(a, u, c, l, p, r);
                                var o = f().getInt32(a + 0, !0)
                                  , s = f().getFloat64(a + 8, !0);
                                return 0 === o ? void 0 : s
                            } finally {
                                n.__wbindgen_add_to_stack_pointer(16)
                            }
                        }(t, a, o);
                        if ("number" != typeof u)
                            throw Error("No solution found: " + "algorithm: ".concat(e, ", ") + "challenge: ".concat(t, ", ") + "difficulty: ".concat(o, ", ") + "prefix: ".concat(a));
                        return u
                    }
                    )(t, r, o, s, u);
                    postMessage({
                        type: "pow-answer",
                        answer: {
                            algorithm: t,
                            challenge: r,
                            salt: o,
                            answer: e,
                            signature: a
                        }
                    })
                }
                ).catch(e => {
                    postMessage({
                        type: "pow-error",
                        error: e
                    })
                }
                )
            }
```

这边如果选择rpc的形式呢，只需要导出n函数就可以了，如果追求纯算那就要逆wasm了，本人wasm逆向经验为0，所以这个案例也属于学习，并且借助AI的能力两轮对话实现算法的还原。

#### 算法还原

首先我们将wasm文件下载到本地并进行反编译，使用工具[WEBT](https://github.com/WebAssembly/wabt/releases)

```bash
wasm-decompile sha3_wasm_bg.7b9ca65ddd.wasm -o ds.dcmp
```

然后打开这个文件搜索函数名wasm_solve，将上述JS代码和输入参数e.data.challenge的值以及这个函数完整代码复制发送给claude让他给我们分析还原算法缺失的内容

![image-20260515150923743](E:\学习笔记\LearningDoc\逆向\DeepeSeek\assets\image-20260515150923743.png)

根据Claude的回复，搜索f_e函数复制，并且给他一个输入和answer的值示例，再次进行分析

![image-20260515151054150](E:\学习笔记\LearningDoc\逆向\DeepeSeek\assets\image-20260515151054150.png)

于是，无敌的Claude就这样水灵灵的给我们还原出了算法，并且还用C实现提升了效率，我们来验证下结果的正确性,这边因为我的电脑没有C环境，所以他回退了使用python实现，速度大打折扣，25秒才计算出来，但是经过和页面计算的结果进行对比可以看到是完全一致的

![1b3ab96b6e9b7a91bbf009ab8b3db82d](E:\学习笔记\LearningDoc\逆向\DeepeSeek\assets\1b3ab96b6e9b7a91bbf009ab8b3db82d.png)

### 0x03 算法总结

> ​	以下内容出自Claude大帝,毕竟我基本啥都没干就弄出来了

#### 整体目标：工作量证明（Proof of Work）

这是一个"猜谜"机制，服务器出题，客户端必须暴力搜索答案，证明"我确实花了时间计算"，从而防止滥用 API（比如脚本刷请求）。

------

#### 三个角色

```
服务器                          客户端（浏览器 wasm）
  │                                    │
  │── 下发 challenge ──────────────────▶│
  │   salt, difficulty, expire_at       │
  │                                    │  暴力搜索 nonce
  │◀── 返回 answer (nonce) ────────────│
  │                                    │
  │  验证 hash(salt_expireAt_nonce)     │
  │       == challenge ✓               │
```

------

#### 哈希函数干了什么

可以把它想象成一台**搅拌机**，把任意长度的文字打碎重组成固定 32 字节的"指纹"：

```
"ba086ad9cd785ce30506_1778827137414_111232"
              ↓ 搅拌机（23轮搅拌）
  25993986747b46f944b3fc95315e841a0d976898...  （32字节）
```

核心是 **Keccak 海绵结构**，分两步：

**① 吸收（Absorb）**：把输入数据按 136 字节一块，一块块"揉进"一个 1600 位的内部状态里

**② 压缩（Permute）**：每吸收一块就搅拌一次——这就是 `f_e` 函数，5×5 共 25 个 64 位整数的状态，经历 23 轮的 θ/ρ/π/χ/ι 五步变换（纯位运算：XOR、循环移位、与非）

**③ 挤出（Squeeze）**：取状态前 32 字节作为输出

------

#### 和标准 SHA3-256 的唯一区别

```
标准 SHA3-256:  轮次 0, 1, 2, 3, ... 23   （共 24 轮）
V1: 轮次    1, 2, 3, ... 23   （共 23 轮，跳过第 0 轮）
```

就差这一轮，输出就完全不同，所以通用库算不出正确答案。这大概是故意为之——用最小的改动让现成工具全部失效，同时自己的 wasm 黑盒里藏着这个秘密。

------

#### 客户端为什么用 wasm

纯 JavaScript 实现的话代码一眼就能看懂，换成 wasm 二进制需要反编译才能分析——就是你贴出来的那堆代码。目的是**轻度混淆**，提高破解门槛，但并非真正的安全保障（如你所见，还是被逆出来了）（PS：杀人还诛心）。
