<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch"  label-width="68px">
<!--      <el-form-item label="部门Id" prop="deptId">
        <el-input
          v-model="queryParams.deptId"
          placeholder="请输入部门Id"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>-->
      <el-form-item label="业务姓名" prop="businessName">
        <el-input
          v-model="queryParams.businessName"
          placeholder="请输入业务姓名"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
<!--      <el-form-item label="业务代码" prop="businessCode">
        <el-input
          v-model="queryParams.businessCode"
          placeholder="请输入业务代码"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>-->
      <el-form-item label="客户名称" prop="customersName">
        <el-input
          v-model="queryParams.customersName"
          placeholder="请输入客户名称"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item>
        <el-button type="primary" icon="el-icon-search" size="mini" @click="handleQuery">搜索</el-button>
        <el-button icon="el-icon-refresh" size="mini" @click="resetQuery">重置</el-button>
      </el-form-item>
    </el-form>
    <el-row :gutter="10" class="mb8">
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>
    <div>
      <el-table v-loading="loading" :data="tasteList" @selection-change="handleSelectionChange">
        <el-table-column type="selection" width="30" align="center"/>
        <el-table-column  label="序号" type="index" align="center"/>
        <el-table-column label="单据编码" width="100" align="center" prop="tasteId"/>
        <el-table-column label="状态" width="130" align="center" prop="state">
          <template slot-scope="scope">
            <el-tag :type="stateListType">{{stateList(scope.row.state)}}</el-tag>
          </template>
        </el-table-column>
        <el-table-column label="录入人" align="center" prop="createBy"/>
<!--        <el-table-column label="业务姓名" align="center" prop="businessName"/>-->
        <el-table-column label="业务部门" align="center" prop="deptId"/>
        <el-table-column label="日期" align="center" prop="createTime"/>
        <el-table-column label="客户名称" align="center" prop="customersName"/>
        <el-table-column label="客户代码" align="center" prop="customersCode"/>
        <el-table-column label="客户跟进人" align="center" prop="follower"/>
        <el-table-column label="操作" align="center" width="150" class-name="small-padding fixed-width" fixed="right">
          <template slot-scope="scope">
            <el-button
              size="mini"
              type="text"
              icon="el-icon-edit"
              @click="handleDetail(scope.row)"
              v-hasPermi="['taste:query']"
            >详情
            </el-button>
            <el-dropdown size="mini" @command="(command) => handleCommand(command, scope.row)" ><!--v-hasPermi="['taste:changestate', 'taste:query']"-->
            <span class="el-dropdown-link">
              <i class="el-icon-d-arrow-right el-icon--right"></i>更多
            </span>
              <el-dropdown-menu slot="dropdown">
                <el-dropdown-item command="handle1" icon="el-icon-coordinate" v-hasPermi="['taste:handle1']">退回分配</el-dropdown-item>
                <el-dropdown-item command="handle2" icon="el-icon-delete" v-hasPermi="['taste:handle2']">退回业务</el-dropdown-item>
                <el-dropdown-item command="handle3" icon="el-icon-folder-delete" v-hasPermi="['taste:handle3']">调整</el-dropdown-item>
                <el-dropdown-item command="handlePrint" icon="el-icon-printer" v-hasPermi="['taste:query']">打印</el-dropdown-item>
                <el-dropdown-item command="handle4" icon="el-icon-video-play" v-hasPermi="['taste:handle4']">开始</el-dropdown-item>
                <el-dropdown-item command="handle5" icon="el-icon-s-promotion" v-hasPermi="['taste:handle5']">提交研发</el-dropdown-item>
                <el-dropdown-item command="handle6" icon="el-icon-d-arrow-left" v-hasPermi="['taste:handle6']">确认配方</el-dropdown-item>
                <el-dropdown-item command="handle7" icon="el-icon-d-arrow-right" v-hasPermi="['taste:handle7']">反确认配方</el-dropdown-item>
                <el-dropdown-item command="handle8" icon="el-icon-finished" v-hasPermi="['taste:handle8']">打印配方确认单</el-dropdown-item>
                <el-dropdown-item command="handle9" icon="el-icon-check" v-hasPermi="['taste:handle9']">完成跟进</el-dropdown-item>
                <el-dropdown-item command="handle10" icon="el-icon-view" v-hasPermi="['taste:handle10']">详细日志</el-dropdown-item>
              </el-dropdown-menu>
            </el-dropdown>
          </template>
        </el-table-column>
      </el-table>
      <pagination
        v-show="total>0"
        :total="total"
        :page.sync="queryParams.pageNum"
        :limit.sync="queryParams.pageSize"
        @pagination="getList"
        style="margin-bottom: 30px"
      />
    </div>

    <!--打印-->
    <div class="tableDiv"  v-show="false">
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
        <vxe-column field="perfumer" title="分配调香师"></vxe-column>
      </vxe-table>
    </div>


    <!-- 详细日志 -->
    <el-dialog title="详细操作日志" :visible.sync="open" width="700px" append-to-body>
      <div class="block">
        <div class="radio" style="margin-bottom: 20px">
          排序：
          <el-radio-group v-model="reverse">
            <el-radio :label="false">倒序</el-radio>
            <el-radio :label="true">正序</el-radio>
          </el-radio-group>
        </div>
        <el-timeline :reverse="reverse" >
          <el-timeline-item
            v-for="(item,index) in logList"
            :key="index"
            :timestamp="parseTime(item.operTime, '{y}-{m}-{d} {h}:{i}:{s}')"
            placement="top">
