<template>
  <div class="app-container">
    <el-form :label-position="labelPosition" v-show="showSearch" ref="queryForm" :model="queryParams" size="small"
             :inline="true" label-width="68px">
      <el-form-item label="业务部门" prop="deptId">
        <el-input
          v-model="queryParams.deptId"
          placeholder="请输入业务部门"
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

    <div class="itemFrom">
      <!--    <el-dialog :title="title" :visible.sync="open" width="80%" append-to-body>-->
      <el-form
        ref="form"
        label-position="right"
        :model="form"
        :rules="rules"
        label-width="110px"
        size="mini"
        :validate-on-rule-change="true"
        :label-position="labelPosition"
      ><!--:show-message="true"  :inline-message="true"-->
        <!-- 显示企业微信审批编码  -->
        <el-row :gutter="24" v-if="this.$route.params.tasteId != null"><!--type="flex" justify="space-around"-->
          <el-col >
            <el-divider content-position="center">企业微信审批编码:{{form.spNo == null ? '未提交审批' : form.spNo}}</el-divider>
          </el-col>
        </el-row>
        <!--  添加业务  -->
        <el-row :gutter="24"><!--type="flex" justify="space-around"-->
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="业务姓名" prop="businessName">
              <el-input v-model="form.businessName" placeholder="请输入业务姓名"/>
            </el-form-item>
          </el-col>
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <!--TODO 绑定后端数据-->
            <el-form-item label="业务部门" prop="deptId">
              <el-select v-model="form.deptId" style="width: 100%" clearable placeholder="请选择">
                <el-option
                  v-for="item in deptId"
                  :key="item.value"
                  :label="item.label"
                  :value="item.value"
                />
              </el-select>
            </el-form-item>
          </el-col>
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="业务代码" prop="businessCode">
              <el-input v-model="form.businessCode" placeholder="请输入业务代码"/>
            </el-form-item>
          </el-col>
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="客户名称" prop="customersName">
              <el-input v-model="form.customersName" placeholder="请输入客户名称"/>
            </el-form-item>
          </el-col>
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="客户代码" prop="customersCode">
              <el-input v-model="form.customersCode" placeholder="请输入客户代码"/>
            </el-form-item>
          </el-col>
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="口味数量" prop="tasteNum">
              <el-input v-model="form.tasteNum" type="number" :min="1" placeholder="请输入口味数量"/>
            </el-form-item>
          </el-col>
          <!--          <el-col :xs="{span:24}"  :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="上次申请单号" prop="refereeNum">
              <el-input v-model="form.refereeNum" placeholder="请输入上次申请单号" />
            </el-form-item>
          </el-col>-->
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="第几次送样" prop="sendNum">
              <el-input v-model="form.sendNum" type="number" :min="1" placeholder="请输入第几次送样"/>
            </el-form-item>
          </el-col>
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="来访日期" prop="visitTime">
              <el-date-picker
                v-model="form.visitTime"
                style="width: 100%"
                clearable
                type="datetime"
                placeholder="请选择来访日期"
              />
            </el-form-item>
          </el-col>
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="发热丝种类" prop="heatingWireType">
              <el-select v-model="form.heatingWireType" style="width: 100%" placeholder="请选择发热丝种类">
                <el-option

                  v-for="dict in heatingWireType"
                  :key="dict.value"
                  :label="dict.label"
                  :value="dict.value"
                />
              </el-select>
            </el-form-item>
          </el-col>
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="口味专供" prop="isSupply"><!-- class="el-form-item el-form-item__content"-->
              <el-radio-group v-model="form.isSupply" style="width: 100%;">
                <el-radio v-model="radio" label="是">是</el-radio>
                <el-radio v-model="radio" label="否">否</el-radio>
              </el-radio-group>
            </el-form-item>
          </el-col>

          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="现场试油" prop="isTry"><!--class="el-form-item el-form-item__content" -->
              <el-radio-group v-model="form.isTry" style="width: 100%;">
                <el-radio v-model="radio" label="是">是</el-radio>
                <el-radio v-model="radio" label="否">否</el-radio>
              </el-radio-group>
            </el-form-item>
          </el-col>

          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="自带烟具" prop="isSmoking"><!--class="el-form-item el-form-item__content" -->
              <el-radio-group v-model="form.isSmoking" style="width: 100%;">
                <el-radio v-model="radio" label="是">是</el-radio>
                <el-radio v-model="radio" label="否">否</el-radio>
              </el-radio-group>
            </el-form-item>
          </el-col>
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="烟具类型" prop="smokingType"><!--class="el-form-item el-form-item__content"-->
              <el-radio-group v-model="form.smokingType" style="width: 100%;">
                <el-radio v-model="radio" label="一次性">一次性</el-radio>
                <el-radio v-model="radio" label="换弹式">换弹式</el-radio>
              </el-radio-group>
            </el-form-item>
          </el-col>
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item prop="isRecyclingSmoking" label="是否回收烟具"><!--class="el-form-item el-form-item__content" -->
              <el-radio-group v-model="form.isRecyclingSmoking" style="width: 100%;">
                <el-radio v-model="radio" label="是">是</el-radio>
                <el-radio v-model="radio" label="否">否</el-radio>
              </el-radio-group>
            </el-form-item>
          </el-col>
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="导油棉类型" prop="oilGuideCottonType">
              <el-select v-model="form.oilGuideCottonType" style="width: 100%" placeholder="请选择导油棉类型">
                <el-option
                  v-for="dict in oilGuideCottonType"
                  :key="dict.value"
                  :label="dict.label"
                  :value="dict.value"
                />
              </el-select>
            </el-form-item>
          </el-col>
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="发热丝阻值" prop="heatingWireResistance">
              <el-input v-model="form.heatingWireResistance" placeholder="请输入发热丝阻值"/>
            </el-form-item>
          </el-col>
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="烟油仓容量" prop="capacity">
              <el-input v-model="form.capacity" placeholder="请输入烟油仓容量"/>
            </el-form-item>
          </el-col>

          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="油环材质类型" prop="oilRingMaterial">
              <el-select v-model="form.oilRingMaterial" style="width: 100%" placeholder="请选择油环材质">
                <el-option
                  v-for="dict in oilRingMaterial"
                  :key="dict.value"
                  :label="dict.label"
                  :value="dict.value"
                />
              </el-select>
            </el-form-item>
          </el-col>

          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="甜度(1-10)" prop="sweetness">
              <el-input v-model="form.sweetness" type="number" :min="0" placeholder="请输入甜度"/>
            </el-form-item>
          </el-col>
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="凉度(1-10)" prop="coolness">
              <el-input v-model="form.coolness" type="number" :min="0" placeholder="请输入凉度"/>
            </el-form-item>
          </el-col>
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="粘稠度(1-10)" prop="viscosity">
              <el-input v-model="form.viscosity" type="number" :min="1" placeholder="请输入粘稠度"/>
            </el-form-item>
          </el-col>
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="期望完成时间" prop="expectedCompletionTime">
              <el-date-picker
                v-model="form.expectedCompletionTime"
                style="width: 100%"
                clearable
                type="datetime"
                placeholder="请选择期望完成时间"
              />
            </el-form-item>
          </el-col>

          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="样品数量" prop="samplesNum">
              <el-input v-model="form.samplesNum" type="number" :min="1" placeholder="请输入样品数量"/>
            </el-form-item>
          </el-col>
          <!--          <el-col :xs="{span:24}"  :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="VG" prop="vg">
              <el-input v-model="form.vg" placeholder="请输入VG" />
            </el-form-item>
          </el-col>-->

          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="样品需求日期" prop="sampleRequestTime">
              <el-date-picker
                v-model="form.sampleRequestTime"
                style="width: 100%"
                clearable
                type="datetime"
                placeholder="请选择样品需求日期"
              />
            </el-form-item>
          </el-col>
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="预计完成时间" prop="estimatedFinishTime">
              <el-date-picker
                v-model="form.estimatedFinishTime"
                style="width: 100%"
                clearable
                type="datetime"
                placeholder="请选择预计完成时间"
              />
            </el-form-item>
          </el-col>
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">

            <!--            修改回显 详情回显数据库选中内容 -->
            <el-form-item label="匹配市场" prop="matchMarket" show-overflow-tooltip v-show="this.isEdit === 2">
              <el-cascader
                :disabled="true"
                v-model="matchMarketTemp"
                style="width: 100%;"
                :options="addressJson"
                :show-all-levels="false"
                :props="{ multiple: true, checkStrictly: true }"
                placeholder="试试搜索：英国/可多选"
                filterable
                clearable
                @change="handleChangeT"
              />
              <!-- :collapse-tags="true" 折叠选中标签             -->
            </el-form-item>
            <el-form-item label="匹配市场" prop="matchMarket" v-show="this.isEdit === 1">
              <el-cascader
                v-model="matchMarketTemp"
                style="width: 100%;"
                :options="addressJson"
                :show-all-levels="false"
                :props="{ multiple: true }"
                :debounce="300"
                placeholder="试试搜索：中国/可多选"
                filterable
                clearable
                @change="handleChange"
              />
              <!-- :collapse-tags="true" 折叠选中标签  , checkStrictly: true  @change="handleChange"         -->
            </el-form-item>
          </el-col>

          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="邮寄信息" prop="mailingInformation">
              <el-input v-model="form.mailingInformation" type="textarea" placeholder="请输入内容"/>
            </el-form-item>
          </el-col>

          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="备注" prop="remark">
              <el-input
                v-model="form.remark"
                autosize
                type="textarea"
                placeholder="请输入内容"
              />
            </el-form-item>
          </el-col>
          <!--          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}" :offset="1">
                      <el-alert
                        title="快捷操作介绍"
                        type="success"
                        description="快捷键操作
                                    1. 在备注框中,输入数据,换行为一行数据,点击下方表头会有一键写入功能
                                    2. 当在备注框中不够用时,数据不一致会出现,将表清空的情况,建议添加好行数之后,在进行批量表头
                                    3. 点击当前单元格,对应的单元格列会自动复制当前数据填充到当前列的下方表格中"
                      />
                    </el-col>-->
        </el-row>
        <!--   业务明细     -->
        <el-divider content-position="center">口味申请单明细信息</el-divider>
        <el-row :gutter="24" class="mb8">
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-button type="primary" icon="el-icon-plus" size="mini" @click="insertEvent()" v-show="this.isEdit === 1">添 加 一 行</el-button>
          </el-col>
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            批量列填充:
            <el-input
              v-model="copyCollRemark"
              autosize
              type="textarea"
              placeholder="请输入内容"
              @blur="batchValue(copyCollRemark)"
            />
          </el-col>
          <!--          <el-col :span="1.5">
            <el-button type="danger" icon="el-icon-delete" size="mini" @click="removeSelectEvent()">删除选中</el-button>
          </el-col>-->
        </el-row>

        <br>
        <div class="tableDiv">
          <vxe-table
            ref="xTable"
            border
            resizable
            show-overflow
            :show-header-overflow="true"
            :show-header="true"
            :data="form.hxTasteDetailList"
            :edit-rules="validRules"
            :tooltip-config="{showAll: true, enterable: true, contentMethod: showTooltipMethod}"
            :edit-config="{trigger: 'click', mode: 'row'}"
            @cell-dblclick="doubleClick"
            @edit-actived="editActivedEvent"
          >
            <vxe-column type="seq" title="序号" width="50"/>
            <vxe-column field="tasteName" :edit-render="{}"  width="100"><!--show-header-overflow-->
              <template slot="header"><!--:title-help="{message: '自定义图标', icon: 'fa fa-bell'}"-->
                <span @dblclick="reduce('tasteName')">口味名称</span>
              </template>
              <template #edit="scope">
                <vxe-input v-model="scope.row.tasteName" type="text" placeholder="请输入"/>
              </template>
            </vxe-column>
            <vxe-column field="tasteDetail" :edit-render="{}" width="100">
              <template slot="header">
                <span @dblclick="reduce('tasteDetail')">口味描述</span>
              </template>
              <template #edit="scope">
                <vxe-input v-model="scope.row.tasteDetail" type="text" placeholder="请输入"/>
              </template>
            </vxe-column>

            <vxe-column field="isBasicTaste" title="有基础口味" :show-header-overflow="true" :edit-render="{}"
                        :title-help="{message: '该明细是选项,批量赋值请使用双击单元格操作!'}" width="120">
              <template #default="{ row }">
                <span>{{ formatIsBasicTaste(row.isBasicTaste) }}</span>
              </template>
              <template #edit="scope">
                <vxe-select v-model="scope.row.isBasicTaste" transfer>
                  <vxe-option v-for="item in sexList" :key="item.value" :value="item.value" :label="item.label"/>
                </vxe-select>
              </template>
            </vxe-column>
            <vxe-column field="basicTasteName" :edit-render="{}" width="150">
              <template slot="header">
                <span @dblclick="reduce('basicTasteName')">基础口味名称/编号</span>
              </template>
              <template #edit="scope">
                <vxe-input v-model="scope.row.basicTasteName" type="text" placeholder="请输入"/>
              </template>
            </vxe-column>
            <vxe-column field="basicTasteImprovementIdeas" :edit-render="{}" width="150">
              <template slot="header">
                <span @dblclick="reduce('basicTasteImprovementIdeas')">基础口味改善建议</span>
              </template>
              <template #edit="scope">
                <vxe-input v-model="scope.row.basicTasteImprovementIdeas" type="text" placeholder="请输入"/>
              </template>
            </vxe-column>
            <vxe-column field="capacity" :edit-render="{}" width="80">
              <template slot="header">
                <span @dblclick="reduce('capacity')">容量</span>
              </template>
              <template #edit="scope">
                <vxe-input v-model="scope.row.capacity" type="text" placeholder="请输入"/>
              </template>
            </vxe-column>
            <vxe-column field="vg" :edit-render="{}" width="80">
              <template slot="header">
                <span @dblclick="reduce('vg')">VG</span>
              </template>
              <template #edit="scope">
                <vxe-input v-model="scope.row.vg" type="text" placeholder="请输入"/>
              </template>
            </vxe-column>
            <vxe-column field="nicType" :edit-render="{}" :title-help="{message: '编辑勾选', icon: 'fa fa-bell'}"
                        width="100">
              <template slot="header">
                <span @dblclick="reduce('nicType')">NIC类别</span>
              </template>
              <template #edit="scope">
                <vxe-input v-model="scope.row.nicType" type="text" placeholder="请输入"/>
              </template>
            </vxe-column>
            <vxe-column field="nicConcentration" :edit-render="{}" width="100">
              <template slot="header">
                <span @dblclick="reduce('nicConcentration')">NIC浓度</span>
              </template>
              <template #edit="scope">
                <vxe-input v-model="scope.row.nicConcentration" type="text" placeholder="请输入"/>
              </template>
            </vxe-column>
            <vxe-column field="nicUnit" title="NIC单位" :edit-render="{}"
                        :title-help="{message: '该明细是选项,批量赋值请使用双击单元格操作!'}" width="110">
              <template #default="{ row }">
                <span>{{ formatUnit(row.nicUnit) }}</span>
              </template>
              <template #edit="scope">
                <vxe-select v-model="scope.row.nicUnit" transfer>
                  <vxe-option v-for="item in nicUnitList" :key="item.value" :value="item.value" :label="item.label"/>
                </vxe-select>
              </template>
            </vxe-column>
            <vxe-column field="perfumer" :edit-render="{}" width="100">
              <template slot="header">
                <span @dblclick="reduce('perfumer')">调香师</span>
              </template>
              <template #edit="scope">
                <vxe-input v-model="scope.row.perfumer" type="text" placeholder="请输入"/>
              </template>
            </vxe-column>
            <vxe-column field="version" :edit-render="{}" width="80">
              <template slot="header">
                <span @dblclick="reduce('version')">版本</span>
              </template>
              <template #edit="scope">
                <vxe-input v-model="scope.row.version" type="text" placeholder="请输入"/>
              </template>
            </vxe-column>
            <vxe-column title="操作">
              <template #default="{ row }">
                <vxe-button type="text" status="primary" @click="removeSelectEvent(row)">删除</vxe-button>
              </template>
            </vxe-column>
            <template #empty>
              <span style="color: red;">
                <!-- <img src="https://pic2.zhimg.com/50/v2-f7031359103859e1ed38559715ef5f3f_hd.gif">-->
                <p>没有更多数据了,请添加数据！</p>
              </span>
            </template>
          </vxe-table>
        </div>
      </el-form>
    </div>
    <div slot="footer" class="dialog-footer">
      <br>
      <div v-show="this.isEdit === 1">
        <el-button type="primary" @click="submitForm">保 存</el-button>
        <el-button type="danger" @click="cancel">重置所有</el-button>
      </div>
      <div v-show="this.isEdit === 2">
        <el-button type="primary" size="small" @click="edit">修改</el-button>
        <el-button type="danger" size="small" @click="copyList">复制一份</el-button>
        <el-button type="primary" size="small" @click="printList">打印</el-button>
        <el-button type="primary" size="small" @click="copyListDetail">导出明细</el-button>
        <el-button type="danger" size="small" @click="auditPush">推送审核</el-button>
        <el-button type="primary" size="small" @click="auditList">查看审批详情</el-button>
        <el-button type="danger" size="small" @click="auditUpdateList">更新审批结果</el-button>
      </div>

      <!--      <el-button type="primary">主要按钮</el-button>
            <el-button type="success">成功按钮</el-button>
            <el-button type="info">信息按钮</el-button>
            <el-button type="warning">警告按钮</el-button>
            <el-button type="danger">危险按钮</el-button>-->
      <!--      <div>测试:{{ name }}</div>-->
      <!--      <el-button @click="cancelDeatil">重 置 明 细</el-button>-->
    </div>

    <div class="tableDiv" v-show="false">
      <vxe-table
        border
        ref="xTable"
        height="300"
        :print-config="{}"
        :export-config="{}"
        :data="form.hxTasteDetailList">
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
        <template #empty>
              <span style="color: red;">
                <!-- <img src="https://pic2.zhimg.com/50/v2-f7031359103859e1ed38559715ef5f3f_hd.gif">-->
                <p>没有更多数据了,请添加数据！</p>
              </span>
        </template>
      </vxe-table>

    </div>


    <!-- 审批详情 -->
    <div v-if="open">
    <el-dialog title="审批详情" :visible.sync="open" style="width:auto;margin-left: 10vw;margin-right: 10vw" >
      <div>
