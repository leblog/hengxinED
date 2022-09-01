<template>
  <div id="app">
    <router-view />
  </div>
</template>

<script>
//import watermark from "watermark-dom";
export default  {
  name:  'App',
    metaInfo() {
        return {
            title: this.$store.state.settings.dynamicTitle && this.$store.state.settings.title,
            titleTemplate: title => {
                return title ? `${title} - ${process.env.VUE_APP_TITLE}` : process.env.VUE_APP_TITLE
            }
        }
    },
  mounted() {
    // 加载水印
    //const username = this.$store.state.user.name;
    //watermark.load({ watermark_txt: username + "水印" });
  },
}
</script>
