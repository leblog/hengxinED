<template>
  <div class="app-container">
    <el-form :label-position="labelPosition" v-show="showSearch" ref="queryForm" :model="queryParams" size="small"
             :inline="true" label-width="68px">
      <el-form-item label="业务部门" prop="deptId">
        <el-input
          v-model="queryParams.deptId"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="业务姓名" prop="businessName">
        <el-input
          v-model="queryParams.businessName"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="业务代码" prop="businessCode">
        <el-input
          v-model="queryParams.businessCode"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="客户名称" prop="customersName">
        <el-input
          v-model="queryParams.customersName"
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
        <el-row :gutter="24" v-if="isEdit==='A'"><!--type="flex" justify="space-around"-->
          <el-col>
            <el-divider content-position="center">企业微信审批编码:{{ form.spNo == null ? '未提交审批' : form.spNo }}</el-divider>
          </el-col>
        </el-row>
        <!--  添加业务  -->
        <el-row :gutter="24"><!--type="flex" justify="space-around"-->
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="业务姓名" prop="businessName">
              <el-input v-model="form.businessName" />
            </el-form-item>
          </el-col>
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <!--TODO 绑定后端数据-->
            <el-form-item label="业务部门" prop="deptId">
              <el-select v-model="form.deptId" style="width: 100%" clearable >
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
              <el-input v-model="form.businessCode" />
            </el-form-item>
          </el-col>
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="客户名称" prop="customersName">
              <el-input v-model="form.customersName" />
            </el-form-item>
          </el-col>
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="客户代码" prop="customersCode">
              <el-input v-model="form.customersCode" />
            </el-form-item>
          </el-col>
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="口味数量" prop="tasteNum">
              <el-input v-model="form.tasteNum" type="number" :min="1" />
            </el-form-item>
          </el-col>
          <!--          <el-col :xs="{span:24}"  :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="上次申请单号" prop="refereeNum">
              <el-input v-model="form.refereeNum" placeholder="请输入上次申请单号" />
            </el-form-item>
          </el-col>-->
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="第几次送样" prop="sendNum">
              <el-input v-model="form.sendNum" type="number" :min="1" />
            </el-form-item>
          </el-col>
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="来访日期" prop="visitTime">
              <el-date-picker
                v-model="form.visitTime"
                style="width: 100%"
                clearable
                type="datetime"
              />
            </el-form-item>
          </el-col>
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="发热丝种类" prop="heatingWireType">
              <el-select v-model="form.heatingWireType" style="width: 100%" >
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
              <el-select v-model="form.oilGuideCottonType" style="width: 100%" >
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
              <el-input v-model="form.heatingWireResistance" />
            </el-form-item>
          </el-col>
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="烟油仓容量" prop="capacity">
              <el-input v-model="form.capacity" />
            </el-form-item>
          </el-col>

          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="油环材质类型" prop="oilRingMaterial">
              <el-select v-model="form.oilRingMaterial" style="width: 100%" >
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
              <el-input v-model="form.sweetness" type="number" :min="0" />
            </el-form-item>
          </el-col>
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="凉度(1-10)" prop="coolness">
              <el-input v-model="form.coolness" type="number" :min="0" />
            </el-form-item>
          </el-col>
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="粘稠度(1-10)" prop="viscosity">
              <el-input v-model="form.viscosity" type="number" :min="1" />
            </el-form-item>
          </el-col>
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="期望完成时间" prop="expectedCompletionTime">
              <el-date-picker
                v-model="form.expectedCompletionTime"
                style="width: 100%"
                clearable
                type="datetime"

              />
            </el-form-item>
          </el-col>

          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="样品数量" prop="samplesNum">
              <el-input v-model="form.samplesNum" type="number" :min="1" />
            </el-form-item>
          </el-col>
          <!--          <el-col :xs="{span:24}"  :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="VG" prop="vg">
              <el-input v-model="form.vg" />
            </el-form-item>
          </el-col>-->

          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="样品需求日期" prop="sampleRequestTime">
              <el-date-picker
                v-model="form.sampleRequestTime"
                style="width: 100%"
                clearable
                type="datetime"
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
              />
            </el-form-item>
          </el-col>
          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">

            <!--            修改回显 详情回显数据库选中内容 -->
            <el-form-item label="匹配市场" prop="matchMarket" show-overflow-tooltip v-if="isEdit ==='A'">
              <el-cascader
                :disabled="true"
                v-model="matchMarketTemp"
                style="width: 100%;"
                :options="addressJson"
                :show-all-levels="false"
                :props="{ multiple: true, checkStrictly: true }"
                placeholder="试试搜索：英国/可多选"
                filterable
                clearable="clearable"
                @change="handleChangeT"
              />
              <!-- :collapse-tags="true" 折叠选中标签             -->
            </el-form-item>
            <el-form-item label="匹配市场" prop="matchMarket" v-if="isEdit ==='B'">
              <el-cascader
                v-model="matchMarketTemp"
                style="width: 100%;"
                :options="addressJson"
                :show-all-levels="false"
                :props="{ multiple: true }"
                :debounce="300"
                placeholder="试试搜索：中国/可多选"
                filterable
                clearable="clearable"
                @change="handleChange"
              />
              <!-- :collapse-tags="true" 折叠选中标签  , checkStrictly: true  @change="handleChange"         -->
            </el-form-item>
          </el-col>

          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="邮寄信息" prop="mailingInformation">
              <el-input v-model="form.mailingInformation" type="textarea" />
            </el-form-item>
          </el-col>

          <el-col :xs="{span:24}" :sm="{span:8}" :md="{span:8}" :lg="{span:8}">
            <el-form-item label="备注" prop="remark">
              <el-input
                v-model="form.remark"
                autosize
                type="textarea"
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
        <div class="tableDiv" v-if="isEdit ==='A'"><!--详情-->
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
            <vxe-column field="tasteName" :edit-render="{}" title="口味名称" width="100"><!--show-header-overflow-->
              <template slot="header"><!--:title-help="{message: '自定义图标', icon: 'fa fa-bell'}"-->
                <span @dblclick="reduce('tasteName')">口味名称</span>
              </template>
              <template #edit="scope">
                <vxe-input v-model="scope.row.tasteName"  type="text" placeholder="请输入"/>
              </template>
            </vxe-column>
            <vxe-column field="tasteDetail" :edit-render="{}" title="口味描述" width="100">
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
            <vxe-column field="basicTasteName" :edit-render="{}" title="基础口味名称/编号" width="150">
              <template slot="header">
                <span @dblclick="reduce('basicTasteName')">基础口味名称/编号</span>
              </template>
              <template #edit="scope">
                <vxe-input v-model="scope.row.basicTasteName" type="text" placeholder="请输入"/>
              </template>
            </vxe-column>
            <vxe-column field="basicTasteImprovementIdeas" title="基础口味改善建议" :edit-render="{}" width="150">
              <template slot="header">
                <span @dblclick="reduce('basicTasteImprovementIdeas')">基础口味改善建议</span>
              </template>
              <template #edit="scope">
                <vxe-input v-model="scope.row.basicTasteImprovementIdeas" type="text" placeholder="请输入"/>
              </template>
            </vxe-column>
            <vxe-column field="capacity" :edit-render="{}" title="容量" width="80">
              <template slot="header">
                <span @dblclick="reduce('capacity')">容量</span>
              </template>
              <template #edit="scope">
                <vxe-input v-model="scope.row.capacity" type="text" placeholder="请输入"/>
              </template>
            </vxe-column>
            <vxe-column field="vg" :edit-render="{}" title="VG" width="80">
              <template slot="header">
                <span @dblclick="reduce('vg')">VG</span>
              </template>
              <template #edit="scope">
                <vxe-input v-model="scope.row.vg" type="text" placeholder="请输入"/>
              </template>
            </vxe-column>
            <vxe-column field="nicType" :edit-render="{}"  title="NIC类别" :title-help="{message: '编辑勾选', icon: 'fa fa-bell'}"
                        width="100">
              <template slot="header">
                <span @dblclick="reduce('nicType')">NIC类别</span>
              </template>
              <template #edit="scope">
                <vxe-input v-model="scope.row.nicType" type="text" placeholder="请输入"/>
              </template>
            </vxe-column>
            <vxe-column field="nicConcentration" title="NIC浓度" :edit-render="{}" width="100">
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
            <vxe-column field="perfumer" :edit-render="{}" title="调香师" width="100">
              <template slot="header">
                <span @dblclick="reduce('perfumer')">调香师</span>
              </template>
              <template #edit="scope">
                <vxe-input v-model="scope.row.perfumer" type="text" placeholder="请输入"/>
              </template>
            </vxe-column>
            <vxe-column field="version" :edit-render="{}" title="版本" width="80">
              <template slot="header">
                <span @dblclick="reduce('version')">版本</span>
              </template>
              <template #edit="scope">
                <vxe-input v-model="scope.row.version" type="text" placeholder="请输入"/>
              </template>
            </vxe-column>