<!--        <el-card>-->
          <p>审批单名称:  {{auitDetailList.sp_name}}</p>
          <p>录入人:  {{form.createBy}}</p>
          <p>业务姓名:  {{form.businessName}}</p>
          <p>客户名称:  {{form.customersName}}</p>
          <p>客户代码:  {{form.customersCode}}</p>
          <p>业务部门:  {{form.deptId}}</p>
          <p>审批编号:  {{auitDetailList.sp_no}}</p>
          <p>提交时间:  {{parseTime(auitDetailList.apply_time)}}</p>
          <p>审批状态:  <el-tag>{{spStatus(auitDetailList.sp_status)}}</el-tag></p>
<!--          <p>单据编号:{{this.auitDetailList.apply_data.contents[0].value.text}}</p>
          <p>客户姓名:{{this.auitDetailList.apply_data.contents[4].value.text}}</p>-->
          <div style="height: 300px;">
            <el-divider/>
            <h4>审批流程</h4>
              <ul>
                <b>审批步骤状态</b>
                <div v-for="(item,index) in auitDetailListObj.sp_record" :key="index">
                  <li>{{index+1}}、 审批流程: <el-tag> {{spStatus(item.sp_status)}} </el-tag></li>
                  <ul><li>审批人:{{item.details[0].approver.userid}}</li></ul>
                </div>
              </ul>
            <ul>
              <b>抄送人</b>
              <div v-for="(item,index) in auitDetailListObj.notifyer" :key="index">
              <li>{{item.userid}}</li>
              </div>
            </ul>
          </div>
