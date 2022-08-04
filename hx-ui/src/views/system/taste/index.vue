<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="68px">
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

    <div>
      <!--    <el-dialog :title="title" :visible.sync="open" width="80%" append-to-body>-->
      <el-form label-position="right" ref="form" :model="form" :rules="rules" label-width="110px" size="mini">
        <!--  添加业务  -->
        <el-row type="flex" justify="space-around">
          <el-col :span="8">
            <el-form-item label="业务姓名" prop="businessName">
              <el-input v-model="form.businessName" placeholder="请输入业务姓名"/>
            </el-form-item>
          </el-col>
          <el-col :span="8">
            <!--TODO 绑定后端数据-->
            <el-form-item label="部门Id" prop="deptId">
              <el-input v-model="form.deptId" placeholder="请输入部门Id"/>
            </el-form-item>
          </el-col>
          <el-col :span="8">
            <el-form-item label="业务代码" prop="businessCode">
              <el-input v-model="form.businessCode" placeholder="请输入业务代码"/>
            </el-form-item>
          </el-col>
        </el-row>
        <el-row type="flex" justify="space-around">
          <el-col :span="8">
            <el-form-item label="客户名称" prop="customersName">
              <el-input v-model="form.customersName" placeholder="请输入客户名称"/>
            </el-form-item>
          </el-col>
          <el-col :span="8">
            <el-form-item label="客户代码" prop="customersCode">
              <el-input v-model="form.customersCode" placeholder="请输入客户代码"/>
            </el-form-item>
          </el-col>
          <el-col :span="8">
            <el-form-item label="口味数量" prop="tasteNum">
              <el-input v-model="form.tasteNum" placeholder="请输入口味数量"/>
            </el-form-item>
          </el-col>
        </el-row>
        <el-row type="flex" justify="space-around">
          <el-col :span="8">
            <el-form-item label="上次申请单号" prop="refereeNum">
              <el-input v-model="form.refereeNum" placeholder="请输入上次申请单号"/>
            </el-form-item>
          </el-col>
          <el-col :span="8">
            <el-form-item label="第几次送样" prop="sendNum">
              <el-input v-model="form.sendNum" placeholder="请输入第几次送样"/>
            </el-form-item>
          </el-col>
          <el-col :span="8">
            <el-form-item label="口味专供">
              <el-radio-group v-model="form.isSupply">
                <el-radio
                  v-for="dict in dict.type.hx_common_is"
                  :key="dict.value"
                  :label="parseInt(dict.value)"
                >{{ dict.label }}
                </el-radio>
              </el-radio-group>
            </el-form-item>
          </el-col>
        </el-row>
        <el-row type="flex" justify="space-around">

          <el-col :span="8">
            <el-form-item label="现场试用">
              <el-radio-group v-model="form.isTry">
                <el-radio
                  v-for="dict in dict.type.hx_common_is"
                  :key="dict.value"
                  :label="parseInt(dict.value)"
                >{{ dict.label }}
                </el-radio>
              </el-radio-group>
            </el-form-item>
          </el-col>
          <el-col :span="8">
            <el-form-item label="来访日期" prop="visitTime">
              <el-date-picker clearable
                              v-model="form.visitTime"
                              type="datetime"
                              value-format="yyyy-MM-dd hh:mm:ss"
                              placeholder="请选择来访日期">
              </el-date-picker>
            </el-form-item>
          </el-col>
          <el-col :span="8">
            <el-form-item label="自带烟具">
              <el-radio-group v-model="form.isSmoking">
                <el-radio
                  v-for="dict in dict.type.hx_common_is"
                  :key="dict.value"
                  :label="parseInt(dict.value)"
                >{{ dict.label }}
                </el-radio>
              </el-radio-group>
            </el-form-item>
          </el-col>
        </el-row>
        <el-row type="flex" justify="space-around">
          <el-col :span="8">
            <el-form-item label="烟具类型" prop="smokingType">
              <el-select v-model="form.smokingType" placeholder="请选择烟具类型">
                <el-option
                  v-for="dict in dict.type.hx_common_type"
                  :key="dict.value"
                  :label="dict.label"
                  :value="parseInt(dict.value)"
                ></el-option>
              </el-select>
            </el-form-item>
          </el-col>
          <el-col :span="8">
            <el-form-item label="发热丝类型" prop="heatingWireType">
              <el-select v-model="form.heatingWireType" placeholder="请选择发热丝类型">
                <el-option
                  v-for="dict in dict.type.hx_common_type"
                  :key="dict.value"
                  :label="dict.label"
                  :value="parseInt(dict.value)"
                ></el-option>
              </el-select>
            </el-form-item>
          </el-col>
          <el-col :span="8">
            <el-form-item label="发热丝阻值" prop="heatingWireResistance">
              <el-input v-model="form.heatingWireResistance" placeholder="请输入发热丝阻值"/>
            </el-form-item>
          </el-col>
        </el-row>
        <el-row type="flex" justify="space-around">
          <el-col :span="8">
            <el-form-item label="烟油仓容量" prop="capacity">
              <el-input v-model="form.capacity" placeholder="请输入烟油仓容量"/>
            </el-form-item>
          </el-col>
          <el-col :span="8">
            <el-form-item label="导游棉类型" prop="oilGuideCottonType">
              <el-select v-model="form.oilGuideCottonType" placeholder="请选择导游棉类型">
                <el-option
                  v-for="dict in dict.type.hx_common_type"
                  :key="dict.value"
                  :label="dict.label"
                  :value="parseInt(dict.value)"
                ></el-option>
              </el-select>
            </el-form-item>
          </el-col>
          <el-col :span="8">
            <el-form-item label="是否回收烟具">
              <el-radio-group v-model="form.isRecyclingSmoking">
                <el-radio
                  v-for="dict in dict.type.hx_common_is"
                  :key="dict.value"
                  :label="parseInt(dict.value)"
                >{{ dict.label }}
                </el-radio>
              </el-radio-group>
            </el-form-item>
          </el-col>
        </el-row>
        <el-row type="flex" justify="space-around">
          <el-col :span="8">
            <el-form-item label="油环材质类型" prop="oilRingMaterial">
              <el-select v-model="form.oilRingMaterial" placeholder="请选择油环材质类型">
                <el-option
                  v-for="dict in dict.type.hx_common_type"
                  :key="dict.value"
                  :label="dict.label"
                  :value="parseInt(dict.value)"
                ></el-option>
              </el-select>
            </el-form-item>
          </el-col>
          <el-col :span="8">
            <el-form-item label="VG" prop="vg">
              <el-input v-model="form.vg" placeholder="请输入VG"/>
            </el-form-item>
          </el-col>
          <el-col :span="8">
            <el-form-item label="粘稠度" prop="viscosity">
              <el-input v-model="form.viscosity" placeholder="请输入粘稠度"/>
            </el-form-item>
          </el-col>
        </el-row>
        <el-row type="flex" justify="space-around">
          <el-col :span="8">
            <el-form-item label="期望完成时间" prop="expectedCompletionTime">
              <el-date-picker clearable
                              v-model="form.expectedCompletionTime"
                              type="datetime"
                              value-format="yyyy-MM-dd hh:mm:ss"
                              placeholder="请选择期望完成时间">
              </el-date-picker>
            </el-form-item>
          </el-col>
          <el-col :span="8">
            <el-form-item label="样品需求时间" prop="sampleRequestTime">
              <el-date-picker clearable
                              v-model="form.sampleRequestTime"
                              type="datetime"
                              value-format="yyyy-MM-dd hh:mm:ss"
                              placeholder="请选择样品需求时间">
              </el-date-picker>
            </el-form-item>
          </el-col>
          <el-col :span="8">
            <el-form-item label="预计完成时间" prop="estimatedFinishTime">
              <el-date-picker clearable
                              v-model="form.estimatedFinishTime"
                              type="datetime"
                              value-format="yyyy-MM-dd hh:mm:ss"
                              placeholder="请选择预计完成时间">
              </el-date-picker>
            </el-form-item>
          </el-col>
        </el-row>
        <el-row type="flex" justify="space-around">
          <el-col :span="8">
            <el-form-item label="匹配市场" prop="matchMarket">
              <el-input v-model="form.matchMarket" placeholder="请输入匹配市场"/>
            </el-form-item>
          </el-col>
          <el-col :span="8">
            <el-form-item label="样品数量" prop="samplesNum">
              <el-input v-model="form.samplesNum" placeholder="请输入样品数量"/>
            </el-form-item>
          </el-col>
          <el-col :span="8">
            <el-form-item label="邮寄信息" prop="mailingInformation">
              <el-input v-model="form.mailingInformation" type="textarea" placeholder="请输入内容"/>
            </el-form-item>
          </el-col>
        </el-row>
        <el-row type="flex">
          <el-col :span="8">
            <el-form-item label="备注" prop="remark">
              <el-input v-model="form.remark" autosize type="textarea" placeholder="请输入内容"
                        @blur="batchValue(form.remark)"/>
            </el-form-item>
          </el-col>
        </el-row>
        <!--   业务明细     -->
        <el-divider content-position="center">口味申请单明细信息</el-divider>
        <el-row :gutter="10" class="mb8">
          <el-col :span="1.5">
