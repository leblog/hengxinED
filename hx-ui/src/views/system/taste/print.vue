<template>

  <div class="app-container">
    <el-button type="primary" icon="el-icon-print" size="mini" @click="printList()">打印</el-button>

    <div class="tableDiv" style="margin-top: 20px">
      <el-card>
      <el-form ref="form" :model="form" size="mini"><!--label-width="120px"-->

        <el-row :gutter="24">
          <el-col :xs="{span:24}" :sm="{span:16}" :md="{span:16}" :lg="{span:16}">
            <el-form-item label="编码：" style="color:#F8490B;">{{ form.tasteId }}————{{this.stateList(form.tasteId)}}</el-form-item>
          </el-col>
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}" >
            <el-form-item label="申请日期：">{{ form.createTime }}</el-form-item>
          </el-col>
        </el-row>
        <el-row :gutter="24">
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="业务姓名：">{{ form.businessName }}</el-form-item>
          </el-col>
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="业务部门：">{{ form.deptId }}</el-form-item>
          </el-col>
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="业务代码：">{{ form.businessCode }}</el-form-item>
          </el-col>
        </el-row>
        <el-row :gutter="24">
          <!--   -->
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="客户名称：">{{ form.customersName }}</el-form-item>
          </el-col>
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="客户代码：">{{ form.customersCode }}</el-form-item>
          </el-col>
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="口味数量：">{{ form.tasteNum }}</el-form-item>
          </el-col>
        </el-row>
        <el-row :gutter="24">
          <!--   -->
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="第几次送样：">{{ form.sendNum }}</el-form-item>
          </el-col>
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="来访日期：">{{ form.visitTime }}</el-form-item>
          </el-col>
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="发热丝种类：">{{ form.heatingWireType }}</el-form-item>
          </el-col>
        </el-row>
        <el-row :gutter="24">
          <!--   -->
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="口味专供：">{{ form.isSupply }}</el-form-item>
          </el-col>
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="现场试油：">{{ form.isTry }}</el-form-item>
          </el-col>
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="自带烟具：">{{ form.isSmoking }}</el-form-item>
          </el-col>
        </el-row>
        <el-row :gutter="24">
          <!--   -->
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="烟具类型：">{{ form.smokingType }}</el-form-item>
          </el-col>
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="是否回收烟具：">{{ form.isRecyclingSmoking }}</el-form-item>
          </el-col>
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="导油棉类型：">{{ form.oilGuideCottonType }}</el-form-item>
          </el-col>
        </el-row>
        <el-row :gutter="24">
          <!--   -->
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="发热丝阻值：">{{ form.heatingWireResistance }}Ω</el-form-item>
          </el-col>
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="烟油仓容量：">{{ form.capacity }}</el-form-item>
          </el-col>
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="油环材质类型：">{{ form.oilRingMaterial }}</el-form-item>
          </el-col>
        </el-row>
        <el-row :gutter="24">
          <!--   -->
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="甜度(1-10)：">{{ form.sweetness }}</el-form-item>
          </el-col>
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="凉度(1-10)：">{{ form.coolness }}</el-form-item>
          </el-col>
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="粘稠度(1-10)：">{{ form.viscosity }}</el-form-item>
          </el-col>
        </el-row>
        <el-row :gutter="24">
          <!--   -->
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="期望完成时间：">{{ form.expectedCompletionTime }}</el-form-item>
          </el-col>
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="样品数量：">{{ form.samplesNum }}</el-form-item>
          </el-col>
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="样品需求日期：">{{ form.sampleRequestTime }}</el-form-item>
          </el-col>
        </el-row>
        <el-row :gutter="24">
          <!--   -->
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="预计完成时间：">{{ form.estimatedFinishTime }}</el-form-item>
          </el-col>
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="匹配市场：">{{ form.matchMarket}}</el-form-item>
          </el-col>
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="邮寄信息：" >{{ form.mailingInformation }}</el-form-item>
          </el-col>
        </el-row>
        <el-row :gutter="24">
          <!--   -->
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="备注：">{{ form.remark }}</el-form-item>
          </el-col>

        </el-row>
      </el-form>

      </el-card>
      <el-divider content-position="center">口味申请单明细信息</el-divider>
      <vxe-table
        border
        ref="xTable"
        :height="auto"
        :print-config="{}"
        :data="form.hxTasteDetailList">
        <vxe-column type="seq" width="50"/>
        <vxe-column field="tasteName" width="120" title="口味名称"/>
        <vxe-column field="tasteDetail" title="口味描述"/>
        <vxe-column field="isBasicTaste" title="有基础口味"/>
        <vxe-column field="basicTasteImprovementIdeas" title="基础口味改善建议"/>
        <vxe-column field="capacity" title="容量"/>
        <vxe-column field="vg" title="VG"/>
        <vxe-column field="nicType" title="NIC类别"/>
        <vxe-column field="nicConcentration" title="NIC浓度"/>
        <vxe-column field="nicUnit" title="NIC单位"/>
        <!--        <vxe-column field="perfumer" title="指定调香师"></vxe-column>-->
        <vxe-column field="perfumer" title="分配调香师"/>
      </vxe-table>
    </div>

    <!--  返回顶部  -->
    <el-backtop/>
  </div>