<!--            <el-card></el-card>-->
              <el-tabs type="border-card">
                <el-tab-pane label="操作日志">
                  <b>{{item.title}}</b>
                  <p>操作人:{{item.operName}}</p>
                  <p>操作人部门:{{item.deptName}}</p>
                  <p>IP: {{item.operIp}}</p>
                </el-tab-pane>
                <el-tab-pane label="参数日志">
                  <p>请求方式:
                    <el-tag v-if="item.requestMethod = 'GET'" type="success">{{item.requestMethod}}</el-tag>
                    <el-tag v-else-if="item.requestMethod  = 'DELETE'" type="danger">{{item.requestMethod}}</el-tag>
                  </p>
                  <p>请求参数: {{item.operParam}}</p>
                  <p>api: {{item.operUrl}}</p>
                  <p>响应结果: {{item.jsonResult}}</p>
                </el-tab-pane>
              </el-tabs>

          </el-timeline-item>
        </el-timeline>

      </div>
      <div slot="footer" class="dialog-footer">
        <el-button @click="open = false">关 闭</el-button>
      </div>
    </el-dialog>


  </div>
</template>
<script>
import {listTaste, getTaste, delTaste, addTaste, updateTaste, getWasteTaste, getDistribution, getLog} from "@/api/system/taste";
import cache from '@/plugins/cache'
import stateList from '@/utils/stateList'
import {parseTime} from "@/utils/ruoyi";
export default {
  name: "TasteList",
  data() {
    return {
      /*日志倒序*/
      reverse: true,
      /*日志内容*/
      logList:[],
      /*状态字典*/
      stateList,
      /*分配跟进人集合*/
      distributionList:[],
      /*状态样式  (没有使用 )*/
      stateListType:'',
      //打印列表
      printList:[],
      //打印列表明细
      printListDetail:[],
      // 遮罩层
      loading: true,
      // 选中数组
      ids: [],
      // 子表选中数据
      checkedHxTasteDetail: [],
      // 非单个禁用
      single: true,
      // 非多个禁用
      multiple: true,
      // 显示搜索条件
      showSearch: true,
      // 总条数
      total: 0,
      // 口味申请单表格数据
      tasteList: [],
      // 口味申请单明细表格数据
      hxTasteDetailList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        deptId: null,
        businessName: null,
        businessCode: null,
        customersName: null,
        customersCode: null,
        tasteNum: null,
        refereeNum: null,
        sendNum: null,
        isSupply: null,
        isTry: null,
        visitTime: null,
        isSmoking: null,
        smokingType: null,
        heatingWireType: null,
        heatingWireResistance: null,
        capacity: null,
        oilGuideCottonType: null,
        isRecyclingSmoking: null,
        oilRingMaterial: null,
        vg: null,
        viscosity: null,
        expectedCompletionTime: null,
        sampleRequestTime: null,
        estimatedFinishTime: null,
        matchMarket: null,
        samplesNum: null,
        mailingInformation: null,
        state: '7',
        deleted: '0'
      },
      // 表单参数
      form: {},
    };
  },
  created() {
    this.getList();
    this.reset();
  },
  mounted() {
    if (this.form.remark == null) {
      cache.session.remove("tasteList")
    }
  },
  watch:{

  },
  methods: {
    /*详情*/
    handleDetail(row){
      this.$router.push({ path: '/system/taste-data/index/'+row.tasteId });
    },
    // 更多操作触发
    handleCommand(command, row) {
      switch (command) {
        case "handleWaste":
          this.handleWaste(row);
          break;
        case "handleAudit":
          this.handleAudit(row);
          break;
        case "handlePrint":
          this.handlePrint(row);
          break;
        case "handleDistribution":
          this.handleDistribution(row);
          break;
        case "handle1":
          this.handle1(row);
          break;
        case "handle2":
          this.handle2(row);
          break;
        case "handle3":
          this.handle3(row);
          break;
        case "handle4":
          this.handle4(row);
          break;
        case "handle5":
          this.handle5(row);
          break;
        case "handle6":
          this.handle6(row);
          break;
        case "handle7":
          this.handle7(row);
          break;
        case "handle8":
          this.handle8(row);
          break;
        case "handle9":
          this.handle9(row);
          break;
        case "handle10":
          this.handle10(row);
          break;
        default:
          break;
      }
    },
    /*退回分配*/
    handle1(row){
      this.$message.info("退回分配TODO");
    },
    /*退回业务*/
    handle2(row){
      this.$message.info("退回业务TODO");
    },
    /*调整*/
    handle3(row){
      this.$message.info("调整TODO");
    },
    /*开始  关联研发表*/
    handle4(row){
      this.$message.info("开始TODO");
      //更新并插入时间
      let obj = {}
      obj.tasteId = row.tasteId

      updateTaste().then(res =>{

        console.log("数据来了:{}"+ JSON.stringify(this.printListDetail))
      });
    },
    /*提交研发*/
    handle5(row){
      this.$message.info("提交研发TODO");
    },
    /*确认配方*/
    handle6(row){
      this.$message.info("确认配方TODO");
    },
    /*反确认配方*/
    handle7(row){
      this.$message.info("反确认配方TODO");
    },
    /*打印配方确认单*/
    handle8(row){
      this.$modal.loading("加载打印插件中，请稍候...");
      getTaste(row.tasteId).then(res =>{
        this.printList = res.data
        this.printListDetail = res.data.hxTasteDetailList
        console.log("数据来了:{}"+ JSON.stringify(this.printListDetail))
      });
      setTimeout(()=>{
        this.$modal.closeLoading()
        this.printEvent()
      },800)
    },
    /*完成跟进*/
    handle9(row){
      this.$message.info("完成跟进TODO");
    },
    /*详细日志*/
    handle10(row){
      getLog(row.tasteId).then((res)=>{
        this.logList = res.data
      })
      this.open = true
    },
    // 审核
    handleAudit(row){
      this.$message.info("TODO");
    },
    /*分配跟进人*/
    handleDistribution(row){
        this.reset();
        getTaste(row.tasteId).then((resp)=>{
          this.form = resp.data
        })
      console.log("1123"+ JSON.stringify(this.form ))
      getDistribution().then((res)=>{
          this.distributionList = res.data;
        })
        this.open = true;
        this.title = "分配跟进人";

    },
    // 作废  waste
    handleWaste(row){
      // 作废将 state 字段状态变成 -1
      this.$modal.confirm('是否确认作废口味ID为"' + row.tasteId + '"的数据项？').then(function() {
        getWasteTaste(row.tasteId)
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess('已作废');
      }).catch(() => {
        this.$modal.msgSuccess('已取消');
      });
    },
    // 打印需要的数据处理
    handlePrint(row){
      // 获取分组好的数据
      this.$modal.loading("加载打印插件中，请稍候...");
      getTaste(row.tasteId).then(res =>{
        this.printList = res.data
        this.printListDetail = res.data.hxTasteDetailList
        console.log("数据来了:{}"+ JSON.stringify(this.printListDetail))
      });
      setTimeout(()=>{
        this.$modal.closeLoading()
        this.printEvent()
      },800)
    },
    /*打印*/
    printEvent() {
      console.log("我是打印明细",JSON.stringify(this.printList))
      const username = this.$store.state.user.name;
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
              <div class="my-list-col-max-l">编码: ${this.printList.tasteId} ———— ${this.stateList(this.printList.state)}</div>
              <div class="my-list-col-max-r">申请日期: ${this.printList.createTime}</div>
              <br/>
              <div class="my-list-col">业务姓名:&nbsp&nbsp&nbsp ${this.printList.businessName}</div>
              <div class="my-list-col">业务部门:&nbsp&nbsp&nbsp ${this.printList.deptId}</div>
              <div class="my-list-col">业务代码:&nbsp&nbsp&nbsp${this.printList.businessCode}</div>
              <div class="my-list-col">客户名称:&nbsp&nbsp&nbsp${this.printList.customersName} </div>
              <div class="my-list-col">客户代码:&nbsp&nbsp&nbsp${this.printList.customersCode}</div>
              <div class="my-list-col">口味数量:&nbsp&nbsp&nbsp${this.printList.tasteNum}</div>
              <div class="my-list-col">第几次送样:&nbsp&nbsp&nbsp${this.printList.sendNum}</div>
              <div class="my-list-col">来访日期:&nbsp&nbsp&nbsp${this.printList.visitTime}</div>
              <div class="my-list-col">发热丝种类:&nbsp&nbsp&nbsp${this.printList.heatingWireType}</div>
              <div class="my-list-col">口味专供:&nbsp&nbsp&nbsp${this.printList.isSupply}</div>
              <div class="my-list-col">现场试油:&nbsp&nbsp&nbsp${this.printList.isTry}</div>
              <div class="my-list-col">自带烟具:&nbsp&nbsp&nbsp${this.printList.isSmoking}</div>
              <div class="my-list-col">烟具类型:&nbsp&nbsp&nbsp${this.printList.smokingType}</div>
              <div class="my-list-col">是否回收烟具:&nbsp&nbsp&nbsp${this.printList.isRecyclingSmoking}</div>
              <div class="my-list-col">导油棉类型:&nbsp&nbsp&nbsp${this.printList.oilGuideCottonType}</div>
              <div class="my-list-col">发热丝阻值:&nbsp&nbsp&nbsp${this.printList.heatingWireResistance}</div>
              <div class="my-list-col">烟油仓容量:&nbsp&nbsp&nbsp${this.printList.capacity}</div>
              <div class="my-list-col">油环材质类型:&nbsp&nbsp&nbsp${this.printList.oilRingMaterial}</div>
              <div class="my-list-col">甜度(1-10):&nbsp&nbsp&nbsp${this.printList.sweetness}</div>
              <div class="my-list-col">凉度(1-10):&nbsp&nbsp&nbsp${this.printList.coolness}</div>
              <div class="my-list-col">粘稠度(1-10):&nbsp&nbsp&nbsp${this.printList.viscosity}</div>
              <div class="my-list-col">期望完成时间:&nbsp&nbsp&nbsp${this.printList.expectedCompletionTime}</div>
              <div class="my-list-col">样品数量:&nbsp&nbsp&nbsp${this.printList.samplesNum}</div>
              <div class="my-list-col">样品需求日期:&nbsp&nbsp&nbsp${this.printList.sampleRequestTime}</div>
              <div class="my-list-col">预计完成时间:&nbsp&nbsp&nbsp${this.printList.estimatedFinishTime}</div>
              <div class="my-list-col">匹配市场:&nbsp&nbsp&nbsp${JSON.parse(this.printList.matchMarket)}</div>
              <div class="my-list-col">邮寄信息:&nbsp&nbsp&nbsp${this.printList.mailingInformation}</div>
              <div class="my-list-col">备注:&nbsp&nbsp&nbsp${this.printList.remark}</div>
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
          {field: 'perfumer'},
        ],
        beforePrintMethod: ({content}) => {
          // 拦截打印之前，返回自定义的 html 内容
          return topHtml + content + bottomHtml
        }
      })
    },
    /** 查询口味申请单列表 */
    getList() {
      this.loading = true;
      listTaste(this.queryParams).then(response => {
        this.tasteList = response.rows;
        this.total = response.total;
        this.loading = false;
      });
    }
    ,
