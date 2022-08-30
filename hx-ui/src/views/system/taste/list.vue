<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch"  label-width="68px">
      <el-form-item label="口味编码" prop="deptId">
        <el-input
          v-model="queryParams.tasteId"
          placeholder="请输入口味编码"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="部门" prop="deptId">
        <el-input
          v-model="queryParams.deptId"
          placeholder="请输入部门"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="业务姓名" prop="businessName">
        <el-input
          v-model="queryParams.businessName"
          placeholder="请输入业务姓名"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="业务代码" prop="businessCode">
        <el-input
          v-model="queryParams.businessCode"
          placeholder="请输入业务代码"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
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
      <el-col :span="1.5">
        <el-button
          type="primary"
          plain
          icon="el-icon-plus"
          size="mini"
          @click="handleAdd"
          v-hasPermi="['taste:add']"
        >新增
        </el-button>
      </el-col>

      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="el-icon-delete"
          size="mini"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['taste:remove']"
        >删除
        </el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['taste:export']"
        >导出</el-button>
      </el-col>

      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>
    <div>
      <el-table v-loading="loading" :data="tasteList" @selection-change="handleSelectionChange" show-overflow-tooltip>
        <el-table-column type="selection" width="30" align="center"/>
        <el-table-column  label="序号" type="index" align="center"/>
        <el-table-column label="单据编码" width="180" align="center" prop="tasteId" show-overflow-tooltip/>
        <el-table-column label="状态"  width="150" align="center" prop="state" show-overflow-tooltip>
          <template slot-scope="scope">
            <el-tag v-show="scope.row.state === '-1'" type="danger">{{stateList(scope.row.state)}}</el-tag>
            <el-tag v-show="scope.row.state !== '-1'" >{{stateList(scope.row.state)}}</el-tag>
          </template>
        </el-table-column>
        <el-table-column label="录入人" align="center" prop="createBy"/>
        <el-table-column label="业务姓名" align="center" prop="businessName" show-overflow-tooltip/>
        <el-table-column label="业务部门" align="center" width="150" prop="deptId" show-overflow-tooltip/>
        <el-table-column label="日期" width="150" align="center" prop="createTime" sortable show-overflow-tooltip>
          <template slot-scope="scope">{{ parseTime(scope.row.createTime, '{y}-{m}-{d} {h}:{i}') }}</template>
        </el-table-column>
        <el-table-column label="客户名称" align="center" prop="customersName"/>
        <el-table-column label="客户代码" align="center" prop="customersCode"/>
        <el-table-column label="客户跟进人" align="center" prop="follower"/>
        <el-table-column label="操作" align="center" width="200" class-name="small-padding fixed-width" fixed="right">
          <template slot-scope="scope">
            <el-button
              size="mini"
              type="text"
              icon="el-icon-edit"
              @click="handleDetail(scope.row)"
              v-hasPermi="['taste:query']"
            >详情
            </el-button>
<!--            <el-button
              size="mini"
              type="text"
              icon="el-icon-edit"
              @click="commit(scope.row)"
            >测试-提交
            </el-button>-->
            <el-button
              size="mini"
              type="text"
              icon="el-icon-delete"
              @click="handleDelete(scope.row)"
              v-hasPermi="['taste:remove']"
            >删除
            </el-button>
            <el-dropdown size="mini" @command="(command) => handleCommand(command, scope.row)"><!-- v-hasPermi="['monitor:job:changestate', 'monitor:job:query']"-->
            <span class="el-dropdown-link">
              <i class="el-icon-d-arrow-right el-icon--right"></i>更多
            </span>
              <el-dropdown-menu slot="dropdown">
                <el-dropdown-item command="handleWaste" icon="el-icon-delete" v-hasPermi="['taste:waste']">作废</el-dropdown-item>
                <el-dropdown-item command="handleAudit" icon="el-icon-folder-delete" v-hasPermi="['taste:audit']">审核</el-dropdown-item>
                <el-dropdown-item command="handlePrint" icon="el-icon-printer" v-hasPermi="['taste:query']">打印</el-dropdown-item>
                <el-dropdown-item command="handleDistribution" icon="el-icon-user" v-hasPermi="['taste:distribution']">分配跟进人</el-dropdown-item>
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
<!--        <vxe-column field="perfumer" title="指定调香师"></vxe-column>-->
        <vxe-column field="perfumer" title="分配调香师"></vxe-column>
      </vxe-table>

    </div>

    <!-- 添加或修改全球地区对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="120px">
        <el-form-item label="分配跟进人" prop="follower">
          <el-select v-model="form.follower" filterable placeholder="试试搜索 销售昵称">
            <el-option
              v-for="item in distributionList"
              :key="item.nickName"
              :label="item.nickName"
              :value="item.nickName">
            </el-option>
          </el-select>
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>


  </div>
