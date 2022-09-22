<template>

  <div class="app-container">
    <el-button type="primary" icon="el-icon-print" size="mini" @click="printList()">打印</el-button>

    <div class="tableDiv" style="margin-top: 20px">
      <el-card>
      <el-form ref="form" :model="form" size="mini"><!--label-width="120px"-->

        <el-row :gutter="24">
          <el-col :xs="{span:24}" :sm="{span:16}" :md="{span:16}" :lg="{span:16}">
            <el-form-item label="编码：" style="color:#F8490B;">{{ form.fid }}————{{this.stateList(form.fstatus)}}</el-form-item>
          </el-col>
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}" >
            <el-form-item label="申请日期：">{{ parseTime(form.fsqriqi, '{y}-{m}-{d} {h}:{i}') }}</el-form-item>
          </el-col>
        </el-row>
        <el-row :gutter="24">
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="业务姓名：">{{ form.fyewuxingming }}</el-form-item>
          </el-col>
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="业务部门：">{{ form.fyewubumen }}</el-form-item>
          </el-col>
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="业务代码：">{{ form.fyewudaima }}</el-form-item>
          </el-col>
        </el-row>
        <el-row :gutter="24">
          <!--   -->
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="客户名称：">{{ form.fkehumingcheng }}</el-form-item>
          </el-col>
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="客户代码：">{{ form.fkehudaima }}</el-form-item>
          </el-col>
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="口味数量：">{{ form.fkouweishuliang }}</el-form-item>
          </el-col>
        </el-row>
        <el-row :gutter="24">
          <!--   -->
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="第几次送样：">{{ form.fdijicisongyang }}</el-form-item>
          </el-col>
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="来访日期：">{{ parseTime(form.flaifangriqi, '{y}-{m}-{d} {h}:{i}') }}</el-form-item>
          </el-col>
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="发热丝种类：">{{ form.ffaresizhonglei }}</el-form-item>
          </el-col>
        </el-row>
        <el-row :gutter="24">
          <!--   -->
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="口味专供：">{{ form.fkouweizhuangong }}</el-form-item>
          </el-col>
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="现场试油：">{{ form.fxianchangshiyou }}</el-form-item>
          </el-col>
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="自带烟具：">{{ form.fzidaiyanju }}</el-form-item>
          </el-col>
        </el-row>
        <el-row :gutter="24">
          <!--   -->
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="烟具类型：">{{ form.fyanjuleixing }}</el-form-item>
          </el-col>
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="是否回收烟具：">{{ form.fhuishouyanju }}</el-form-item>
          </el-col>
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="导油棉类型：">{{ form.fdaoyoumianzhonglei }}</el-form-item>
          </el-col>
        </el-row>
        <el-row :gutter="24">
          <!--   -->
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="发热丝阻值：">{{ form.ffaresizuzhi }}Ω</el-form-item>
          </el-col>
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="烟油仓容量：">{{ form.fyanyoucangrongliang }}</el-form-item>
          </el-col>
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="油环材质类型：">{{ form.fyoubeicaizhi }}</el-form-item>
          </el-col>
        </el-row>
        <el-row :gutter="24">
          <!--   -->
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="甜度(1-10)：">{{ form.ftiandu }}</el-form-item>
          </el-col>
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="凉度(1-10)：">{{ form.fliangdu }}</el-form-item>
          </el-col>
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="粘稠度(1-10)：">{{ form.fnianchoudu }}</el-form-item>
          </el-col>
        </el-row>
        <el-row :gutter="24">
          <!--   -->
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="期望完成时间：">{{ parseTime(form.fqiwangwanchengshijian, '{y}-{m}-{d} {h}:{i}') }}</el-form-item>
          </el-col>
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="样品数量：">{{ form.fyangpinxuqiushuliang }}</el-form-item>
          </el-col>
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="样品需求日期：">{{ parseTime(form.fyangpinxuqiuriqi, '{y}-{m}-{d} {h}:{i}') }}</el-form-item>
          </el-col>
        </el-row>
        <el-row :gutter="24">
          <!--   -->
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="预计完成时间：">{{ parseTime(form.fyujiwanchengshijian, '{y}-{m}-{d} {h}:{i}') }}</el-form-item>
          </el-col>
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="匹配市场：">{{ form.fpipeishichang}}</el-form-item>
          </el-col>
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="邮寄信息：" >{{ form.fyoujixinxi }}</el-form-item>
          </el-col>
        </el-row>
        <el-row :gutter="24">
          <!--   -->
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="备注：">{{ form.fbeizhu }}</el-form-item>
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
        <vxe-column field="fkouweimingcheng" width="120" title="口味名称"/>
        <vxe-column field="fkouweimiaoshu" title="口味描述"/>
        <vxe-column field="fjichukouwei" title="有基础口味"/>
        <vxe-column field="fjichukouweigaishanyijian" title="基础口味改善建议"/>
        <vxe-column field="frongliang" title="容量"/>
        <vxe-column field="fvg" title="VG"/>
        <vxe-column field="fniclb" title="NIC类别"/>
        <vxe-column field="fnicnd" title="NIC浓度"/>
        <vxe-column field="fnicdw" title="NIC单位"/>
        <!--        <vxe-column field="ffentiaoxiangshi" title="指定调香师"></vxe-column>-->
        <vxe-column field="ffentiaoxiangshi" title="分配调香师"/>
      </vxe-table>
    </div>

    <!--  返回顶部  -->
    <el-backtop/>
  </div>

