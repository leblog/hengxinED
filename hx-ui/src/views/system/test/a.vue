<template>
  <div>
    这是a组件 name:{{ name }}
    <button @click="click">发送</button>
  </div>
</template>

<script>
export default {
  name: "a",
  props: {
    name: {
      type: String,
      default: ""
    },
  },
  data() {
    return {
      message: "我是来自子组件的消息"
    };
  },
  methods: {
    click() {
      this.$emit("ok", this.message);
    },
  },
};
</script>

<style scoped>

</style>