</template>

<script>
import {getTaste} from "@/api/system/taste";
import stateList from '@/utils/stateList'
import spStatus from '@/utils/wx/sp_status'
import spStatusChild from '@/utils/wx/sp_status_child'

export default {
  name: "print",
  data() {
    return {
      form:{},
      stateList
    }
  },
  created() {
    // 打印需要的数据处理
    // 获取分组好的数据
    console.log("当前路由1:{}",this.$route.query.detail)
    console.log("当前路由2:{}",this.$route.query.print)
    if(this.$route.query.detail == null){
      this.$router.push("/404");
    }else{
      //校验长度
      if(this.$route.query.detail.length>=19){
        getTaste(this.$route.query.detail).then(res => {
          this.form = res.data
          //console.log("数据来了:{}" + JSON.stringify(this.form))
        });
        if(this.$route.query.print === "true"){
          setTimeout(() => {
            this.printList()
          }, 800)
        }
      }
    }
  },
  methods: {
    /*打印*/
    /*打印该申请单*/
    printList() {
      // 打印样式
      const printStyle = `
        .title {
          text-align: center;
        }
        .my-list-row {
          display: inline-block;
          width: 100%;
        }
        .my-list-col {
          float: left;
          width: 33.3%;
          height: 28px;
          line-height: 28px;
        }
        .my-list-col-min {
          width: 25%;
          float: left;
          margin-left: 0;
          pandding-left: 0;
          height: 12px;
          line-height: 12px;
        }
        .my-list-col-max-l {
          float: left;
          width: 50%;
          height: 28px;
          line-height: 28px;
          color: #F8490B;
        }
        .my-list-col-max-r {
          float: right;
          width: 50%;
          height: 28px;
          line-height: 28px;
          text-align: right;
        }
        .my-list-col-boder {
          float: left;
          width: 100%;
          height: 28px;
          line-height: 28px;
          border: solid 0.2px #AAA;
        }
        .my-top,
        .my-bottom {
          font-size: 12px;
        }
        .my-top {
          margin-bottom: 5px;
        }
        .my-bottom {
          margin-top: 30px;
          text-align: left;
        }
        `

      const topHtml = `
        <h1 class="title">烟油口味申请表</h1>
        <div class="my-top">
            <div class="my-list-row">
              <div class="my-list-col-max-l">编码: ${this.form.tasteId} ———— ${this.stateList(this.form.state)}</div>
              <div class="my-list-col-max-r">申请日期: ${this.form.createTime}</div>
              <br/>
              <div class="my-list-col">业务姓名:&nbsp&nbsp&nbsp ${this.form.businessName}</div>
              <div class="my-list-col">业务部门:&nbsp&nbsp&nbsp ${this.form.deptId}</div>
              <div class="my-list-col">业务代码:&nbsp&nbsp&nbsp${this.form.businessCode}</div>
              <div class="my-list-col">客户名称:&nbsp&nbsp&nbsp${this.form.customersName} </div>
              <div class="my-list-col">客户代码:&nbsp&nbsp&nbsp${this.form.customersCode}</div>
              <div class="my-list-col">口味数量:&nbsp&nbsp&nbsp${this.form.tasteNum}</div>
              <div class="my-list-col">第几次送样:&nbsp&nbsp&nbsp${this.form.sendNum}</div>
              <div class="my-list-col">来访日期:&nbsp&nbsp&nbsp${this.form.visitTime}</div>
              <div class="my-list-col">发热丝种类:&nbsp&nbsp&nbsp${this.form.heatingWireType}</div>
              <div class="my-list-col">口味专供:&nbsp&nbsp&nbsp${this.form.isSupply}</div>
              <div class="my-list-col">现场试油:&nbsp&nbsp&nbsp${this.form.isTry}</div>
              <div class="my-list-col">自带烟具:&nbsp&nbsp&nbsp${this.form.isSmoking}</div>
              <div class="my-list-col">烟具类型:&nbsp&nbsp&nbsp${this.form.smokingType}</div>
              <div class="my-list-col">是否回收烟具:&nbsp&nbsp&nbsp${this.form.isRecyclingSmoking}</div>
              <div class="my-list-col">导油棉类型:&nbsp&nbsp&nbsp${this.form.oilGuideCottonType}</div>
              <div class="my-list-col">发热丝阻值:&nbsp&nbsp&nbsp${this.form.heatingWireResistance}</div>
              <div class="my-list-col">烟油仓容量:&nbsp&nbsp&nbsp${this.form.capacity}</div>
              <div class="my-list-col">油环材质类型:&nbsp&nbsp&nbsp${this.form.oilRingMaterial}</div>
              <div class="my-list-col">甜度(1-10):&nbsp&nbsp&nbsp${this.form.sweetness}</div>
              <div class="my-list-col">凉度(1-10):&nbsp&nbsp&nbsp${this.form.coolness}</div>
              <div class="my-list-col">粘稠度(1-10):&nbsp&nbsp&nbsp${this.form.viscosity}</div>
              <div class="my-list-col">期望完成时间:&nbsp&nbsp&nbsp${this.form.expectedCompletionTime}</div>
              <div class="my-list-col">样品数量:&nbsp&nbsp&nbsp${this.form.samplesNum}</div>
              <div class="my-list-col">样品需求日期:&nbsp&nbsp&nbsp${this.form.sampleRequestTime}</div>
              <div class="my-list-col">预计完成时间:&nbsp&nbsp&nbsp${this.form.estimatedFinishTime}</div>
              <div class="my-list-col">匹配市场:&nbsp&nbsp&nbsp${JSON.parse(this.form.matchMarket)}</div>
              <div class="my-list-col">邮寄信息:&nbsp&nbsp&nbsp${this.form.mailingInformation}</div>
              <div class="my-list-col">备注:&nbsp&nbsp&nbsp${this.form.remark}</div>
            </div>
            <hr/>
            <b>口味明细</b>
        </div>`
      // 打印底部内容模板
      const bottomHtml = `
        <div class="my-bottom">
          <div class="my-list-row">
              <div class="my-list-col-min">研发部(签字): </div>
              <div class="my-list-col-min">项目组长(签字): </div>
              <div class="my-list-col-min">业务员(签字): </div>
              <div class="my-list-col-min">项目负责人(签字): </div>
          </div>

        </div>
        <div class="my-bottom">
            <div class="my-list-row">
              <div class="my-list-col-min">日期: </div>
              <div class="my-list-col-min">日期: </div>
              <div class="my-list-col-min">日期: </div>
              <div class="my-list-col-min">日期: </div>
            </div>
        </div>
        `

      this.$refs.xTable.print({
        sheetName: '恒信科技',
        style: printStyle,
        columns: [
          {type: 'seq'},
          {field: 'tasteName'},
          {field: 'tasteDetail'},
          {field: 'isBasicTaste'},
          {field: 'basicTasteName'},
          {field: 'basicTasteImprovementIdeas'},
          {field: 'capacity'},
          {field: 'vg'},
          {field: 'nicType'},
          {field: 'nicConcentration'},
          {field: 'nicUnit'},
          {field: 'perfumer'}
          /*{field: 'perfumer'},*/
        ],
        beforePrintMethod: ({content}) => {
          // 拦截打印之前，返回自定义的 html 内容
          return topHtml + content + bottomHtml
        }
      })
    },
  }
}
</script>

<style scoped>

</style>