<!--            <vxe-column title="操作">
              <template #default="{ row }">
                <vxe-button type="text" status="primary" @click="removeSelectEvent(row)">删除</vxe-button>
              </template>
            </vxe-column>-->
            <template #empty>
              <span style="color: red;">
                <!-- <img src="https://pic2.zhimg.com/50/v2-f7031359103859e1ed38559715ef5f3f_hd.gif">-->
                <p>没有更多数据了,请添加数据！</p>
              </span>
            </template>
          </vxe-table>
        </div>

        <div class="tableDiv" v-if="isEdit ==='B'"> <!--添加-->
          <vxe-table
            ref="xTable"
            border
            resizable
            show-overflow
            :show-header-overflow="true"
            :show-header="true"
            :data="hxTasteDetailList"
            :edit-rules="validRules"
            :tooltip-config="{showAll: true, enterable: true, contentMethod: showTooltipMethod}"
            :edit-config="{trigger: 'click', mode: 'row'}"
            @cell-dblclick="doubleClick"
            @edit-actived="editActivedEvent"
          >
            <vxe-column type="seq" title="序号" width="50"/>
            <vxe-column field="tasteName" :edit-render="{}" title="口味名称" width="100"><!--show-header-overflow-->
              <template slot="header"><!--:title-help="{message: '自定义图标', icon: 'fa fa-bell'}"-->
                <span @dblclick="reduce('tasteName')">口味名称</span>
              </template>
              <template #edit="scope">
                <vxe-input v-model="scope.row.tasteName"  type="text" placeholder="请输入"/>
              </template>
            </vxe-column>
            <vxe-column field="tasteDetail" :edit-render="{}" title="口味描述" width="100">
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
            <vxe-column field="basicTasteName" :edit-render="{}" title="基础口味名称/编号" width="150">
              <template slot="header">
                <span @dblclick="reduce('basicTasteName')">基础口味名称/编号</span>
              </template>
              <template #edit="scope">
                <vxe-input v-model="scope.row.basicTasteName" type="text" placeholder="请输入"/>
              </template>
            </vxe-column>
            <vxe-column field="basicTasteImprovementIdeas" title="基础口味改善建议" :edit-render="{}" width="150">
              <template slot="header">
                <span @dblclick="reduce('basicTasteImprovementIdeas')">基础口味改善建议</span>
              </template>
              <template #edit="scope">
                <vxe-input v-model="scope.row.basicTasteImprovementIdeas" type="text" placeholder="请输入"/>
              </template>
            </vxe-column>
            <vxe-column field="capacity" :edit-render="{}" title="容量" width="80">
              <template slot="header">
                <span @dblclick="reduce('capacity')">容量</span>
              </template>
              <template #edit="scope">
                <vxe-input v-model="scope.row.capacity" type="text" placeholder="请输入"/>
              </template>
            </vxe-column>
            <vxe-column field="vg" :edit-render="{}" title="VG" width="80">
              <template slot="header">
                <span @dblclick="reduce('vg')">VG</span>
              </template>
              <template #edit="scope">
                <vxe-input v-model="scope.row.vg" type="text" placeholder="请输入"/>
              </template>
            </vxe-column>
            <vxe-column field="nicType" :edit-render="{}"  title="NIC类别" :title-help="{message: '编辑勾选', icon: 'fa fa-bell'}"
                        width="100">
              <template slot="header">
                <span @dblclick="reduce('nicType')">NIC类别</span>
              </template>
              <template #edit="scope">
                <vxe-input v-model="scope.row.nicType" type="text" placeholder="请输入"/>
              </template>
            </vxe-column>
            <vxe-column field="nicConcentration" title="NIC浓度" :edit-render="{}" width="100">
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
            <vxe-column field="perfumer" :edit-render="{}" title="调香师" width="100">
              <template slot="header">
                <span @dblclick="reduce('perfumer')">调香师</span>
              </template>
              <template #edit="scope">
                <vxe-input v-model="scope.row.perfumer" type="text" placeholder="请输入"/>
              </template>
            </vxe-column>
            <vxe-column field="version" :edit-render="{}" title="版本" width="80">
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
      <br>

    <div>
      <div v-if="isEdit ==='B'">
        <el-row :gutter="24" class="mb8">
          <el-col :xs="{span:24}" :sm="{span:12}" :md="{span:12}" :lg="{span:12}">
            <el-button type="primary" icon="el-icon-check" size="mini" @click="submitForm">保 存</el-button>
            <el-button type="danger" icon="el-icon-delete-solid" size="mini" @click="cancel">重置所有</el-button>
            <el-button type="primary" icon="el-icon-plus" size="mini" @click="insertEvent()" >
              添 加 一 行
            </el-button>
          </el-col>
          <el-col :xs="{span:24}" :sm="{span:12}" :md="{span:12}" :lg="{span:12}">
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
      </div>
      <div v-if="isEdit ==='A'">
        <el-button type="primary" size="small" @click="edit">修改</el-button>
        <el-button type="danger" size="small" @click="copyList">复制一份</el-button>
        <el-button type="primary" size="small" @click="printList">打印</el-button>
        <el-button type="primary" size="small" @click="copyListDetail">导出明细</el-button>