</template>

<script>
import {getTaste} from "@/api/system/tasteSQLServer";
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
        console.log("数据来了:{}" + JSON.stringify(this.$route.query.detail))
        getTaste(this.$route.query.detail).then(res => {
          this.form = res.data

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
    // 日期格式化
    parseTime(time, pattern) {
      if (arguments.length === 0 || !time) {
        return null
      }
      const format = pattern || '{y}-{m}-{d} {h}:{i}:{s}'
      let date
      if (typeof time === 'object') {
        date = time
      } else {
        if ((typeof time === 'string') && (/^[0-9]+$/.test(time))) {
          time = parseInt(time)
        } else if (typeof time === 'string') {
          time = time.replace(new RegExp(/-/gm), '/').replace('T', ' ').replace(new RegExp(/\.[\d]{3}/gm), '');
        }
        if ((typeof time === 'number') && (time.toString().length === 10)) {
          time = time * 1000
        }
        date = new Date(time)
      }
      const formatObj = {
        y: date.getFullYear(),
        m: date.getMonth() + 1,
        d: date.getDate(),
        h: date.getHours(),
        i: date.getMinutes(),
        s: date.getSeconds(),
        a: date.getDay()
      }
      const time_str = format.replace(/{(y|m|d|h|i|s|a)+}/g, (result, key) => {
        let value = formatObj[key]
        // Note: getDay() returns 0 on Sunday
        if (key === 'a') { return ['日', '一', '二', '三', '四', '五', '六'][value] }
        if (result.length > 0 && value < 10) {
          value = '0' + value
        }
        return value || 0
      })
      return time_str
    },
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
          width: 66%;
          height: 28px;
          line-height: 28px;
          color: #F8490B;
        }
        .my-list-col-max-r {
          float: right;
          width: 34%;
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
              <div class="my-list-col-max-l">编码: ${this.form.fid} — ${this.stateList(this.form.fstatus)}</div>
              <div class="my-list-col-max-r">申请日期: ${this.parseTime(this.form.fsqriqi, '{y}-{m}-{d} {h}:{i}')}</div>
              <br/>
              <div class="my-list-col">业务姓名:&nbsp&nbsp&nbsp ${this.form.fyewuxingming}</div>
              <div class="my-list-col">业务部门:&nbsp&nbsp&nbsp ${this.form.fyewubumen}</div>
              <div class="my-list-col">业务代码:&nbsp&nbsp&nbsp${this.form.fyewudaima}</div>
              <div class="my-list-col">客户名称:&nbsp&nbsp&nbsp${this.form.fkehumingcheng} </div>
              <div class="my-list-col">客户代码:&nbsp&nbsp&nbsp${this.form.fkehudaima}</div>
              <div class="my-list-col">口味数量:&nbsp&nbsp&nbsp${this.form.fkouweishuliang}</div>
              <div class="my-list-col">第几次送样:&nbsp&nbsp&nbsp${this.form.fdijicisongyang}</div>
              <div class="my-list-col">来访日期:&nbsp&nbsp&nbsp${this.parseTime(this.form.flaifangriqi, '{y}-{m}-{d} {h}:{i}')}</div>
              <div class="my-list-col">发热丝种类:&nbsp&nbsp&nbsp${this.form.ffaresizhonglei}</div>
              <div class="my-list-col">口味专供:&nbsp&nbsp&nbsp${this.form.fkouweizhuangong}</div>
              <div class="my-list-col">现场试油:&nbsp&nbsp&nbsp${this.form.fxianchangshiyou}</div>
              <div class="my-list-col">自带烟具:&nbsp&nbsp&nbsp${this.form.fzidaiyanju}</div>
              <div class="my-list-col">烟具类型:&nbsp&nbsp&nbsp${this.form.fyanjuleixing}</div>
              <div class="my-list-col">是否回收烟具:&nbsp&nbsp&nbsp${this.form.fhuishouyanju}</div>
              <div class="my-list-col">导油棉类型:&nbsp&nbsp&nbsp${this.form.fdaoyoumianzhonglei}</div>
              <div class="my-list-col">发热丝阻值:&nbsp&nbsp&nbsp${this.form.ffaresizuzhi}</div>
              <div class="my-list-col">烟油仓容量:&nbsp&nbsp&nbsp${this.form.fyanyoucangrongliang}</div>
              <div class="my-list-col">油环材质类型:&nbsp&nbsp&nbsp${this.form.fyoubeicaizhi}</div>
              <div class="my-list-col">甜度(1-10):&nbsp&nbsp&nbsp${this.form.ftiandu}</div>
              <div class="my-list-col">凉度(1-10):&nbsp&nbsp&nbsp${this.form.fliangdu}</div>
              <div class="my-list-col">粘稠度(1-10):&nbsp&nbsp&nbsp${this.form.fnianchoudu}</div>
              <div class="my-list-col">期望完成时间:&nbsp&nbsp&nbsp${this.parseTime(this.form.fqiwangwanchengshijian, '{y}-{m}-{d} {h}:{i}')}</div>
              <div class="my-list-col">样品数量:&nbsp&nbsp&nbsp${this.form.fyangpinxuqiushuliang}</div>
              <div class="my-list-col">样品需求日期:&nbsp&nbsp&nbsp${this.parseTime(this.form.fyangpinxuqiuriqi, '{y}-{m}-{d} {h}:{i}')}</div>
              <div class="my-list-col">预计完成时间:&nbsp&nbsp&nbsp${this.parseTime(this.form.fyujiwanchengshijian, '{y}-{m}-{d} {h}:{i}')}</div>
              <div class="my-list-col">匹配市场:&nbsp&nbsp&nbsp${JSON.parse(this.form.fpipeishichang)}</div>
              <div class="my-list-col">邮寄信息:&nbsp&nbsp&nbsp${this.form.fyoujixinxi}</div>
              <div class="my-list-col">备注:&nbsp&nbsp&nbsp${this.form.fbeizhu}</div>
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
          {field: 'fkouweimingcheng'},
          {field: 'fkouweimiaoshu'},
          {field: 'fjichukouwei'},
          {field: 'basicfkouweimingcheng'},
          {field: 'fjichukouweigaishanyijian'},
          {field: 'frongliang'},
          {field: 'fvg'},
          {field: 'fniclb'},
          {field: 'fnicnd'},
          {field: 'fnicdw'},
          {field: 'ffentiaoxiangshi'}
          /*{field: 'ffentiaoxiangshi'},*/
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