<!--            <el-button type="primary" icon="el-icon-plus" size="mini" @click="handleAddHxTasteDetail">添加</el-button>-->
            <el-button type="primary" icon="el-icon-plus" size="mini" @click="insertEvent()">添加</el-button>
          </el-col>
          <el-col :span="1.5">
<!--              <el-button type="danger" icon="el-icon-delete" size="mini" @click="handleDeleteHxTasteDetail">删除</el-button>-->
            <el-button type="danger" icon="el-icon-delete" size="mini" @click="removeSelectEvent()">删除选中</el-button>
<!--            @click="$refs.xTable.removeCheckboxRow()"-->
          </el-col>
        </el-row>
        <div class="tableDiv">
          <vxe-table
            border
            resizable
            show-overflow
            ref="xTable"
            :loading="loading"
            :data="hxTasteDetailList"
            :checkbox-config="{trigger: 'row', highlight: true, range: true}"
            :edit-config="{trigger: 'manual', mode: 'row'}"
            @cell-dblclick="doubleClick">
<!--
row[item.prop]+'/tasteName'
:edit-config="{trigger: 'manual', mode: 'row'}"
:column-config="{isCurrent: true, isHover: true}"-->
<!--            <el-table-column type="selection" width="50" align="center"/>
            <el-table-column label="序号" align="center" prop="index" width="47"/>-->
            <vxe-column type="checkbox" width="30"></vxe-column>
            <vxe-column type="seq" title="序号" width="50"></vxe-column>