<!--        </el-card>-->
      </div>

      <div slot="footer" class="dialog-footer">
        <el-button @click="open = false">关 闭</el-button>
        <el-button @click="auitBack">撤销审批</el-button>
      </div>
    </el-dialog>
    </div>


  </div>
</template>

<script>
import {listTaste, getTaste, delTaste, addTaste, updateTaste, getUserDetail, commitPush, auitDetail, updateAuitDetail} from "@/api/system/taste";
import addressJson from '@/utils/addressJson'
import stateList from '@/utils/stateList'
import spStatus from '@/utils/wx/sp_status'
import spStatusChild from '@/utils/wx/sp_status_child'
import axios from "axios";
import {getToken} from "@/utils/auth";
import {blobValidate} from "@/utils/ruoyi";
import iFrame from "@/components/iFrame";

export default {
  name: 'Taste',
  components: { iFrame },
  // components: {vtable},
  // dicts: ['hx_common_is', 'hx_common_type'],
  data() {
    const nameValid = ({cellValue}) => {
      // 模拟服务端校验
      return new Promise((resolve, reject) => {
        setTimeout(() => {
          if (cellValue && (cellValue.length < 3 || cellValue.length > 50)) {
            reject(new Error('名称长度在 3 到 50 个字符之间'))
          } else {
            resolve()
          }
        }, 100)
      })
    }
    return {
      /*声明字典*/
      spStatus,
      spStatusChild,
      /*审批详情*/
      auitDetailList:[],
      auitDetailListObj:[],
      /*地区详情回显*/
      matchMarketTemp:[],
      /*详情按钮控制，修改控制暂时不提供*/
      isEdit: null,
      /*状态字典*/
      stateList,
      // 表单对齐方式
      labelPosition: 'right',
      // 批量列处理
      copyCollRemark: '测试数据1\n测试数据2\n测试数据3',
      // 点击每行的数据
      listArr: [],
      // 监听每一行
      rowArr: [],
      // 批量列监听
      batchValueRemark: 2,
      // 非多个禁用
      // multiple: true,
      // 地区级联
      selectedOptions: [],
      addressJson,
      // 字典
      // 油环材质
      oilRingMaterial: [{
        value: 'PC',
        label: 'PC'
      }, {
        value: 'PCTG',
        label: 'PCTG'
      }, {
        value: '其他',
        label: '其他'
      }],
      // 导油棉类型
      oilGuideCottonType: [{
        value: '有机棉',
        label: '有机棉'
      }, {
        value: '亚麻棉',
        label: '亚麻棉'
      }, {
        value: '木浆棉',
        label: '木浆棉'
      }, {
        value: '海藻绵',
        label: '海藻绵'
      }, {
        value: '无纺布',
        label: '无纺布'
      }, {
        value: '其他',
        label: '其他'
      }],
      // 发热丝种类
      heatingWireType: [{
        value: '网芯',
        label: '网芯'
      }, {
        value: '横发',
        label: '横发'
      }, {
        value: '竖发',
        label: '竖发'
      }, {
        value: '棉芯',
        label: '棉芯'
      }, {
        value: '陶瓷',
        label: '陶瓷'
      }],
      deptId: [{
        value: '国内业务一组',
        label: '国内业务一组'
      }, {
        value: '国内业务二组',
        label: '国内业务二组'
      }, {
        value: '外贸业务部',
        label: '外贸业务部'
      }, {
        value: '销售支持部',
        label: '销售支持部'
      }, {
        value: '产品支持部',
        label: '产品支持部'
      }],
      // 通用
      radio: '是',
      // 自带烟具
      radio2: '是',
      // 烟具类型
      radio1: '是',
      sexList: [
        {label: '请选择', value: '请选择'},
        {label: '否', value: '1'},
        {label: '是', value: '0'}
      ],
      nicUnitList: [
        {label: '请选择', value: '请选择'},
        {label: 'mg/g', value: '1'},
        {label: 'mg/ml', value: '0'}
      ],
      tableColumn: [
        {label: '口味名称', prop: 'tasteName', width: '140', edit: true, type: 'text'},
        {label: '口味描述', prop: 'tasteDetail', width: '140', edit: true, type: 'text'},
        {label: '有基础口味', prop: 'isBasicTaste', width: '80', edit: true, type: 'text'},
        {label: '基础口味名称/编号', prop: 'basicTasteName', width: '80', edit: true},
        {label: '基础口味改善建议', prop: 'basicTasteImprovementIdeas', width: '80', edit: true},
        {label: '容量', prop: 'capacity', width: '80', edit: true},
        {label: 'VG', prop: 'vg', width: '80', edit: true, type: 'number'},
        {label: 'NIC类别', prop: 'nicType', width: '80', edit: true},
        {label: 'NIC浓度', prop: 'nicConcentration', width: '80', edit: true, type: 'number'},
        {label: 'NIC单位', prop: 'nicUnit', width: '80', edit: true, type: 'number'},
        {label: '调香师', prop: 'perfumer', width: '80', edit: true},
        {label: '版本', prop: 'version', width: '80', edit: true}
      ],
      // { label: '版本', prop: 'version', width: '80', edit: true }
      // { field: 'nickname', title: '昵称', span: 8, itemRender: { name: '$input', props: { placeholder: '请输入昵称' } } },
      // 查看数据、隐藏数据
      detail: '查看',
      // 隐藏数据
      isTable: 0, // 0 : 隐藏, 1: 显示
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
      // tasteList: [],
      tasteList: [],
      // 口味申请单明细表格数据
      hxTasteDetailList: [],
      // 弹出层标题
      title: '',
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
        sweetness: null,
        coolness: null,
        deleted: null,
        status: null,
        viscosity: null,
        expectedCompletionTime: null,
        sampleRequestTime: null,
        estimatedFinishTime: null,
        matchMarket: null,
        samplesNum: null,
        mailingInformation: null
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
        deptId: [
          {required: true, message: '不能为空', trigger: 'change'}
        ],
        businessName: [
          {required: true, message: '不能为空', trigger: 'blur'},
          {min: 3, max: 50, message: '需3个字符以上', trigger: 'blur'}
        ],
        businessCode: [
          {required: true, message: '不能为空', trigger: 'blur'}
        ],
        customersName: [
          {required: true, message: '不能为空', trigger: 'blur'}
        ],
        customersCode: [
          {required: true, message: '不能为空', trigger: 'blur'}
        ],
        tasteNum: [
          {required: true, message: '不能为空', trigger: 'blur'}
        ],
        /* refereeNum: [
          { required: true, message: '不能为空', trigger: 'blur' }
        ], */
        sendNum: [
          {required: true, message: '不能为空', trigger: 'blur'}
        ],
        isSupply: [
          {required: true, message: '不能为空', trigger: 'blur'}
        ],
        isTry: [
          {required: true, message: '不能为空', trigger: 'blur'}
        ],
        visitTime: [
          {required: true, message: '不能为空', trigger: 'blur'}
        ],
        isSmoking: [
          {required: true, message: '不能为空', trigger: 'blur'}
        ],
        smokingType: [
          {required: true, message: '不能为空', trigger: 'change'}
        ],
        heatingWireType: [
          {required: true, message: '不能为空', trigger: 'change'}
        ],
        heatingWireResistance: [
          {required: true, message: '不能为空', trigger: 'blur'}
        ],
        capacity: [
          {required: true, message: '不能为空', trigger: 'blur'}
        ],
        oilGuideCottonType: [
          {required: true, message: '不能为空', trigger: 'change'}
        ],
        isRecyclingSmoking: [
          {required: true, message: '不能为空', trigger: 'blur'}
        ],
        oilRingMaterial: [
          {required: true, message: '不能为空', trigger: 'change'}
        ],
        viscosity: [
          {required: true, message: '不能为空', trigger: 'blur'}
        ],
        expectedCompletionTime: [
          {required: true, message: '不能为空', trigger: 'blur'}
        ],
        estimatedFinishTime: [
          {required: true, message: '不能为空', trigger: 'blur'}
        ],
        matchMarket: [
          {required: true, message: '不能为空', trigger: 'change'}
        ],
        mailingInformation: [
          {required: true, message: '不能为空', trigger: 'blur'}
        ]
        /* remark: [
          { required: true, message: '不能为空', trigger: 'blur' }
        ] */
      },
      // 明细校验
      validRules: {
        tasteName: [
          {required: true, message: '不能为空'},
          {validator: nameValid}
        ],
        tasteDetail: [
          {required: true, message: '不能为空'}
        ],
        isBasicTaste: [
          {required: true, message: '不能为空'}
        ],
        basicTasteName: [
          {required: true, message: '不能为空'}
        ],
        basicTasteImprovementIdeas: [
          {required: true, message: '不能为空'}
        ],
        capacity: [
          {required: true, message: '不能为空'}
        ],
        vg: [
          {required: true, message: '不能为空'},
          {pattern: '^[0-9]{0,3}$', message: '格式不正确'}
        ],
        nicType: [
          {required: true, message: '不能为空'}
        ],
        nicConcentration: [
          {required: true, message: '不能为空'}
        ],
        nicUnit: [
          {required: true, message: '不能为空'}
        ],
        perfumer: [
          {required: true, message: '不能为空'}
        ],
        version: [
          {required: true, message: '不能为空'}
        ]
      },
      // 提示
      showTooltipMethod({type, column, row, items, _columnIndex}) {
        const {property} = column
        // 重写默认的提示内容
        if (property === 'role' || property === 'date') {
          if (type === 'header') {
            return column.title ? '自定义标题提示内容：' + column.title : ''
          } else if (type === 'footer') {
            return items[_columnIndex] ? '自定义表尾提示内容，\n并且自定义换行：\n' + items[_columnIndex] : ''
          }
          return row[property] ? '自定义提示内容：' + row[property] : ''
        } else if (property === 'rate') {
          // 返回空字符串，控制单元格不显示提示内容
          return ''
        }
        // 其余的单元格使用默认行为
        return null
      }
    }
  },
  created() {
    this.reset()
    if (this.$route.params.tasteId != null) {
      getTaste(this.$route.params.tasteId).then(response => {
        this.form = response.data
        //console.log("form:",JSON.stringify(this.form))
        this.hxTasteDetailList = response.data.hxTasteDetailList
        this.matchMarketTemp = eval(JSON.stringify(JSON.parse(this.form.matchMarket)))
        //var str=eval(this.matchMarketTemp);
        //alert(str[0][0]);
        //response.data.matchMarket.splice(",")
        //this.form.matchMarket = response.data.matchMarket
      })
      this.isEdit = 2;
    }else{
      this.isEdit = 1;
    }

  },
  mounted() {
    /* if (this.form.remark == null) {
      cache.session.remove('tasteList')
    } */
  },
  /*watch: {
    // 级联选择数量限制
    'form.matchMarketTemp'() {
      if (this.form.matchMarketTemp.length > 5) {
        this.$message({
          type: 'warning',
          message: '最多可选择五个',
          showClose: true,
        })
        this.form.matchMarketTemp.splice(-1, 1);
        this.refs.cascader.refs.cascader.refs.cascader.refs.panel.clearCheckedNodes();
      }
    }
  },*/
  methods: {
    /*修改*/
    edit(){
        this.isEdit = 1
        console.log("a"+this.isEdit)
    },
    /*复制一份该申请单*/
    copyList() {
      console.log("进入复制")
        let tasteCopyId = this.form.tasteId
        delete this.form.tasteId
        delete this.form.follower
        delete this.form.spNo //删除绑定的审批单号
        for (let i = 0; i < this.form.hxTasteDetailList.length; i++) {
          delete this.form.hxTasteDetailList[i].id
          delete this.form.hxTasteDetailList[i].tasteId
        }
        this.form.tasteCopyId = tasteCopyId
        //直接调用保存方法
        addTaste(this.form).then(response => {
          this.$modal.msgSuccess('复制成功,请到列表页中查看')

        })
        //跳转到,列表中查看新复制的
        setTimeout(() => {
          this.$router.push({path: '/kouwei/tasteList/'});
        }, 1000)


    },
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
    /*复制该申请单明细*/
    copyListDetail() {
      // 打开遮罩层
      this.$modal.loading("正在导出数据，请稍后...");
      this.$refs.xTable.openExport({ types: ['csv'] })
      setTimeout(() => {
        this.$refs.xTable.exportData({
          filename: '自定义文件名',
          type: 'csv',
          isHeader: true,
          isFooter: true,
          data: this.form.hxTasteDetailList
        })
        // 关闭遮罩层
        this.$modal.closeLoading();
      }, 100)
    },
    /*推送该申请单在企业微信中审批*/
    auditPush() {
      this.$modal.confirm('确认推送审批吗?').then(function() {
      }).then(() => {
        // 校验是否绑定企业微信
        getUserDetail().then(response => {
          if(response.data.wxUserId != null){
            console.log("推送审批")
            commitPush(this.form.tasteId).then((res) => {
              console.log("请求结果:",JSON.stringify(res))
              this.$modal.msgSuccess(res.msg);
            })
            // 刷新当前页签
            //setTimeout(()=>{this.$tab.refreshPage();},500)
            if(this.form.spNo == null){
              setTimeout(()=>{
                location.reload()
                this.$router.go(0)
              },500)
            }

          }else{
            this.$modal.msgError("未绑定企业微信,请联系管理员申请绑定");
          }
        });
      }).catch(() => {});
    },
    /*查看该申请单审批结果*/
    auditList() {
      this.$modal.loading("正在加载微信数据，请稍候...");
      getTaste(this.form.tasteId).then(response => {
        if(response.data.spNo != null){
            /*setTimeout(()=>{
              this.open = true
              this.$modal.closeLoading()
            },800)*/
          auitDetail(response.data.spNo).then((res)=>{
            console.log(JSON.stringify(res))
            this.auitDetailList = res.data.info
            this.auitDetailListObj = res.data.info
            setTimeout(()=>{
              this.open = true
            },800)
            this.$modal.closeLoading()
          })
        }else{
          this.$modal.msgError("该单还没有申请审批,不能查看审批详情");
          this.$modal.closeLoading()
        }
      })
    },
    /*更新该申请单审批结果*/
    auditUpdateList() {
      this.$modal.confirm('确认更新审批吗?').then(function() {
      }).then(() => {
        getTaste(this.form.tasteId).then(response => {
          if(response.data.spNo != null){
            updateAuitDetail(response.data.spNo).then((res)=>{
              console.log(JSON.stringify(res))
              this.$modal.msgSuccess(res.msg);
            })
          }else{
            this.$modal.msgError("该单还没有申请审批,不能进行同步更新审批审批结果");
          }
        })
      }).catch(() => {});
    },
    /*撤销审批*/
    auitBack() {
      this.$modal.confirm('确认撤销审批吗?').then(function() {
      }).then(() => {
        getTaste(this.form.tasteId).then(response => {
          this.form = response.data
        if(this.form.spNo != null){
          this.$modal.msgError("没有该接口,请微信联系审批人,申请驳回");



          /*//发送鉴权请求
          let url = "https://open.weixin.qq.com/connect/oauth2/authorize?appid=wwa3240966154cab12&redirect_uri=http://myweb.com:8081/open/wx/callback/code&response_type=code&scope=snsapi_base&state=STATE&agentid=AGENTID#wechat_redirect"
          //let url = "http://myweb.com:8081/open/wx/callback/oauth2"
          axios({
            method: 'get',
            url: url,
            //headers: { 'Authorization': 'Bearer ' + getToken() }
          }).then( (res) => {
            console.log(JSON.stringify(res))
            if(res.data.length >= 866){
              this.open = false;
              console.log(JSON.stringify(res.request))
              this.$notify({
                title: '微信错误提示',
                dangerouslyUseHTMLString: true,
                message: res.data,
                duration: 0
              });
            }

          }).catch(err=>{
            console.log(err);
          });*/
        }else{
          this.$modal.msgError("该单还没有申请审批,不能进行撤销审批");
        }
        })
      }).catch(() => {});
    },
    /**/
    editActivedEvent({rowIndex, row}) {
      this.nameDisabled = rowIndex === 1
      this.sexDisabled = row.sex === '1'
      this.dateDisabled = !!row.date
    },
    // 地区选中详情展示
    handleChangeT(value) {
      console.log("详情:"+JSON.stringify(value))
      console.log("临时回显数据1:"+this.matchMarketTemp)
      // console.log("form数据:"+JSON.stringify(JSON.parse(this.form.matchMarket)))
      // this.matchMarketTemp = this.matchMarketTemp.push(value)
      // console.log("临时回显数据2:"+this.matchMarketTemp)
      //this.form.matchMarket = JSON.stringify(value)
    },
    // 地区选中添加
    handleChange(value) {
      console.log(JSON.stringify(value.length))
      if(value.length>3){
        this.$modal.alertError("警告:多选地区只会保留前三个");
        for (let i = 0; i < value.length; i++) {
          // 保留前3个数据
          value.splice(3)
        }
      }
      this.form.matchMarket = JSON.stringify(value)
    },
    /* 渲染默认添加一行 */
    defultDeatil() {
      this.$nextTick(() => {
        const obj = {}
        obj.tasteName = ''
        obj.tasteDetail = ''
        obj.isBasicTaste = '否'
        obj.basicTasteName = ''
        obj.basicTasteImprovementIdeas = ''
        obj.capacity = ''
        obj.vg = ''
        obj.nicType = ''
        obj.nicConcentration = ''
        obj.nicUnit = 'mg/ml'
        obj.perfumer = ''
        obj.version = ''
        obj.remark = ''
        this.hxTasteDetailList.push(obj)
      })
    },
    /* tabble START*/
    createList(e) {
      const obj = {}
      obj.tasteName = ''
      obj.tasteDetail = ''
      obj.isBasicTaste = ''
      obj.basicTasteName = ''
      obj.basicTasteImprovementIdeas = ''
      obj.capacity = ''
      obj.vg = ''
      obj.nicType = ''
      obj.nicConcentration = ''
      obj.nicUnit = ''
      obj.perfumer = ''
      obj.version = ''
      obj.remark = ''
      for (let i = 0; i < e; i++) {
        this.hxTasteDetailList.push(obj)
      }
    },
    click() {
      this.$emit('ok', this.message)
    },
    // 查看详情
    handleDetial(e) {
      // 显示
      if (e === 1) {
        this.isTable = 0
        this.detail = '查看'
      } else {
        this.isTable = 1
        this.detail = '隐藏'
      }
    },
    formatIsBasicTaste(value) {
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
    // 单元格删除
    async removeSelectEvent(row) {
      if (this.hxTasteDetailList.length === 0) {
        this.$message({
          showClose: true,
          message: '请先选择要删除的数据',
          type: 'error'
        })
      } else {
        this.$confirm('此操作将会删除表格数据, 是否继续?', '提示', {
          confirmButtonText: '确定',
          cancelButtonText: '取消',
          type: 'warning'
        }).then(() => {
          this.$refs.xTable.remove(row)
          const a = []
          a.push(row)
          const b = this.hxTasteDetailList
          const arr = [...b].filter(x => [...a].every(y => y._X_ROW_KEY !== x._X_ROW_KEY))
          this.hxTasteDetailList.length = 0
          for (let i = 0; i < arr.length; i++) {
            this.hxTasteDetailList.push(arr[i])
          }
          this.$message({
            type: 'success',
            message: '操作成功!'
          })
        }).catch(() => {
          this.$message({
            type: 'info',
            message: '已取消'
          })
        })
      }
    },
    insertEvent() {
      const $table = this.$refs.xTable
      const newRecord = {}
      const {row: newRow} = $table.insert(newRecord)
      $table.setActiveRow(newRow)
      this.createList(1)
    },
    /* tabble END*/

    // 双击单元格事件-改变整列数据
    doubleClick({row, column}) {
      // 先清空之前的数据
      this.rowArr.length = 0
      // 1.获取行,将所有行存入一个数组中
      for (let i = 0; i < this.hxTasteDetailList.length; i++) {
        this.rowArr.push(this.hxTasteDetailList[i]._X_ROW_KEY)
      }
      // console.log('rowARR:' + JSON.stringify(this.rowArr))
      // 2.获取单元格的值,也存入到一个数组中,我怎么知道你点击了这个,获取焦点
      // console.log('列:' + JSON.stringify(column.property))
      // 3.循环遍历复制给单元格
      var list = this.hxTasteDetailList.slice(this.rowArr.indexOf(row._X_ROW_KEY))
      this.listArr.push(JSON.stringify(list[0]))
      // console.log('listArr', this.listArr)
      var nums1 = Number(this.hxTasteDetailList.length)
      var nums2 = Number(list.length)
      // console.log('nums1', nums1)
      // console.log('nums2', nums2)
      this.$confirm('此操作将会填充当前单元格下方的表格数据, 是否继续?', '提示', {
        confirmButtonText: '确定',
        cancelButtonText: '取消',
        type: 'warning'
      }).then(() => {
        if (column.field === 'tasteName') {
          for (let i = nums1 - nums2; i < this.hxTasteDetailList.length; i++) {
            this.hxTasteDetailList[i].tasteName = row.tasteName
          }
        }
        if (column.property === 'tasteDetail') {
          for (let i = nums1 - nums2; i < this.hxTasteDetailList.length; i++) {
            this.hxTasteDetailList[i].tasteDetail = row.tasteDetail
          }
        }
        if (column.property === 'isBasicTaste') {
          for (let i = nums1 - nums2; i < this.hxTasteDetailList.length; i++) {
            this.hxTasteDetailList[i].isBasicTaste = row.isBasicTaste
          }
        }
        if (column.property === 'basicTasteName') {
          for (let i = nums1 - nums2; i < this.hxTasteDetailList.length; i++) {
            this.hxTasteDetailList[i].basicTasteName = row.basicTasteName
          }
        }
        if (column.property === 'basicTasteImprovementIdeas') {
          for (let i = nums1 - nums2; i < this.hxTasteDetailList.length; i++) {
            this.hxTasteDetailList[i].basicTasteImprovementIdeas = row.basicTasteImprovementIdeas
          }
        }
        if (column.property === 'capacity') {
          for (let i = nums1 - nums2; i < this.hxTasteDetailList.length; i++) {
            this.hxTasteDetailList[i].capacity = row.capacity
          }
        }
        if (column.property === 'vg') {
          for (let i = nums1 - nums2; i < this.hxTasteDetailList.length; i++) {
            this.hxTasteDetailList[i].vg = row.vg
          }
        }
        if (column.property === 'nicType') {
          for (let i = nums1 - nums2; i < this.hxTasteDetailList.length; i++) {
            this.hxTasteDetailList[i].nicType = row.nicType
          }
        }
        if (column.property === 'nicConcentration') {
          for (let i = nums1 - nums2; i < this.hxTasteDetailList.length; i++) {
            this.hxTasteDetailList[i].nicConcentration = row.nicConcentration
          }
        }
        if (column.property === 'nicUnit') {
          for (let i = nums1 - nums2; i < this.hxTasteDetailList.length; i++) {
            this.hxTasteDetailList[i].nicUnit = row.nicUnit
          }
        }
        if (column.property === 'perfumer') {
          for (let i = nums1 - nums2; i < this.hxTasteDetailList.length; i++) {
            this.hxTasteDetailList[i].perfumer = row.perfumer
          }
        }
        if (column.property === 'version') {
          for (let i = nums1 - nums2; i < this.hxTasteDetailList.length; i++) {
            this.hxTasteDetailList[i].version = row.version
          }
        }
        this.$message({
          type: 'success',
          message: '操作成功!'
        })
      }).catch(() => {
        this.$message({
          type: 'info',
          message: '已取消'
        })
      })
      /* this.$nextTick(() => { }) */
    },
    // 表头批量添加
    reduce(e, row, column) {
      // console.log(e)
      // console.log(row)
      // console.log(column)
      const temp = e.split('/')
      const ss = this.copyCollRemark.split('\n')// 在每个换行(/n)处进行分解。
      // 外层循环,生成tr
      if (this.hxTasteDetailList.length >= 2) {
        this.copyColl(temp, ss)
        if (this.hxTasteDetailList.length !== this.batchValueRemark) this.copyCollReset(temp, ss)
      } else {
        this.$message({
          type: 'error',
          message: '添加不少于两行!'
        })
      }

      console.log(this.hxTasteDetailList)
    },
    // 具体操作表头复制变化
    copyCollReset(temp, ss) {
      this.$confirm('检测到您批量写入值与之前值不一样,当前表格数据会被清空, 是否继续?', '警告', {
        confirmButtonText: '确定',
        cancelButtonText: '取消',
        type: 'warning'
      }).then(() => {
        // 清空
        this.hxTasteDetailList.length = 0
        this.createList(this.batchValueRemark)
        this.hxTasteDetailList.length = 0
        for (let i = 0; i < ss.length; i++) {
          const obj = {}
          obj.tasteName = ''
          obj.tasteDetail = ''
          obj.isBasicTaste = ''
          obj.basicTasteName = ''
          obj.basicTasteImprovementIdeas = ''
          obj.capacity = ''
          obj.vg = ''
          obj.nicType = ''
          obj.nicConcentration = ''
          obj.nicUnit = ''
          obj.perfumer = ''
          obj.version = ''
          obj.remark = ''
          if (temp[0] === 'tasteName') {
            obj.tasteName = ss[i]
          }
          if (temp[0] === 'tasteDetail') {
            obj.tasteDetail = ss[i]
          }
          if (temp[0] === 'isBasicTaste') {
            obj.isBasicTaste = ss[i]
          }
          if (temp[0] === 'basicTasteName') {
            obj.basicTasteName = ss[i]
          }
          if (temp[0] === 'basicTasteImprovementIdeas') {
            obj.basicTasteImprovementIdeas = ss[i]
          }
          if (temp[0] === 'capacity') {
            obj.capacity = ss[i]
          }
          if (temp[0] === 'vg') {
            obj.vg = ss[i]
          }
          if (temp[0] === 'nicType') {
            obj.nicType = ''
          }
          if (temp[0] === 'nicConcentration') {
            obj.nicConcentration = ss[i]
          }
          if (temp[0] === 'nicUnit') {
            obj.nicUnit = ss[i]
          }
          if (temp[0] === 'perfumer') {
            obj.perfumer = ss[i]
          }
          if (temp[0] === 'version') {
            obj.version = ss[i]
          }
          if (temp[0] === 'remark') {
            obj.remark = ss[i]
          }
          this.hxTasteDetailList.push(obj)
        }
        this.$message({
          type: 'success',
          message: '操作成功!'
        })
      }).catch(() => {
        this.$message({
          type: 'info',
          message: '已取消'
        })
      })
    },
    // 具体操作表头复制
    copyColl(temp, ss) {
      this.$confirm('此操作将会填充当前列的表格数据, 是否继续?', '提示', {
        confirmButtonText: '确定',
        cancelButtonText: '取消',
        type: 'warning'
      }).then(() => {
        this.$nextTick(() => {
          this.$message({
            type: 'success',
            message: '操作成功!'
          })
          console.log('逻辑：有缓存', typeof this.hxTasteDetailList)
          for (let i = 0; i < ss.length; i++) {
            console.log(this.hxTasteDetailList[i])
            if (temp[0] === 'tasteName') {
              this.hxTasteDetailList[i].tasteName = ss[i]
            }
            if (temp[0] === 'tasteDetail') {
              this.hxTasteDetailList[i].tasteDetail = ss[i]
            }
            if (temp[0] === 'isBasicTaste') {
              this.hxTasteDetailList[i].isBasicTaste = ss[i]
              this.$message({
                type: 'error',
                message: '该明细是选项,批量赋值请使用双击单元格操作!'
              })
            }
            if (temp[0] === 'basicTasteName') {
              this.hxTasteDetailList[i].basicTasteName = ss[i]
            }
            if (temp[0] === 'basicTasteImprovementIdeas') {
              this.hxTasteDetailList[i].basicTasteImprovementIdeas = ss[i]
            }
            if (temp[0] === 'capacity') {
              this.hxTasteDetailList[i].capacity = ss[i]
            }
            if (temp[0] === 'vg') {
              this.hxTasteDetailList[i].vg = ss[i]
            }
            if (temp[0] === 'nicType') {
              this.hxTasteDetailList[i].nicType = ss[i]
            }
            if (temp[0] === 'nicConcentration') {
              this.hxTasteDetailList[i].nicConcentration = ss[i]
            }
            if (temp[0] === 'nicUnit') {
              this.hxTasteDetailList[i].nicUnit = ss[i]
              this.$message({
                type: 'error',
                message: '该明细是选项,批量赋值请使用双击单元格操作!'
              })
            }
            if (temp[0] === 'perfumer') {
              this.hxTasteDetailList[i].perfumer = ss[i]
            }
            if (temp[0] === 'version') {
              this.hxTasteDetailList[i].version = ss[i]
            }
            if (temp[0] === 'remark') {
              this.hxTasteDetailList[i].remark = ss[i]
            }
          }
        })
      }).catch(() => {
        this.$message({
          type: 'info',
          message: '已取消'
        })
      })
    },
    // 失去焦点事件
    batchValue(e) {
      console.log('失去焦点:', JSON.stringify(e))
      const ss = this.copyCollRemark.split('\n')
      this.batchValueRemark = ss.length
      // this.hxTasteDetailList.length = 0
    }, // exports this.from.remark = JSON.stringify(e);

    /** 查询口味申请单列表 */
    getList() {
      this.loading = true
      listTaste().then(response => {
        // this.tasteList = response;
        console.log(JSON.stringify(response))
        // this.total = response.total;
        this.loading = false
      })

      /* listTaste(this.queryParams).then(response => {
        this.tasteList = response.rows;
        this.total = response.total;
        this.loading = false;
      }); */
    },
    // 取消按钮
    cancel() {
      this.$confirm('此操作将重置所有表单数据, 是否继续?', '提示', {
        confirmButtonText: '确定',
        cancelButtonText: '取消',
        type: 'warning'
      }).then(() => {
        this.open = false
        this.reset()
        this.$message({
          type: 'success',
          message: '重置成功!'
        })
      }).catch(() => {
        this.$message({
          type: 'info',
          message: '已取消删除'
        })
      })
    },
    // 重置明细
    cancelDeatil() {
      this.open = false
      this.hxTasteDetailList = null
    },
    // 表单重置
    reset() {
      this.form = {
        tasteId: null,
        deptId: null,
        tasteCopyId: null,
        spNo: null,
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
        sweetness: null,
        coolness: null,
        deleted: null,
        status: null,
        viscosity: null,
        expectedCompletionTime: null,
        sampleRequestTime: null,
        estimatedFinishTime: null,
        matchMarket: null,
        // matchMarketTemp: null,
        samplesNum: null,
        mailingInformation: null,
        createBy: null,
        createTime: null,
        updateBy: null,
        updateTime: null,
        remark: '',
        follower: null
      }
      this.hxTasteDetailList = []
      this.auitDetailList = []
      this.auitDetailListObj = []
      // this.resetForm("form");  //TODO
      this.isTable = false
    },
    /** 搜索按钮操作 */
    handleQuery() {
      this.queryParams.pageNum = 1
      this.getList()
    },
    /** 重置所有按钮操作 */
    resetQuery() {
      this.resetForm('queryForm')
      this.handleQuery()
    },
    // 多选框选中数据
    handleSelectionChange(selection) {
      this.ids = selection.map(item => item.tasteId)
      this.single = selection.length !== 1
      this.multiple = !selection.length
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset()
      this.open = true
      this.title = '添加口味申请单'
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset()
      const tasteId = row.tasteId || this.ids
      getTaste(tasteId).then(response => {
        this.form = response.data
        this.hxTasteDetailList = response.data.hxTasteDetailList
        this.open = true
        this.title = '修改口味申请单'
      })
    },
    /** 提交按钮 */
    submitForm() {
      console.log("内容:" + typeof this.form.matchMarket)
      this.$refs['form'].validate(valid => {
        if (valid) {
          this.form.matchMarket = JSON.stringify(this.matchMarketTemp )
          this.form.hxTasteDetailList = this.hxTasteDetailList
          this.open = false
          if (this.$route.params.tasteId != null) {
            updateTaste(this.form).then(response => {
              this.$modal.msgSuccess('修改成功')
              this.open = false
              //this.getList()
            })
          } else {
            addTaste(this.form).then(response => {
              this.$modal.msgSuccess('新增成功')
              this.open = false
              //this.getList()
            })
          }
        }
      })
    },
    /** 删除按钮操作 */
    handleDelete(row) {
      const tasteIds = row.tasteId || this.ids
      this.$modal.confirm('是否确认删除口味申请单编号为"' + tasteIds + '"的数据项？').then(function () {
        return delTaste(tasteIds)
      }).then(() => {
        this.getList()
        this.$modal.msgSuccess('删除成功')
      }).catch(() => {
      })
    },
    /** 口味申请单明细序号 */
    rowHxTasteDetailIndex({row, rowIndex}) {
      row.index = rowIndex + 1
    },
    /** 口味申请单明细添加按钮操作 */
    handleAddHxTasteDetail() {
      const obj = {}
      obj.tasteName = ''
      obj.tasteDetail = ''
      obj.isBasicTaste = ''
      obj.basicTasteName = ''
      obj.basicTasteImprovementIdeas = ''
      obj.capacity = ''
      obj.vg = ''
      obj.nicType = ''
      obj.nicConcentration = ''
      obj.nicUnit = ''
      obj.perfumer = ''
      obj.version = ''
      obj.remark = ''
      this.hxTasteDetailList.push(obj)
    },
    /** 口味申请单明细删除按钮操作 */
    handleDeleteHxTasteDetail() {
      if (this.checkedHxTasteDetail.length === 0) {
        this.$modal.msgError('请先选择要删除的口味申请单明细数据')
      } else {
        const hxTasteDetailList = this.hxTasteDetailList
        const checkedHxTasteDetail = this.checkedHxTasteDetail
        this.hxTasteDetailList = hxTasteDetailList.filter(function (item) {
          return checkedHxTasteDetail.indexOf(item.index) === -1
        })
      }
    },
    /** 复选框选中数据 */
    handleHxTasteDetailSelectionChange(selection) {
      this.checkedHxTasteDetail = selection.map(item => item.index)
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('system/taste/export', {
        ...this.queryParams
      }, `taste_${new Date().getTime()}.xlsx`)
    }
  }
}

</script>
<style scoped>
.el-form-item--mini.el-form-item {
  margin-bottom: 0px;
}

/*解决单选框不换行的问题*/
.el-form-item__content {
  padding-bottom: 1px;
}

/*自定义提示*/
.el-form >>> .el-form-item__error {
  color: red;
  margin-top: -20px;
  float: right;
  margin-left: 60%;
}

/*多选地区tag显示问题*/
/*.el-form >>> .el-cascader__tags{
  margin-left: -5px;
}*/
/*多选地区tag显示问题*/
/*.el-form >>> .el-cascader .el-input .el-input__inner{
  height: 28px;
}*/


</style>