<!--        <el-button type="danger" size="small" @click="auditPush">推送审核</el-button> &lt;!&ndash;auditPush&ndash;&gt;
        <el-button type="primary" size="small" @click="auditList">查看审批详情</el-button>-->
        <el-dropdown v-show="processNoStatus"
          style="margin: 5px 10px 5px 10px;"
          size="small"
          split-button
          type="primary"
          @command="(command) => handleCommand(command)">   <!--v-if="this.form.spNo==null"-->
          <!-- v-hasPermi="['monitor:job:changestate', 'monitor:job:query']"-->
          <span class="el-dropdown-link">
            <i class="el-icon-d-arrow-right el-icon--right"></i>选择调香审核
          </span>
          <el-dropdown-menu slot="dropdown">
            <el-dropdown-item command="1" icon="el-icon-delete">调香申请-国内业务部《国内业务一组、国内业务二组、销售支持》</el-dropdown-item>
            <el-dropdown-item command="2" icon="el-icon-folder-delete">调香申请-外贸业务部</el-dropdown-item>
            <el-dropdown-item command="3" icon="el-icon-printer">调香申请-产品支持部</el-dropdown-item>
            <el-dropdown-item command="4" icon="el-icon-user">调香申请-测试</el-dropdown-item>
            <el-dropdown-item command="5" icon="el-icon-user">调香申请-测试2</el-dropdown-item>
          </el-dropdown-menu>
        </el-dropdown>
        <el-button style="margin: 5px 10px 5px 10px;" type="primary" size="small" @click="auditDeatil()">查看审批详情</el-button>
        <el-button type="danger" size="small" @click="auditUpdateList">更新审批结果</el-button>
      </div>
    </div>



  </div>