<!--            <vxe-column
              title=""
              :edit-render="{autofocus: '.my-input', autoselect: true}"
              v-for="(item, index) in tableColumn"
              :key="index"
              :field="item.prop"
              class="my-input"
            >
              <template slot="header">
                <span @dblclick="reduce(item.prop+'/'+index)">{{ item.label }}</span>
              </template>
              <template #edit="{ row }">
                <span @dblclick="doubleClick(row[item.prop]+'/tasteName')">
                <vxe-input v-model="row[item.prop]" type="text" ></vxe-input>
                  </span>
              </template>
            </vxe-column>-->
            <vxe-column field="tasteName" :edit-render="{}">
              <template slot="header">
                <span @dblclick="reduce('tasteName')">口味名称</span>
              </template>
              <template #edit="{ row }">
                <vxe-input v-model="row.tasteName" type="text" placeholder="请输入"></vxe-input>
              </template>
            </vxe-column>
            <vxe-column field="tasteDetail"   :edit-render="{}">
              <template slot="header">
                <span @dblclick="reduce('tasteDetail')">口味描述</span>
              </template>
              <template #edit="{ row }">
                <vxe-input v-model="row.tasteDetail" type="text" placeholder="请输入"></vxe-input>
              </template>
            </vxe-column>

            <vxe-column field="isBasicTaste" title="有基础口味" :edit-render="{}">
              <template #default="{ row }">
                <span>{{ formatSex(row.isBasicTaste) }}</span>
              </template>
              <template #edit="{ row }">
                <vxe-select v-model="row.isBasicTaste" transfer>
                  <vxe-option v-for="item in sexList" :key="item.value" :value="item.value" :label="item.label"></vxe-option>
                </vxe-select>
              </template>
            </vxe-column>
            <vxe-column field="basicTasteName"   :edit-render="{}">
              <template slot="header">
                <span @dblclick="reduce('basicTasteName')">基础口味名称/编号</span>
              </template>
              <template #edit="{ row }">
                <vxe-input v-model="row.basicTasteName" type="text" placeholder="请输入"></vxe-input>
              </template>
            </vxe-column>
            <vxe-column field="basicTasteImprovementIdeas"   :edit-render="{}">
              <template slot="header">
                <span @dblclick="reduce('basicTasteImprovementIdeas')">基础口味改善建议</span>
              </template>
              <template #edit="{ row }">
                <vxe-input v-model="row.basicTasteImprovementIdeas" type="text" placeholder="请输入"></vxe-input>
              </template>
            </vxe-column>
            <vxe-column field="capacity"   :edit-render="{}">
              <template slot="header">
                <span @dblclick="reduce('capacity')">容量</span>
              </template>
              <template #edit="{ row }">
                <vxe-input v-model="row.capacity" type="text" placeholder="请输入"></vxe-input>
              </template>
            </vxe-column>
            <vxe-column field="vg"   :edit-render="{}">
              <template slot="header">
                <span @dblclick="reduce('vg')">VG</span>
              </template>
              <template #edit="{ row }">
                <vxe-input v-model="row.vg" type="text" placeholder="请输入"></vxe-input>
              </template>
            </vxe-column>
            <vxe-column field="nicType"   :edit-render="{}" :title-help="{message: '编辑勾选', icon: 'fa fa-bell'}">
              <template slot="header">
                <span @dblclick="reduce('nicType')">NIC类别</span>
              </template>
              <template #edit="{ row }">
                <vxe-input v-model="row.nicType" type="text" placeholder="请输入"></vxe-input>
              </template>
            </vxe-column>
            <vxe-column field="nicConcentration"   :edit-render="{}">
              <template slot="header">
                <span @dblclick="reduce('nicConcentration')">NIC浓度</span>
              </template>
              <template #edit="{ row }">
                <vxe-input v-model="row.nicConcentration" type="text" placeholder="请输入"></vxe-input>
              </template>
            </vxe-column>
            <vxe-column field="nicUnit" title="NIC单位" :edit-render="{}">
              <template #default="{ row }">
                <span>{{ formatUnit(row.nicUnit) }}</span>
              </template>
              <template #edit="{ row }">
                <vxe-select v-model="row.nicUnit" transfer>
                  <vxe-option v-for="item in nicUnitList" :key="item.value" :value="item.value" :label="item.label"></vxe-option>
                </vxe-select>
              </template>
            </vxe-column>
            <vxe-column field="perfumer"   :edit-render="{}">
              <template slot="header">
                <span @dblclick="reduce('perfumer')">调香师</span>
              </template>
              <template #edit="{ row }">
                <vxe-input v-model="row.perfumer" type="text" placeholder="请输入"></vxe-input>
              </template>
            </vxe-column>
            <vxe-column field="version"   :edit-render="{}">
              <template slot="header">
                <span @dblclick="reduce('version')">版本</span>
              </template>
              <template #edit="{ row }">
                <vxe-input v-model="row.version" type="text" placeholder="请输入"></vxe-input>
              </template>
            </vxe-column>


