本文介绍vue3如何进行json数据pretty展示

### 1 vue3-json-viewer

#### 1.1 安装

```shell
 npm install vue3-json-viewer --save
```

#### 1.2 全局引入

在main.ts中引入，然后直接在组件中使用

```js
import { createApp } from 'vue'
import App from './App.vue'
import JsonViewer from "vue3-json-viewer"

const app=createApp(App)
app.use(JsonViewer)
app.mount('#app')
```

```vue
<json-viewer :value="jsonData" copyable boxed sort></json-viewer>
```

#### 1.3 局部引入

如果使用频率少，只在某个组件上使用，那么在单个组件上进行引入使用即可,选项式API使用如下方式。

```vue
<script>
import { JsonViewer } from "vue-json-viewer";
import "vue-json-viewer/style.css";
export default {
  components: {
    JsonViewer,
  },
}
</script>
```

组合式API语法糖形式直接导入即可使用

```vue
<script setup>
import { JsonViewer } from "vue3-json-viewer";
import "vue3-json-viewer/dist/index.css";
</script>
```

### 2 vue-json-pretty

> ​	项目地址: **[vue-json-pretty](https://github.com/leezng/vue-json-pretty)**

#### 2.1 安装

```shell
npm install vue-json-pretty --save
yarn add vue-json-pretty
```

#### 2.2引入使用

全局引入同上，仅演示局部引入方式.

```
<template>
  <div>
    <vue-json-pretty :data="{ key: 'value' }" />
  </div>
</template>

<script>
import VueJsonPretty from 'vue-json-pretty';
import 'vue-json-pretty/lib/styles.css';

export default {
  components: {
    VueJsonPretty,
  },
};
</script>
```

同样，组合式API语法糖形式直接引入即可使用

```vue
<script setup>
import VueJsonPretty from 'vue-json-pretty';
import 'vue-json-pretty/lib/styles.css';
</script>
```

#### 2.3 Props

​	vue-json-pretty 基本属性

| Property               | Description                        | Type                  | Default |
| ---------------------- | ---------------------------------- | --------------------- | ------- |
| data(v-model)          | JSON数据，支持v-model使用时可编辑  | JSON object           | -       |
| collapsedNodeLength    | 长度大于此阈值的对象或数组将被折叠 | number                | -       |
| deep                   | 大于此深度的路径将被折叠           | number                | -       |
| showLength             | 显示折叠时的长度                   | boolean               | false   |
| showLine               | 显示连接线                         | boolean               | true    |
| showLineNumber         | 显示行号                           | boolean               | false   |
| showIcon               | 显示图标                           | boolean               | false   |
| showDoubleQuotes       | 在键上显示双引号                   | boolean               | true    |
| virtual                | 使用虚拟滚动条                     | boolean               | false   |
| height                 | 使用virtual时列表的高度            | number                | 400     |
| itemHeight             | 使用virtual时节点的高度            | number                | 20      |
| selectedValue(v-model) | 选择的数据路径                     | string, array         | -       |
| rootPath               | 根节点路径                         | string                | `root`  |
| nodeSelectable         | 定义节点是否支持选择               | (node) => boolean     | -       |
| selectableType         | 支持路径选择，默认无               | `multiple` | `single` | -       |
| showSelectController   | 显示选择控制器                     | boolean               | false   |

我更喜欢使用vue-json-pretty，可定制性要好些。