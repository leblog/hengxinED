<template>
  <div class="time-color" :class="{'time-color-active': isColor}">
    <!-- 持票方 - 接单方   正计时和倒计时组件 -->
    <span class="el-icon-loading" v-if="!timeText"></span>
    <span v-else>{{timeText}}</span>
  </div>
</template>

<script>
export default {
  name: 'OrderTime',
  props: {
    time: {
      type: Number,
      default: 0
    }
  },
  data () {
    return {
      isColor: false,
      timeInterval: null,
      timeText: '',
      showTime: this.time
    }
  },
  methods: {
    // 正计时
    timing () {
      let hour = 0
      let minute = 0
      let second = 0
      let count = this.showTime / 1000
      this.isColor = true
      clearInterval(this.timeInterval)
      this.timeInterval = setInterval(() => {
        hour = parseInt(count / 3600)
        minute = parseInt(count / 60 % 60)
        second = parseInt(count % 60)
        this.timeText = this.toDouble(hour) + '时' + this.toDouble(minute) + '分' + this.toDouble(second) + '秒'
        count++
      }, 1000)
    },
    // 倒计时
    countDown () {
      let hour = 0
      let minute = 0
      let second = 0
      const num = Math.abs(this.showTime)
      let count = num / 1000
      clearInterval(this.timeInterval)
      this.timeInterval = setInterval(() => {
        hour = parseInt(count / 3600)
        minute = parseInt(count / 60 % 60)
        second = parseInt(count % 60)
        this.timeText = this.toDouble(hour) + '时' + this.toDouble(minute) + '分' + this.toDouble(second) + '秒'
        count--
        if (count < 0) {
          clearInterval(this.timeInterval)
          this.showTime = 0
          this.timing()
          this.$emit('getList')
        }
      }, 1000)
    },
    // 时间补0
    toDouble (n) {
      if (n < 10) {
        return '0' + n
      } else {
        return '' + n
      }
    }
  },
  beforeDestroy () {
    clearInterval(this.timeInterval)
  },
  mounted () {
    if (this.showTime >= 0) {
      this.timing()
    } else {
      this.countDown()
    }
  },
  created () {
  },
  watch: {}
}
</script>

<style lang="sass" scoped>
/*@import '~assets/styles/varibles.styl';
//.time-color
//  color $mainColor
//.time-color-active
//  color #F00415*/
</style>