<!--            <vxe-column field="sex2" title="多选下拉" :edit-render="{}">
              <template #default="{ row }">
                <span>{{ formatMultiSex(row.sex2) }}</span>
              </template>
              <template #edit="{ row }">
                <vxe-select v-model="row.sex2" multiple transfer>
                  <vxe-option v-for="item in sexList" :key="item.value" :value="item.value" :label="item.label"></vxe-option>
                </vxe-select>
              </template>
            </vxe-column>
            <vxe-column field="num6" title="Number" :edit-render="{}">
              <template #edit="{ row }">
                <vxe-input v-model="row.num6" type="number" placeholder="请输入数值"></vxe-input>
              </template>
            </vxe-column>
            <vxe-column field="date12" title="Date" :edit-render="{}">
              <template #edit="{ row }">
                <vxe-input v-model="row.date12" type="date" placeholder="请选择日期" transfer></vxe-input>
              </template>
            </vxe-column>
            <vxe-column field="date13" title="Week" :edit-render="{}">
              <template #edit="{ row }">
                <vxe-input v-model="row.date13" type="week" placeholder="请选择日期" transfer></vxe-input>
              </template>
            </vxe-column>
            <vxe-column field="address" title="Address" :edit-render="{}">
              <template #edit="{ row }">
                <vxe-input v-model="row.address" type="text"></vxe-input>
              </template>
            </vxe-column>-->

            <vxe-column title="操作" width="160">
              <template #default="{ row }">
                <template v-if="$refs.xTable.isActiveByRow(row)">
