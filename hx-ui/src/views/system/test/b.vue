<!-- 父组件 -->
<template>
  <div style="text-align: center; font-size: 20px">
    测试页面
    <testa :name="name" @ok="ok"></testa>
    子组件传来的值 : {{ message }}
  </div>
</template>

<script>
import a from "./a";
export default {
  name: "b",
  components: { testa: a },
  data() {
    return {
      name: "你好呀",
      message: ""
    };
  },
  methods: {
    ok(message) {
      this.message = message;
    },
  },
};
</script>

<style scoped>

</style>