// 取消按钮
    cancel() {
      this.open = false;
      this.reset();
    }
    ,
// 表单重置
    reset() {
      this.form = {
        tasteId: null,
        deptId: null,
        businessName: null,
        businessCode: null,
        customersName: null,
        customersCode: null,
        tasteNum: null,
        refereeNum: null,
        sendNum: null,
        isSupply: 0,
        isTry: 0,
        visitTime: null,
        isSmoking: 0,
        smokingType: null,
        heatingWireType: null,
        heatingWireResistance: null,
        capacity: null,
        oilGuideCottonType: null,
        isRecyclingSmoking: 0,
        oilRingMaterial: null,
        vg: null,
        viscosity: null,
        deleted: null,
        state: null,
        coolness: null,
        sweetness: null,
        expectedCompletionTime: null,
        sampleRequestTime: null,
        estimatedFinishTime: null,
        matchMarket: null,
        samplesNum: null,
        mailingInformation: null,
        createBy: null,
        createTime: null,
        updateBy: null,
        updateTime: null,
        remark: "",
        follower:''
      };
      this.hxTasteDetailList = [];
      this.resetForm("form");
      this.isTable = false;
    }
    ,
    /** 搜索按钮操作 */
    handleQuery() {
      this.queryParams.pageNum = 1;
      this.getList();
    }
    ,
    /** 重置按钮操作 */
    resetQuery() {
      this.resetForm("queryForm");
      this.handleQuery();
    }
    ,
