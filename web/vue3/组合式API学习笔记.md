# 深入浅出组合式API的使用

### 一、组合式API入口 setup

​	setup是vue3的新产物，是组合式PAI的入口函数，写法如下,组件被加载时就会进入这个函数，在beforeCreate生命周期钩子函数之前加载。

```vue
<script>
export default {
  setup(){
    console.log("setup")
  }
}
</script>
```

​	所有在setup中定义的变量和函数必须用对象的形式return出去才能被外部引用，setup中的this对象并非组件实例，而是undefined。

```vue
setup(){
    const message = 'test'
    const logMessage = ()=> {
    	console.log('log message')
    }
    return {
    	message,
    	logMessage
    }
}
```

​	这样我们每次写变量时都需要return比较麻烦，vue同时还提供了一个语法糖，上述代码只需按照如下形式编写即可

```vue
<script setup>
const message = 'test'
const logMessage = ()=> {
    console.log('log message')
}
</script>
```