</template>
<script>
import {
  listTaste,
  getTaste,
  delTaste,
  addTaste,
  updateTaste,
  getUserDetail,
  commitPush,
  auitDetail,
  updateAuitDetail,
  getAgentTicket,
  updateTasteProcessNo
} from "@/api/system/taste";
import addressJson from '@/utils/addressJson'
import stateList from '@/utils/stateList'
import spStatus from '@/utils/wx/sp_status'
import spStatusChild from '@/utils/wx/sp_status_child'
import iFrame from "@/components/iFrame";

export default {
  name: 'Taste',
  components: {iFrame},
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
      /*审核按钮button*/
      processNoStatus: false,
      /*企业微信字典*/
      oaType: '10001', //	操作类型，目前支持：10001-发起审批；10002-查看审批详情。
      /*声明字典*/
      spStatus,
      spStatusChild,
      /*审批详情*/
      auitDetailList: [],
      auitDetailListObj: [],
      /*地区详情回显*/
      matchMarketTemp: [],
      /*详情按钮控制，修改控制暂时不提供*/
      isEdit: 'B',  // 详情页进入  //A: 详情 ，B：修改
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
    if (window.location.pathname !== '/kouwei/taste') {
      console.log("!=/kouwei/taste")
      this.isEdit = 'A'
      this.wxConfig();
      getTaste(this.$route.params.tasteId).then(response => {
        this.form = response.data
        //console.log("form:",JSON.stringify(this.form))
        this.hxTasteDetailList = response.data.hxTasteDetailList
        this.matchMarketTemp = eval(JSON.stringify(JSON.parse(this.form.matchMarket)))
        //var str=eval(this.matchMarketTemp);
        //alert(str[0][0]);
        //response.data.matchMarket.splice(",")
        //this.form.matchMarket = response.data.matchMarket

        console.log("进入状态前",response.data.processNo)
        if(response.data.processNo === null){
          console.log("进入状态中",response.data.processNo)
          setTimeout(()=>{
            this.$nextTick(()=>{ this.processNoStatus = true;})
          })
        }
        console.log("审核按钮状态",this.processNoStatus)
      })

    }
    console.log("this.isEdit"+this.isEdit)

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
    /*重置所有中的地区临时回显未清除*/
    clearable(){

    },
    /*微信配置  wxConfig (state)*/
    async wxConfig () {
      try {
        let obj = {}
        obj.id = this.$route.params.tasteId
        obj.url = window.location.href
        let { data } = await getAgentTicket(obj);
        let {  signature, } = data;
       console.log("获得密码:",signature)
        wx.agentConfig({
          beta: true, // 必须这么写，否则wx.invoke调用形式的jsapi会有问题
          debug: true,
          corpid: 'ww0530511650e0c6c8', // 必填，企业微信的corpid，必须与当前登录的企业一致  /state.corpId
          agentid: '1000042', // 必填，企业微信的应用id （e.g. 1000247）  //state.agentId
          timestamp: '1414587457', // 必填，生成签名的时间戳
          nonceStr: '1234', // 必填，生成签名的随机串
          signature, // 必填，签名，见附录-JS-SDK使用权限签名算法
          jsApiList: [
            "thirdPartyOpenPage",
            "oaType",
            "templateId",
            "thirdNo",
            "extData"
          ], //必填
          success: (res) => {
            console.log("agentId成功",res)
            // 回调
            // alert("agentId成功:");
            //state.agentConfigStatus = true;
          },
          fail: (res) => {
            console.log("agent config 失败: ", res);
            alert("企业微信调用SDK agent config 失败")
            //alert("agentId失败:" + JSON.stringify(res));
            if (res.errMsg.indexOf("function not exist") > -1) {
              alert("版本过低请升级");
            }
          },
        });
      } catch (error) {
        console.log(error);
      }
    },
    /*修改*/
    edit() {
      this.edit = false
      let self = this
      setTimeout(() => {
        self.$nextTick(()=>{
          self.isEdit = 'B'
          // this.$router.push({path:"/kouwei/taste?id="+this.$route.params.tatseId+`&edit=edit`})
          console.log("a:" + typeof self.isEdit + `内容` +self.isEdit)
        })
      }, 500)


    },
    /*复制一份该申请单*/
    copyList() {
      console.log("进入复制")
      let tasteCopyId = this.form.tasteId
      delete this.form.tasteId
      delete this.form.follower
      delete this.form.spNo //删除绑定的审批单号
      delete this.form.processNo //删除绑定的审批流程号
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
      this.$router.push({path:"/print?detail="+this.form.tasteId+`&print=true`})
    },
    /*复制该申请单明细*/
    copyListDetail() {
      // 打开遮罩层
      this.$modal.loading("正在导出数据，请稍后...");
      this.$refs.xTable.openExport({types: ['csv']})
      setTimeout(() => {
        this.$refs.xTable.exportData({
          filename: `明细_`+this.$route.params.tasteId+ `_`+new Date().getTime(),
          type: 'csv',
          isHeader: true,
          isFooter: true,
          data: this.form.hxTasteDetailList
        })
        // 关闭遮罩层
        this.$modal.closeLoading();
      }, 100)
    },
    /*审批详情*/
    auditDeatil(){
      this.oaType = "10002"
      this.handleCommand("5")
    },
    /*推送该申请单在企业微信中审批*/
    auditPush(e,k) {
      // 调用sdk
      //this.wxConfig();
      // 完整路由
      console.log("接收1", JSON.stringify(e))
      console.log("接收2", JSON.stringify(k))
      console.log("路由:",window.location.origin+`/print?detail=`+this.form.tasteId)
      let self = this
      // 输出接口的回调信息
      // 开始绑定更新单号  绑定然后更新 审批流程字典
      let obj = {}
      obj.id = self.$route.params.tasteId
      obj.processNo = k
      console.log(obj)
      if(this.form.processNo === null){
        setTimeout(()=>{
          this.$nextTick(()=>{
            updateTasteProcessNo(obj).then(res=>{
              console.log("绑定成功",JSON.stringify(res))
            })
          })
        },500)
      }

      // 校验是否绑定企业微信
      getUserDetail().then(response => {
        //if (response.data.wxUserId != null) {
        console.log("推送审批")
        // 自建应用审批
        wx.invoke('thirdPartyOpenPage', {
          "oaType": this.oaType,// String
          "templateId": e,// String //测试模板id a8f97896837d07d2ea691e71b0a60fbd_696238615
          "thirdNo": this.form.tasteId,// String  后端请求绑定的模板id
          "extData": {
            'fieldList': [
              {
                'title': '单据编号',
                'type': 'text',
                'value': this.form.spNo,
              }, {
                'title': '录入人',
                'type': 'text',
                'value': this.form.createBy,
              }, {
                'title': '业务姓名',
                'type': 'text',
                'value': this.form.businessName,
              }, {
                'title': '客户名称',
                'type': 'text',
                'value': this.form.customersName,
              }, {
                'title': '客户代码',
                'type': 'text',
                'value': this.form.customersCode,
              }, {
                'title': '业务部门',
                'type': 'text',
                'value': this.form.deptId,
              }, {
                'title': '查看详情',
                'type': 'link',		// link类型，用于在审批详情页展示第三方订单跳转地址
                'value': window.location.origin+`/print?detail=`+this.form.tasteId,
                // 获取用户的code  // window.location.href
                //https://open.weixin.qq.com/connect/oauth2/authorize?appid=ww0530511650e0c6c8&redirect_uri=&response_type=code&scope=snsapi_base&state=#wechat_redirect
                //https://open.weixin.qq.com/connect/oauth2/authorize?appid=ww0530511650e0c6c8&redirect_uri=`+window.location.origin+`?detail=`+this.form.tasteId+`&response_type=code&scope=snsapi_base&state=#wechat_redirect
              }, {
                'title': '打印详情',
                'type': 'link',		// link类型，用于在审批详情页展示第三方订单跳转地址
                'value': window.location.origin+`/print?detail=`+this.form.tasteId+`&print=true`,
              }],
          }//https://open.weixin.qq.com/connect/oauth2/authorize?appid=ww0530511650e0c6c8&redirect_uri=http://rds.cnhstar.com:44346?detail=1564875584438435840&response_type=code&scope=snsapi_base&state=
        },
          function(res) {
            console.log("提交成功1:"+res);
          }
        )
       /* wx.ready(function(){
          // 输出接口的回调信息
          console.log("提交成功:"+res);

          // config信息验证后会执行ready方法，所有接口调用都必须在config接口获得结果之后，config是一个客户端的异步操作，所以如果需要在页面加载时就调用相关接口，则须把相关接口放在ready函数中调用来确保正确执行。对于用户触发时才调用的接口，则可以直接调用，不需要放在ready函数中。
        });
        wx.error(function(res){
          console.log("提交失败")
          // config信息验证失败会执行error函数，如签名过期导致验证失败，具体错误信息可以打开config的debug模式查看，也可以在返回的res参数中查看，对于SPA可以在这里更新签名。
        });*/


        // 自带小程序
        /*commitPush(this.form.tasteId).then((res) => {
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
        }*/

        /*} else {
          this.$modal.msgError("未绑定企业微信,请联系管理员申请绑定");
        }*/
      });
    },
    // 更多操作触发
    handleCommand(command) {
      switch (command) {
        case "1":
          this.auditPush("2d32c445657ff697cb4cfb5b867b5828_1994972778","1");
          break;
        case "2":
          this.auditPush("8eb4f293ded18a9c4dcddac4b6bfa9da_1834079943","2");
          break;
        case "3":
          this.auditPush("e048b4d01dd16cbe00435f93392b1f12_1235408232","3");
          break;
        case "4":
          this.auditPush("820d993ca5cdb19fa5d995442f612bf3_362617181","4");
          break;
        case "5":
          this.auditPush("d842ce390ae39ecfbe4435f87c8ae31e_1558827472","5");
          break;
        default:
          break;
      }
    },
    /*查看该申请单审批结果*/
    auditList() {
      this.$modal.loading("正在加载微信数据，请稍候...");
      getTaste(this.form.tasteId).then(response => {
        if (response.data.spNo != null) {
          /*setTimeout(()=>{
            this.open = true
            this.$modal.closeLoading()
          },800)*/
          auitDetail(response.data.spNo).then((res) => {
            console.log(JSON.stringify(res))
            this.auitDetailList = res.data.info
            this.auitDetailListObj = res.data.info
            setTimeout(() => {
              this.open = true
            }, 800)
            this.$modal.closeLoading()
          })
        } else {
          this.$modal.msgError("该单还没有申请审批,不能查看审批详情");
          this.$modal.closeLoading()
        }
      })
    },
    /*更新该申请单审批结果*/
    auditUpdateList() {
      this.$modal.confirm('确认更新审批吗?').then(function () {
      }).then(() => {
        getTaste(this.form.tasteId).then(response => {
          if (response.data.spNo != null) {
            updateAuitDetail(this.form.tasteId).then((res) => {
              console.log(JSON.stringify(res))
              this.$modal.msgSuccess(res.msg);
            })
          } else {
            this.$modal.msgError("该单还没有申请审批,不能进行同步更新审批审批结果");
          }
        })
      }).catch(() => {
      });
    },
    /*撤销审批*/
    auitBack() {
      this.$modal.confirm('确认撤销审批吗?').then(function () {
      }).then(() => {
        getTaste(this.form.tasteId).then(response => {
          this.form = response.data
          if (this.form.spNo != null) {
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
          } else {
            this.$modal.msgError("该单还没有申请审批,不能进行撤销审批");
          }
        })
      }).catch(() => {
      });
    },
    /**/
    editActivedEvent({rowIndex, row}) {
      this.nameDisabled = rowIndex === 1
      this.sexDisabled = row.sex === '1'
      this.dateDisabled = !!row.date
    },
    // 地区选中详情展示
    handleChangeT(value) {
      console.log("详情:" + JSON.stringify(value))
      console.log("临时回显数据1:" + this.matchMarketTemp)
      // console.log("form数据:"+JSON.stringify(JSON.parse(this.form.matchMarket)))
      // this.matchMarketTemp = this.matchMarketTemp.push(value)
      // console.log("临时回显数据2:"+this.matchMarketTemp)
      //this.form.matchMarket = JSON.stringify(value)
    },
    // 地区选中添加
    handleChange(value) {
      console.log(JSON.stringify(value.length))
      if (value.length > 3) {
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
      console.log(e)
      console.log(row)
      console.log(column)
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
        this.matchMarketTemp.length = 0
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
        processNo: null,
        businessName: null,
        businessCode: null,
        customersName: null,
        customersCode: null,
        tasteNum: null,
        refereeNum: null,
        sendNum: null,
        isSupply: '否',
        isTry: '否',
        visitTime: null,
        isSmoking: '否',
        smokingType: '一次性',
        heatingWireType: null,
        heatingWireResistance: null,
        capacity: null,
        oilGuideCottonType: null,
        isRecyclingSmoking: '否',
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
      this.$refs['form'].validate(valid1 => {
          //this.$refs['xTable'].validate(valid2 => {
        if (valid1) { // || valid2
          this.form.matchMarket = JSON.stringify(this.matchMarketTemp)
          this.form.hxTasteDetailList = this.hxTasteDetailList
          this.open = false
          if (this.$route.params.tasteId != null) {
            updateTaste(this.form).then(response => {
              console.log("提交修改:",JSON.stringify(response))
              this.$modal.msgSuccess('修改成功')
              // 关闭当前tab页签，打开新页签
              const obj = { path: "system/taste-data/index/"+ this.form.tasteId};
              this.$tab.closeOpenPage(obj);
              //this.reset()
              //this.open = false
              //this.getList()
            })
          } else {
            addTaste(this.form).then(response => {
              console.log("添加修改:",JSON.stringify(response))
              this.$modal.msgSuccess('新增成功')
              // 关闭当前tab页签，打开新页签
              const obj = { path: "/kouwei/tasteList" };
              this.$tab.closeOpenPage(obj);
              //this.open = false
              //this.getList()
            })
          }
        }
          //})
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
  margin-left: 40%;
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