<!--                  <vxe-button @click="saveRowEvent(row)">保存</vxe-button>-->
                  <vxe-button @click="cancelRowEvent(row)">取消</vxe-button>
                </template>
                <template v-else>
                  <vxe-button @click="editRowEvent(row)">编辑</vxe-button>
                </template>
              </template>
            </vxe-column>

            <template #empty>
            <span style="color: red;">
              <img src="https://pic2.zhimg.com/50/v2-f7031359103859e1ed38559715ef5f3f_hd.gif">
              <p>不用再看了，没有更多数据了！</p>
            </span>
            </template>
          </vxe-table>
        </div>

      </el-form>
    </div>
    <div slot="footer" class="dialog-footer">
      <el-button type="primary" @click="submitForm">保 存</el-button>
      <el-button @click="cancel">重 置 所 有</el-button>
<!--      <el-button @click="cancelDeatil">重 置 明 细</el-button>-->
    </div>

  </div>
</template>
<script>
import {listTaste, getTaste, delTaste, addTaste, updateTaste} from "@/api/system/taste";
import cache from '@/plugins/cache'
import VXETable from 'vxe-table'


export default {
  name: "Taste",
  // components: {vtable},
  dicts: ['hx_common_is', 'hx_common_type'],
  data() {
    return {
      sexList: [
        { label: '', value: '' },
        { label: '否', value: '1' },
        { label: '是', value: '0' }
      ],
      nicUnitList: [
        { label: '', value: '' },
        { label: 'mg/g', value: '1' },
        { label: 'mg/ml', value: '0' }
      ],
      tableColumn: [
        {label: '口味名称', prop: 'tasteName', width: '140', edit: true ,type:"text"},
        {label: '口味描述', prop: 'tasteDetail', width: '140', edit: true ,type:"text"},
        {label: '有基础口味', prop: 'isBasicTaste', width: '80', edit: true ,type:"text"},
        {label: '基础口味名称/编号', prop: 'basicTasteName', width: '80', edit: true},
        {label: '基础口味改善建议', prop: 'basicTasteImprovementIdeas', width: '80', edit: true},
        {label: '容量', prop: 'capacity', width: '80', edit: true},
        {label: 'VG', prop: 'vg', width: '80', edit: true ,type:"number"},
        {label: 'NIC类别', prop: 'nicType', width: '80', edit: true},
        {label: 'NIC浓度', prop: 'nicConcentration', width: '80', edit: true,type:"number"},
        {label: 'NIC单位', prop: 'nicUnit', width: '80', edit: true,type:"number"},
        {label: '调香师', prop: 'perfumer', width: '80', edit: true},
        {label: '版本', prop: 'version', width: '80', edit: true},
      ],
      // 查看数据、隐藏数据
      detail: "查看",
      // 隐藏数据
      isTable: 0, //0 : 隐藏, 1: 显示
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
    console.log("路由内容2:"+JSON.stringify(this.$route.params.tasteId))
    if(this.$route.params.tasteId!=null){
      getTaste(this.$route.params.tasteId).then(response => {
        this.form = response.data;
        this.hxTasteDetailList = response.data.hxTasteDetailList;
      });
    }
    this.getList();
    this.reset();
  },
  mounted() {
    if (this.form.remark == null) {
      cache.session.remove("tasteList")
    }
  },
  methods: {
    /*tabble START*/
    createList(e){
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
      for (let i = 0; i < e; i++) {
        this.hxTasteDetailList.push(obj)
      }
    },
    click() {
      this.$emit("ok", this.message);
    },
    // 查看详情
    handleDetial(e) {
      //显示
      if (e === 1) {
        this.isTable = 0;
        this.detail = "查看";
      } else {
        this.isTable = 1;
        this.detail = "隐藏";
      }
    }
    ,
    formatSex(value) {
      if (value === '1') {
        return '否'
      }
      if (value === '0') {
        return '是'
      }
      return ''
    },
    formatUnit(value) {
      if (value === '1') {
        return 'mg/g'
      }
      if (value === '0') {
        return 'mg/ml'
      }
      return ''
    },
    formatMultiSex(values) {
      if (values) {
        return values.map(val => this.formatSex(val)).join(',')
      }
      return ''
    },
    editRowEvent(row) {
      this.isEdit = false
      const $table = this.$refs.xTable
      $table.setActiveRow(row)

    },
    saveRowEvent() {
      const $table = this.$refs.xTable
      $table.clearActived().then(() => {
        this.loading = true
        setTimeout(() => {
          this.loading = false
          VXETable.modal.message({content: '保存成功！', status: 'success'})
          console.log('table:',$table)
        }, 300)
      })
    },
    cancelRowEvent(row) {
      const $table = this.$refs.xTable
      $table.clearActived().then(() => {
        // 还原行数据
        $table.revertData(row)
      })
    },
    removeSelectEvent () {
      const $table = this.$refs.xTable
      //删除选中
      $table.removeCheckboxRow()
      //获取删除
      const selectRecords = $table.getCheckboxRecords()
      VXETable.modal.alert(selectRecords.length)
      //console.log("删除内容2,",JSON.stringify(selectRecords))
      //console.log("明细数据,",JSON.stringify(this.hxTasteDetailList))
      ///
      /*if (this.hxTasteDetailList.length == 0) {
        this.$modal.msgError("请先选择要删除的子数据");
      } else {
        const crmOrderOverseasChildList = this.crmOrderOverseasChildList;
        const checkedCrmOrderOverseasChild = this.checkedCrmOrderOverseasChild;
        this.crmOrderOverseasChildList = crmOrderOverseasChildList.filter(function (item) {
          return hxTasteDetailList.indexOf(item.index) == -1
        });
      }*/
      ////
    },
    insertEvent () {
      const $table = this.$refs.xTable
      const newRecord = {}
      const { row: newRow } =  $table.insert(newRecord)
      $table.setActiveRow(newRow)
      console.log(this.hxTasteDetailList.length)
      this.createList(1)
      console.log(this.hxTasteDetailList.length)
    },
    /*tabble END*/

    //双击单元格事件-改变整列数据
    doubleClick({row,column}) {
      if (column.property === 'tasteName') {
        this.hxTasteDetailList.map(item => {
          item.tasteName = row.tasteName
        })
      }
      if (column.property === 'tasteDetail') {
        this.hxTasteDetailList.map(item => {
          item.tasteDetail = row.tasteDetail
        })
      }
      if (column.property === 'isBasicTaste') {
        this.hxTasteDetailList.map(item => {
          item.isBasicTaste = row.isBasicTaste
        })
      }
      if (column.property === 'basicTasteName') {
        this.hxTasteDetailList.map(item => {
          item.basicTasteName = row.basicTasteName
        })
      }
      if (column.property === 'basicTasteImprovementIdeas') {
        this.hxTasteDetailList.map(item => {
          item.basicTasteImprovementIdeas = row.basicTasteImprovementIdeas
        })
      }
      if (column.property === 'capacity') {
        this.hxTasteDetailList.map(item => {
          item.capacity = row.capacity
        })
      }
      if (column.property === 'vg') {
        this.hxTasteDetailList.map(item => {
          item.vg = row.vg
        })
      }
      if (column.property === 'nicType') {
        this.hxTasteDetailList.map(item => {
          item.nicType = row.nicType
        })
      }
      if (column.property === 'nicConcentration') {
        this.hxTasteDetailList.map(item => {
          item.nicConcentration = row.nicConcentration
        })
      }
      if (column.property === 'nicUnit') {
        this.hxTasteDetailList.map(item => {
          item.nicUnit = row.nicUnit
        })
      }
      if (column.property === 'perfumer') {
        this.hxTasteDetailList.map(item => {
          item.perfumer = row.perfumer
        })
      }
      if (column.property === 'version') {
        this.hxTasteDetailList.map(item => {
          item.version = row.version
        })
      }
    },
    reduce(e,row,column) {
      console.log(e)
      console.log(row)
      console.log(column)
      let temp = e.split("/");
      let ss = this.form.remark.split("\n");// 在每个换行(/n)处进行分解。
      // 外层循环,生成tr
      if (this.hxTasteDetailList.length >= 1) {
        console.log("逻辑：有缓存", typeof this.hxTasteDetailList)
        for (let i = 0; i < ss.length; i++) {
          console.log(this.hxTasteDetailList[i]);
          if (temp[0] === 'tasteName') {
            this.hxTasteDetailList[i].tasteName = ss[i];
          }
          if (temp[0] === 'tasteDetail') {
            this.hxTasteDetailList[i].tasteDetail = ss[i];
          }
          if (temp[0] === 'isBasicTaste') {
            this.hxTasteDetailList[i].isBasicTaste = ss[i];
          }
          if (temp[0] === 'basicTasteName') {
            this.hxTasteDetailList[i].basicTasteName = ss[i];
          }
          if (temp[0] === 'basicTasteImprovementIdeas') {
            this.hxTasteDetailList[i].basicTasteImprovementIdeas = ss[i];
          }
          if (temp[0] === 'capacity') {
            this.hxTasteDetailList[i].capacity = ss[i];
          }
          if (temp[0] === 'vg') {
            this.hxTasteDetailList[i].vg = ss[i];
          }
          if (temp[0] === 'nicType') {
            this.hxTasteDetailList[i].nicType = ss[i];
          }
          if (temp[0] === 'nicConcentration') {
            this.hxTasteDetailList[i].nicConcentration = ss[i];
          }
          if (temp[0] === 'nicUnit') {
            this.hxTasteDetailList[i].nicUnit = ss[i];
          }
          if (temp[0] === 'perfumer') {
            this.hxTasteDetailList[i].perfumer = ss[i];
          }
          if (temp[0] === 'version') {
            this.hxTasteDetailList[i].version = ss[i];
          }
          if (temp[0] === 'remark') {
            this.hxTasteDetailList[i].remark = ss[i];
          }
        }
      } else {
        console.log("实际数组小于1")
        this.hxTasteDetailList.length = 0
        for (let i = 0; i < ss.length; i++) {
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
          if (temp[0] === 'tasteName') {
            obj.tasteName = ss[i];
          }
          if (temp[0] === 'tasteDetail') {
            obj.tasteDetail = ss[i];
          }
          if (temp[0] === 'isBasicTaste') {
            obj.isBasicTaste = ss[i];
          }
          if (temp[0] === 'basicTasteName') {
            obj.basicTasteName = ss[i];
          }
          if (temp[0] === 'basicTasteImprovementIdeas') {
            obj.basicTasteImprovementIdeas = ss[i];
          }
          if (temp[0] === 'capacity') {
            obj.capacity = ss[i];
          }
          if (temp[0] === 'vg') {
            obj.vg = ss[i];
          }
          if (temp[0] === 'nicType') {
            obj.nicType = "";
          }
          if (temp[0] === 'nicConcentration') {
            obj.nicConcentration = ss[i];
          }
          if (temp[0] === 'nicUnit') {
            obj.nicUnit = ss[i];
          }
          if (temp[0] === 'perfumer') {
            obj.perfumer = ss[i];
          }
          if (temp[0] === 'version') {
            obj.version = ss[i];
          }
          if (temp[0] === 'remark') {
            obj.remark = ss[i];
          }
          this.hxTasteDetailList.push(obj);
        }
      }
      console.log(this.hxTasteDetailList)
    },
// 失去焦点事件
    batchValue(e) {
      console.log("失去焦点:", JSON.stringify(e));
      this.hxTasteDetailList.length = 0
    }      // exports this.from.remark = JSON.stringify(e);

    ,

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
    // 重置明细
    cancelDeatil() {
      this.open = false;
      this.hxTasteDetailList = null;
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
    /** 重置所有按钮操作 */
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
      this.open = true;
      this.title = "添加口味申请单";
    }
    ,
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const tasteId = row.tasteId || this.ids
      getTaste(tasteId).then(response => {
        this.form = response.data;
        this.hxTasteDetailList = response.data.hxTasteDetailList;
        this.open = true;
        this.title = "修改口味申请单";
      });
    }
    ,
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          this.form.hxTasteDetailList = this.hxTasteDetailList;
          if (this.$route.params.tasteId!=null) {
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
