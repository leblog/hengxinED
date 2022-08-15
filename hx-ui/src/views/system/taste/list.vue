<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true"  label-width="68px">
      <el-form-item label="部门Id" prop="deptId">
        <el-input
          v-model="queryParams.deptId"
          placeholder="请输入部门Id"
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
<!--      <el-col :span="1.5">
        <el-button
          type="primary"
          plain
          icon="el-icon-plus"
          size="mini"
          @click="handleAdd"
          v-hasPermi="['system:taste:add']"
        >新增
        </el-button>
      </el-col>-->

      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="el-icon-delete"
          size="mini"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['system:taste:remove']"
        >删除
        </el-button>
      </el-col>

      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>
    <div>
      <el-table v-loading="loading" :data="tasteList" @selection-change="handleSelectionChange">
        <el-table-column type="selection" width="30" align="center"/>
        <el-table-column label="口味申请单ID" align="center" prop="tasteId"/>
        <el-table-column label="部门Id" align="center" prop="deptId"/>
        <el-table-column label="业务姓名" align="center" prop="businessName"/>
        <el-table-column label="业务代码" align="center" prop="businessCode"/>
        <el-table-column label="客户名称" align="center" prop="customersName"/>
        <el-table-column label="客户代码" align="center" prop="customersCode"/>
        <el-table-column label="口味数量" align="center" prop="tasteNum"/>
        <el-table-column label="上次申请单号" align="center" prop="refereeNum"/>
        <el-table-column label="第几次送样" align="center" prop="sendNum"/>
        <el-table-column label="口味专供" align="center" prop="isSupply">
          <template slot-scope="scope">
            <dict-tag :options="dict.type.hx_common_is" :value="scope.row.isSupply"/>
          </template>
        </el-table-column>
        <el-table-column label="现场试用" align="center" prop="isTry">
          <template slot-scope="scope">
            <dict-tag :options="dict.type.hx_common_is" :value="scope.row.isTry"/>
          </template>
        </el-table-column>
        <el-table-column label="来访日期" align="center" prop="visitTime" width="100">
          <template slot-scope="scope">
            <span>{{ parseTime(scope.row.visitTime, '{y}-{m}-{d}') }}</span>
          </template>
        </el-table-column>
        <el-table-column label="自带烟具" align="center" prop="isSmoking">
          <template slot-scope="scope">
            <dict-tag :options="dict.type.hx_common_is" :value="scope.row.isSmoking"/>
          </template>
        </el-table-column>
        <el-table-column label="烟具类型" align="center" prop="smokingType">
          <template slot-scope="scope">
            <dict-tag :options="dict.type.hx_common_type" :value="scope.row.smokingType"/>
          </template>
        </el-table-column>
        <el-table-column label="发热丝类型" align="center" prop="heatingWireType">
          <template slot-scope="scope">
            <dict-tag :options="dict.type.hx_common_type" :value="scope.row.heatingWireType"/>
          </template>
        </el-table-column>
        <el-table-column label="发热丝阻值" align="center" prop="heatingWireResistance"/>
        <el-table-column label="烟油仓容量" align="center" prop="capacity"/>
        <el-table-column label="导游棉类型" align="center" prop="oilGuideCottonType">
          <template slot-scope="scope">
            <dict-tag :options="dict.type.hx_common_type" :value="scope.row.oilGuideCottonType"/>
          </template>
        </el-table-column>
        <el-table-column label="是否回收烟具" align="center" prop="isRecyclingSmoking">
          <template slot-scope="scope">
            <dict-tag :options="dict.type.hx_common_is" :value="scope.row.isRecyclingSmoking"/>
          </template>
        </el-table-column>
        <el-table-column label="油环材质类型" align="center" prop="oilRingMaterial">
          <template slot-scope="scope">
            <dict-tag :options="dict.type.hx_common_type" :value="scope.row.oilRingMaterial"/>
          </template>
        </el-table-column>
        <el-table-column label="VG" align="center" prop="vg"/>
        <el-table-column label="粘稠度" align="center" prop="viscosity"/>
        <el-table-column label="期望完成时间" align="center" prop="expectedCompletionTime" width="100">
          <template slot-scope="scope">
            <span>{{ parseTime(scope.row.expectedCompletionTime, '{y}-{m}-{d}') }}</span>
          </template>
        </el-table-column>
        <el-table-column label="样品需求时间" align="center" prop="sampleRequestTime" width="100">
          <template slot-scope="scope">
            <span>{{ parseTime(scope.row.sampleRequestTime, '{y}-{m}-{d}') }}</span>
          </template>
        </el-table-column>
        <el-table-column label="预计完成时间" align="center" prop="estimatedFinishTime" width="100">
          <template slot-scope="scope">
            <span>{{ parseTime(scope.row.estimatedFinishTime, '{y}-{m}-{d}') }}</span>
          </template>
        </el-table-column>
        <el-table-column label="匹配市场" align="center" prop="matchMarket" />
        <el-table-column label="样品数量" align="center" prop="samplesNum"/>
        <el-table-column label="邮寄信息" align="center" prop="mailingInformation" :show-overflow-tooltip="true"/>
        <el-table-column label="备注" align="center" prop="remark"/>
        <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
              <template slot-scope="scope">
                <router-link :to="'/system/taste-data/index/' + scope.row.tasteId" class="link-type">
                  <i class="el-icon-edit">修改</i>
                </router-link>
<!--            <el-button
              size="mini"
              type="text"
              icon="el-icon-edit"
              v-hasPermi="['system:taste:edit']"
              @click="handleUpdate(scope.row)"
            >修改
            </el-button>-->
            <el-button
              size="mini"
              type="text"
              icon="el-icon-delete"
              @click="handleDelete(scope.row)"
              v-hasPermi="['system:taste:remove']"
            >删除
            </el-button>
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



  </div>
</template>
<script>
import {listTaste, getTaste, delTaste, addTaste, updateTaste} from "@/api/system/taste";
import cache from '@/plugins/cache'
import VXETable from 'vxe-table'
//import Handsontable from 'handsontable' //excel 表格
//import 'handsontable/dist/handsontable.full.css'; //excel 表格样式
//import Add from "./add"

export default {
  name: "TasteList",
  //components: {vtable},
  dicts: ['hx_common_is', 'hx_common_type'],
  data() {
    return {
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
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
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
  },
  mounted() {
    if (this.form.remark == null) {
      cache.session.remove("tasteList")
    }
  },
  methods: {
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
        remark: "测试1\n测试2"
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
      this.$tab.openPage("口味申请单", "/system/taste");
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
