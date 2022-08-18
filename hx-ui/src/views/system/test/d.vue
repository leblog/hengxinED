<!-- 子组件 -->
<template>
  <div>
    <b>我是d 子组件 </b>
    这是a组件 name:{{ name }}
  </div>
</template>

<script>
export default {
  props: {
    name: {
      type: String,
      default: ""
    },
  }
};
</script>
