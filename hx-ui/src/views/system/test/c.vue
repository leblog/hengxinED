<!-- 父组件 -->
<template>
  <div style="text-align: center; font-size: 20px">
    <b>我是c 父组件 </b>
    测试页面
    <testa :name="name"></testa>
  </div>
</template>

<script>
import d from "./d";
export default {
  components: { testa: d },
  data() {
    return {
      name: "你哈偶啊"
    };
  },
};
</script>