// 多选框选中数据
    handleSelectionChange(selection) {
      this.ids = selection.map(item => item.tasteId)
      this.single = selection.length !== 1
      this.multiple = !selection.length
    }
    ,
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      //this.open = true;
      //this.title = "添加口味申请单";
      this.$tab.openPage("口味申请单", "/kouwei/taste");
    }
    ,
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const tasteId = row.tasteId || this.ids
      console.log("页面:"+tasteId)
      //this.$router.push({ path: "/system/taste", query: {id: tasteId} });
      // getTaste(tasteId).then(response => {
      //   this.form = response.data;
      //   this.hxTasteDetailList = response.data.hxTasteDetailList;
      //   this.open = true;
      //   this.title = "修改口味申请单";
      // });
      //var routePromise = this.$tab.openPage("口味申请单", "/tool/taste?id="+tasteId);
      //console.log(routePromise.toString())

      //this.$router.push({ path: "/tool/taste", query: {id: tasteId} });
    }
    ,
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          this.form.hxTasteDetailList = this.hxTasteDetailList;
          if (this.form.tasteId != null) {
            updateTaste(this.form).then(response => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addTaste(this.form).then(response => {
              this.$modal.msgSuccess("新增成功");
              this.open = false;
              this.getList();
            });
          }
        }
      });
    }
    ,
    /** 删除按钮操作 */
    handleDelete(row) {
      const tasteIds = row.tasteId || this.ids;
      this.$modal.confirm('是否确认删除口味申请单编号为"' + tasteIds + '"的数据项？').then(function () {
        return delTaste(tasteIds);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => {
      });
    }
    ,
    /** 口味申请单明细序号 */
    rowHxTasteDetailIndex({row, rowIndex}) {
      row.index = rowIndex + 1;
    }
    ,
    /** 口味申请单明细添加按钮操作 */
    handleAddHxTasteDetail() {
      let obj = {};
      obj.tasteName = "";
      obj.tasteDetail = "";
      obj.isBasicTaste = "";
      obj.basicTasteName = "";
      obj.basicTasteImprovementIdeas = "";
      obj.capacity = "";
      obj.vg = "";
      obj.nicType = "";
      obj.nicConcentration = "";
      obj.nicUnit = "";
      obj.perfumer = "";
      obj.version = "";
      obj.remark = "";
      this.hxTasteDetailList.push(obj);
    },
    /** 口味申请单明细删除按钮操作 */
    handleDeleteHxTasteDetail() {
      if (this.checkedHxTasteDetail.length == 0) {
        this.$modal.msgError("请先选择要删除的口味申请单明细数据");
      } else {
        const hxTasteDetailList = this.hxTasteDetailList;
        const checkedHxTasteDetail = this.checkedHxTasteDetail;
        this.hxTasteDetailList = hxTasteDetailList.filter(function (item) {
          return checkedHxTasteDetail.indexOf(item.index) == -1
        });
      }
    }
    ,
    /** 复选框选中数据 */
    handleHxTasteDetailSelectionChange(selection) {
      this.checkedHxTasteDetail = selection.map(item => item.index)
    }
    ,
    /** 导出按钮操作 */
    handleExport() {
      this.download('system/taste/export', {
        ...this.queryParams
      }, `taste_${new Date().getTime()}.xlsx`)
    }
  }
}
;
</script>
<style scoped>
.el-form-item--mini.el-form-item {
  margin-bottom: 8px;
}

.tableDiv .el-input {
  display: none;
}

.current-cell .el-input {
  display: block;
}

.current-cell .el-input + span {
  display: none;
}

</style>