</template>
<script>
import {listTaste, getTaste, delTaste, addTaste, updateTaste, getWasteTaste, getDistribution, getAuditTaste} from "@/api/system/taste";
import cache from '@/plugins/cache'
import stateList from '@/utils/stateList'
import axios from "axios";
export default {
  name: "TasteList",
  components: {},
  // dicts: ['hx_common_is', 'hx_common_type'],
  data() {
    return {
      /*状态加密*/
      codeApi: '',
      codeApp: '',
      /*引入状态字典*/
      stateList,
      /*测试组件通讯*/
      testName:'你好呀',
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
      showSearch: false,
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
        tasteId: null,
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
        deleted: '0',
        isAsc:'desc',
        orderByColumn:'createTime'

      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
        follower: [
          {required: true, message: "分配跟进人不能为空", trigger: "change"}
        ],
        // deptId: [
        //   {required: true, message: "部门Id不能为空", trigger: "blur"}
        // ],
        businessName: [
          {required: true, message: "业务姓名不能为空", trigger: "blur"}
        ],
        businessCode: [
          {required: true, message: "业务代码不能为空", trigger: "blur"}
        ],
        customersName: [
          {required: true, message: "客户名称不能为空", trigger: "blur"}
        ],
        customersCode: [
          {required: true, message: "客户代码不能为空", trigger: "blur"}
        ],
        tasteNum: [
          {required: true, message: "口味数量不能为空", trigger: "blur"}
        ],
        refereeNum: [
          {required: true, message: "上次申请单号不能为空", trigger: "blur"}
        ],
        sendNum: [
          {required: true, message: "第几次送样不能为空", trigger: "blur"}
        ],
        isSupply: [
          {required: true, message: "口味专供不能为空", trigger: "blur"}
        ],
        isTry: [
          {required: true, message: "现场试用不能为空", trigger: "blur"}
        ],
        visitTime: [
          {required: true, message: "来访日期不能为空", trigger: "blur"}
        ],
        isSmoking: [
          {required: true, message: "自带烟具不能为空", trigger: "blur"}
        ],
        smokingType: [
          {required: true, message: "烟具类型不能为空", trigger: "change"}
        ],
        heatingWireType: [
          {required: true, message: "发热丝类型不能为空", trigger: "change"}
        ],
        heatingWireResistance: [
          {required: true, message: "发热丝阻值不能为空", trigger: "blur"}
        ],
        capacity: [
          {required: true, message: "烟油仓容量不能为空", trigger: "blur"}
        ],
        oilGuideCottonType: [
          {required: true, message: "导游棉类型不能为空", trigger: "change"}
        ],
        isRecyclingSmoking: [
          {required: true, message: "是否回收烟具不能为空", trigger: "blur"}
        ],
        oilRingMaterial: [
          {required: true, message: "油环材质类型不能为空", trigger: "change"}
        ],
        viscosity: [
          {required: true, message: "粘稠度不能为空", trigger: "blur"}
        ],
        expectedCompletionTime: [
          {required: true, message: "期望完成时间不能为空", trigger: "blur"}
        ],
        estimatedFinishTime: [
          {required: true, message: "预计完成时间不能为空", trigger: "blur"}
        ],
        matchMarket: [
          {required: true, message: "匹配市场不能为空", trigger: "blur"}
        ],
        mailingInformation: [
          {required: true, message: "邮寄信息不能为空", trigger: "blur"}
        ],
        remark: [
          {required: true, message: "备注不能为空", trigger: "blur"}
        ]
      }
    };
  },
  created() {
    this.getList();
    this.reset();
    //this.getWx();
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
      //this.$router.push({ path: '/kouwei/taste' ,query: { tasteId:row.tasteId } });
      this.$router.push({ path: '/system/taste-data/index/'+row.tasteId});
      //this.$router.push({ path: '/system/taste-data/index/'+row.tasteId, query: {id: "1", name: "你好呀"} });
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
        default:
          break;
      }
    },

    // 审核
    handleAudit(row){
      // 作废将 state 字段状态变成 6
      this.$modal.confirm('您将强制审核通过"' + row.tasteId + '"口味单是否确认？').then(function() {
        getAuditTaste(row.tasteId)
      }).then(() => {
        this.$modal.msgSuccess('已审核通过');
        this.getList();
      }).catch(() => {
        this.$modal.msgSuccess('已取消');
      });

    },
    /*分配跟进人*/
    handleDistribution(row){
        this.reset();
        // 获取以一些数据
        getTaste(row.tasteId).then((resp)=>{
          this.form = resp.data
          // 变更为分配跟进人状态
          this.form.state = '7'
        })
        // 作废接口
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
    fatherMethod() {
      console.log('测试');
    },
    // 打印需要的数据处理
    handlePrint(row){
      // 获取分组好的数据
      getTaste(row.tasteId).then(res =>{
        this.printList = res.data
        this.printListDetail = res.data.hxTasteDetailList
        console.log("数据来了:{}"+ JSON.stringify(this.printListDetail))
      });
      setTimeout(()=>{
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
          /*{field: 'perfumer'},*/
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
        tasteCopyId: null,
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
