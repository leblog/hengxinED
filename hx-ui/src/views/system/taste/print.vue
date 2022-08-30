<template>
  <div>
    <h1>打印</h1>
    <div class="tableDiv" v-show="false">
      <dialog fullscreen="true">
        <vxe-table
          border
          ref="xTable"
          height="300"
          :print-config="{}"
          :data="printListDetail">
          <vxe-column type="seq" width="10"></vxe-column>
          <vxe-column field="tasteName" width="100" title="口味名称"></vxe-column>
          <vxe-column field="tasteDetail" title="口味描述"></vxe-column>
          <vxe-column field="isBasicTaste" title="有基础口味"></vxe-column>
          <vxe-column field="basicTasteImprovementIdeas" title="基础口味改善建议"></vxe-column>
          <vxe-column field="capacity" title="容量"></vxe-column>
          <vxe-column field="vg" title="VG"></vxe-column>
          <vxe-column field="nicType" title="NIC类别"></vxe-column>
          <vxe-column field="nicConcentration" title="NIC浓度"></vxe-column>
          <vxe-column field="nicUnit" title="NIC单位"></vxe-column>
          <!--        <vxe-column field="perfumer" title="指定调香师"></vxe-column>-->
          <vxe-column field="perfumer" title="分配调香师"></vxe-column>
        </vxe-table>
      </dialog>

    </div>
  </div>
</template>

<script>
import {getTaste} from "@/api/system/taste";

export default {
  name: "print",
  data() {
    return {
      //打印列表
      printList: [],
      //打印列表明细
      printListDetail: [],
    }
  },
  created() {
    // 打印需要的数据处理
    // 获取分组好的数据
    getTaste(this.$router.params.tasteId).then(res => {
      this.printList = res.data
      this.printListDetail = res.data.hxTasteDetailList
      console.log("数据来了:{}" + JSON.stringify(this.printListDetail))
    });
    setTimeout(() => {
      this.printEvent()
    }, 800)
  },
  methods: {
    /*打印*/
    printEvent() {
      console.log("我是打印明细", JSON.stringify(this.printList))
      const username = this.$store.state.user.name;

    }
  }
}
</script>

<style scoped>

</style>
