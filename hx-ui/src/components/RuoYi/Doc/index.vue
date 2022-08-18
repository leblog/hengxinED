<template>
  <div>
    <svg-icon icon-class="question" @click="goto" />
  </div>
</template>

<script>
export default {
  name: 'RuoYiDoc',
  data() {
    return {
      url: 'http://baidu.com'
    }
  },
  methods: {
    goto() {
      window.open(this.url)
    }
  }
}
</script>
