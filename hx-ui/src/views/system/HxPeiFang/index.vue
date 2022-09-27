<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="68px">
        <el-form-item label="Fid" prop="fid">
          <el-input
            v-model="queryParams.fid"
            placeholder="请输入"
            clearable
            @keyup.enter.native="handleQuery"
          />
        </el-form-item>
        <el-form-item label="审批编码" prop="fbillno">
          <el-input
            v-model="queryParams.fbillno"
            placeholder="请输入"
            clearable
            @keyup.enter.native="handleQuery"
          />
        </el-form-item>
      <!--      <el-col :xs="24" :sm="8" :md="8" :lg="6" :xl="6"><el-form-item label="${comment}" prop="fshoukongshijian">
              <el-date-picker clearable
                              v-model="queryParams.fshoukongshijian"
                              type="date"
                              value-format="yyyy-MM-dd"
                              placeholder="请选择">
              </el-date-picker>
            </el-form-item></el-col>
            <el-col :xs="24" :sm="8" :md="8" :lg="6" :xl="6"><el-form-item label="${comment}" prop="fkaishishijian">
              <el-date-picker clearable
                              v-model="queryParams.fkaishishijian"
                              type="date"
                              value-format="yyyy-MM-dd"
                              placeholder="请选择">
              </el-date-picker>
            </el-form-item></el-col>-->
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
          v-hasPermi="['peifang:Peifang:add']"
        >新增
        </el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="el-icon-edit"
          size="mini"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['peifang:Peifang:edit']"
        >修改
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
          v-hasPermi="['peifang:Peifang:remove']"
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
          v-hasPermi="['peifang:Peifang:export']"
        >导出
        </el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="PeifangList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center"/>
      <el-table-column label="fid" align="center" prop="fid" show-overflow-tooltip/>
      <el-table-column label="审批编码" align="center" prop="fbillno" show-overflow-tooltip/>
      <el-table-column label="时间" align="center" prop="fdate" width="120">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.fdate, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="研发代码" align="center" prop="frdcode" width="50"/>
      <el-table-column label="状态" align="center" prop="fstatus"/>
      <el-table-column label="调香师" align="center" prop="ftiaoxiangshi"/>
      <el-table-column label="配方类别" align="center" prop="fpeifangleibie"/>
      <el-table-column label="FVG" align="center" prop="fvg"/>
      <el-table-column label="FPG" align="center" prop="fpg"/>
      <el-table-column label="NIC类别" align="center" prop="fnicleibie"/>
      <el-table-column label="NIC单位" align="center" prop="fnicdanwei"/>
      <el-table-column label="NIC占比a" align="center" prop="fnicazhanbi"/>
      <el-table-column label="NIC占比b" align="center" prop="fnicbzhanbi"/>
      <el-table-column label="NIC浓度" align="center" prop="fnicnongdu"/>
      <el-table-column label="调香申请单号" align="center" prop="ftxsqdh" show-overflow-tooltip/>
      <el-table-column label="调香申请单号明细ID" align="center" prop="ftxsqdhmxfid" show-overflow-tooltip/>
      <el-table-column label="客户编码" align="center" prop="fkehubianma"/>
      <el-table-column label="研发代码" align="center" prop="fyanfadaima"show-overflow-tooltip/>
      <el-table-column label="口味名称" align="center" prop="fkouweimingcheng"/>
      <el-table-column label="版本" align="center" prop="fbanben"/>
      <el-table-column label="控制顺序" align="center" prop="fkongzhishunxu"/>
      <el-table-column label="受控口味名称" align="center" prop="fshoukongkwmingcheng"/>
      <el-table-column label="受控编码" align="center" prop="fshoukongbianma"/>
      <el-table-column label="受控时间" align="center" prop="fshoukongshijian" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.fshoukongshijian, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="开始时间" align="center" prop="fkaishishijian" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.fkaishishijian, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="结束时间" align="center" prop="fjieshushijian" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.fjieshushijian, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="关联配方fid" align="center" prop="fguanlianpeifangfid" show-overflow-tooltip/>
      <el-table-column label="研发区分" align="center" prop="fyanfaqufen"/>
      <el-table-column label="研发原fid" align="center" prop="fyanfayuanfid"/>
      <el-table-column label="fmaterialerpid" align="center" prop="fmaterialerpid"/>
      <el-table-column label="口味大类" align="center" prop="fkouweidalei"/>
      <el-table-column label="fbomerpid" align="center" prop="fbomerpid"/>
      <el-table-column label="fgybomerpid" align="center" prop="fgybomerpid"/>
      <el-table-column label="fisdeleted" align="center" prop="fisdeleted"/>
      <el-table-column label="fisupload" align="center" prop="fisupload"/>
      <el-table-column label="完成时间" align="center" prop="ffinishtime" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.ffinishtime, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="ftiaocankaoyangtime" align="center" prop="ftiaocankaoyangtime" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.ftiaocankaoyangtime, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="创建时间" align="center" prop="fcreatetime" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.fcreatetime, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="创建人" align="center" prop="fcreateby"/>
      <el-table-column label="最后修改人" align="center" prop="flastmodifyby"/>
      <el-table-column label="最后更新时间" align="center" prop="flastmodifytime" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.flastmodifytime, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="操作" align="center" fixed="right" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['peifang:Peifang:edit']"
          >修改
          </el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['peifang:Peifang:remove']"
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
    />

    <!-- 添加或修改调香师对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" :fullscreen="true" append-to-body>
      <el-form ref="form" label-position="right" :model="form" :rules="rules" label-width="80px">
        <el-row :gutter="24">
          <el-col :xs="24" :sm="8" :md="8" :lg="6" :xl="6">
            <el-form-item label="研发代码" prop="frdcode">
              <el-input v-model="form.frdcode" placeholder="请输入"/>
            </el-form-item>
          </el-col>
          <el-col :xs="24" :sm="8" :md="8" :lg="6" :xl="6">
            <el-form-item label="调香师" prop="ftiaoxiangshi">
              <el-input v-model="form.ftiaoxiangshi" placeholder="请输入"/>
            </el-form-item>
          </el-col>
          <el-col :xs="24" :sm="8" :md="8" :lg="6" :xl="6">
            <el-form-item label="配方类别" prop="fpeifangleibie">
              <el-input v-model="form.fpeifangleibie" placeholder="请输入"/>
            </el-form-item>
          </el-col>
          <el-col :xs="24" :sm="8" :md="8" :lg="6" :xl="6">
            <el-form-item label="fvg" prop="fvg">
              <el-input v-model="form.fvg" placeholder="请输入"/>
            </el-form-item>
          </el-col>
          <el-col :xs="24" :sm="8" :md="8" :lg="6" :xl="6">
            <el-form-item label="fpg" prop="fpg">
              <el-input v-model="form.fpg" placeholder="请输入"/>
            </el-form-item>
          </el-col>
          <el-col :xs="24" :sm="8" :md="8" :lg="6" :xl="6">
            <el-form-item label="NIC类别" prop="fnicleibie">
              <el-input v-model="form.fnicleibie" placeholder="请输入"/>
            </el-form-item>
          </el-col>

          <el-col :xs="24" :sm="8" :md="8" :lg="6" :xl="6">
            <el-form-item label="NIC单位" prop="fnicdanwei">
              <el-input v-model="form.fnicdanwei" placeholder="请输入"/>
            </el-form-item>
          </el-col>
          <el-col :xs="24" :sm="8" :md="8" :lg="6" :xl="6">
            <el-form-item label="NIC占比a" prop="fnicazhanbi">
              <el-input v-model="form.fnicazhanbi" placeholder="请输入"/>
            </el-form-item>
          </el-col>
          <el-col :xs="24" :sm="8" :md="8" :lg="6" :xl="6">
            <el-form-item label="NIC占比b" prop="fnicbzhanbi">
              <el-input v-model="form.fnicbzhanbi" placeholder="请输入"/>
            </el-form-item>
          </el-col>

          <el-col :xs="24" :sm="8" :md="8" :lg="6" :xl="6">
            <el-form-item label="NIC浓度" prop="fnicnongdu">
              <el-input v-model="form.fnicnongdu" placeholder="请输入"/>
            </el-form-item>
          </el-col>
          <el-col :xs="24" :sm="8" :md="8" :lg="6" :xl="6">
            <el-form-item label="调香申请单号" prop="ftxsqdh">
              <el-input v-model="form.ftxsqdh" placeholder="请输入"/>
            </el-form-item>
          </el-col>
          <el-col :xs="24" :sm="8" :md="8" :lg="6" :xl="6">
            <el-form-item label="调香申请单号明细ID" prop="ftxsqdhmxfid">
              <el-input v-model="form.ftxsqdhmxfid" placeholder="请输入"/>
            </el-form-item>
          </el-col>

          <el-col :xs="24" :sm="8" :md="8" :lg="6" :xl="6">
            <el-form-item label="客户编码" prop="fkehubianma">
              <el-input v-model="form.fkehubianma" placeholder="请输入"/>
            </el-form-item>
          </el-col>
          <el-col :xs="24" :sm="8" :md="8" :lg="6" :xl="6">
            <el-form-item label="研发代码" prop="fyanfadaima">
              <el-input v-model="form.fyanfadaima" placeholder="请输入"/>
            </el-form-item>
          </el-col>
          <el-col :xs="24" :sm="8" :md="8" :lg="6" :xl="6">
            <el-form-item label="口味名称" prop="fkouweimingcheng">
              <el-input v-model="form.fkouweimingcheng" placeholder="请输入"/>
            </el-form-item>
          </el-col>

          <el-col :xs="24" :sm="8" :md="8" :lg="6" :xl="6">
            <el-form-item label="版本" prop="fbanben">
              <el-input v-model="form.fbanben" placeholder="请输入"/>
            </el-form-item>
          </el-col>
          <el-col :xs="24" :sm="8" :md="8" :lg="6" :xl="6">
            <el-form-item label="控制顺序" prop="fkongzhishunxu">
              <el-input v-model="form.fkongzhishunxu" placeholder="请输入"/>
            </el-form-item>
          </el-col>
          <el-col :xs="24" :sm="8" :md="8" :lg="6" :xl="6">
            <el-form-item label="受控口味名称" prop="fshoukongkwmingcheng">
              <el-input v-model="form.fshoukongkwmingcheng" placeholder="请输入"/>
            </el-form-item>
          </el-col>

          <el-col :xs="24" :sm="8" :md="8" :lg="6" :xl="6">
            <el-form-item label="受控编码" prop="fshoukongbianma">
              <el-input v-model="form.fshoukongbianma" placeholder="请输入"/>
            </el-form-item>
          </el-col>
          <el-col :xs="24" :sm="8" :md="8" :lg="6" :xl="6">
            <el-form-item label="受控时间" prop="fshoukongshijian">
              <el-date-picker clearable
                              v-model="form.fshoukongshijian"
                              type="date"
                              value-format="yyyy-MM-dd"
                              placeholder="请选择">
              </el-date-picker>
            </el-form-item>
          </el-col>
          <el-col :xs="24" :sm="8" :md="8" :lg="6" :xl="6">
            <el-form-item label="开始时间" prop="fkaishishijian">
              <el-date-picker clearable
                              v-model="form.fkaishishijian"
                              type="date"
                              value-format="yyyy-MM-dd"
                              placeholder="请选择">
              </el-date-picker>
            </el-form-item>
          </el-col>

          <el-col :xs="24" :sm="8" :md="8" :lg="6" :xl="6">
            <el-form-item label="结束时间" prop="fjieshushijian">
              <el-date-picker clearable
                              v-model="form.fjieshushijian"
                              type="date"
                              value-format="yyyy-MM-dd"
                              placeholder="请选择">
              </el-date-picker>
            </el-form-item>
          </el-col>
          <el-col :xs="24" :sm="8" :md="8" :lg="6" :xl="6">
            <el-form-item label="关联配方fid" prop="fguanlianpeifangfid">
              <el-input v-model="form.fguanlianpeifangfid" placeholder="请输入"/>
            </el-form-item>
          </el-col>
          <el-col :xs="24" :sm="8" :md="8" :lg="6" :xl="6">
            <el-form-item label="研发区分" prop="fyanfaqufen">
              <el-input v-model="form.fyanfaqufen" placeholder="请输入"/>
            </el-form-item>
          </el-col>

          <el-col :xs="24" :sm="8" :md="8" :lg="6" :xl="6">
            <el-form-item label="研发原fid" prop="fyanfayuanfid">
              <el-input v-model="form.fyanfayuanfid" placeholder="请输入"/>
            </el-form-item>
          </el-col>
          <el-col :xs="24" :sm="8" :md="8" :lg="6" :xl="6">
            <el-form-item label="fmaterialerpid" prop="fmaterialerpid">
              <el-input v-model="form.fmaterialerpid" placeholder="请输入"/>
            </el-form-item>
          </el-col>
          <el-col :xs="24" :sm="8" :md="8" :lg="6" :xl="6">
            <el-form-item label="口味大类" prop="fkouweidalei">
              <el-input v-model="form.fkouweidalei" placeholder="请输入"/>
            </el-form-item>
          </el-col>

          <el-col :xs="24" :sm="8" :md="8" :lg="6" :xl="6">
            <el-form-item label="fbomerpid" prop="fbomerpid">
              <el-input v-model="form.fbomerpid" placeholder="请输入"/>
            </el-form-item>
          </el-col>
          <el-col :xs="24" :sm="8" :md="8" :lg="6" :xl="6">
            <el-form-item label="fgybomerpid" prop="fgybomerpid">
              <el-input v-model="form.fgybomerpid" placeholder="请输入"/>
            </el-form-item>
          </el-col>
          <el-col :xs="24" :sm="8" :md="8" :lg="6" :xl="6">
            <el-form-item label="fisdeleted" prop="fisdeleted">
              <el-input v-model="form.fisdeleted" placeholder="请输入"/>
            </el-form-item>
          </el-col>

          <el-col :xs="24" :sm="8" :md="8" :lg="6" :xl="6">
            <el-form-item label="fisupload" prop="fisupload">
              <el-input v-model="form.fisupload" placeholder="请输入"/>
            </el-form-item>
          </el-col>
          <el-col :xs="24" :sm="8" :md="8" :lg="6" :xl="6">
            <el-form-item label="完成时间" prop="ffinishtime">
              <el-date-picker clearable
                              v-model="form.ffinishtime"
                              type="date"
                              value-format="yyyy-MM-dd"
                              placeholder="请选择">
              </el-date-picker>
            </el-form-item>
          </el-col>
          <el-col :xs="24" :sm="8" :md="8" :lg="6" :xl="6">
            <el-form-item label="ftiaocankaoyangtime" prop="ftiaocankaoyangtime">
              <el-date-picker clearable
                              v-model="form.ftiaocankaoyangtime"
                              type="date"
                              value-format="yyyy-MM-dd"
                              placeholder="请选择">
              </el-date-picker>
            </el-form-item>
          </el-col>

          <el-col :xs="24" :sm="8" :md="8" :lg="6" :xl="6">
            <el-form-item label="创建时间" prop="fcreatetime">
              <el-date-picker clearable
                              v-model="form.fcreatetime"
                              type="date"
                              value-format="yyyy-MM-dd"
                              placeholder="请选择">
              </el-date-picker>
            </el-form-item>
          </el-col>
          <el-col :xs="24" :sm="8" :md="8" :lg="6" :xl="6">
            <el-form-item label="创建人" prop="fcreateby">
              <el-input v-model="form.fcreateby" placeholder="请输入"/>
            </el-form-item>
          </el-col>
          <el-col :xs="24" :sm="8" :md="8" :lg="6" :xl="6">
            <el-form-item label="最后修改人" prop="flastmodifyby">
              <el-input v-model="form.flastmodifyby" placeholder="请输入"/>
            </el-form-item>
          </el-col>

          <el-col :xs="24" :sm="8" :md="8" :lg="6" :xl="6">
            <el-form-item label="最后更新时间" prop="flastmodifytime">
              <el-date-picker clearable
                              v-model="form.flastmodifytime"
                              type="date"
                              value-format="yyyy-MM-dd"
                              placeholder="请选择">
              </el-date-picker>
            </el-form-item>
          </el-col>
        </el-row>


      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script>
import {listPeifang, getPeifang, delPeifang, addPeifang, updatePeifang} from "@/api/system/HxPeiFang";

export default {
  name: "Peifang",
  data() {
    return {
      // 遮罩层
      loading: true,
      // 选中数组
      ids: [],
      // 非单个禁用
      single: true,
      // 非多个禁用
      multiple: true,
      // 显示搜索条件
      showSearch: true,
      // 总条数
      total: 0,
      // 调香师表格数据
      PeifangList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        id: null,
        fid: null,
        fbillno: null,
        fdate: null,
        frdcode: null,
        fstatus: null,
        ftiaoxiangshi: null,
        fpeifangleibie: null,
        fvg: null,
        fpg: null,
        fnicleibie: null,
        fnicdanwei: null,
        fnicazhanbi: null,
        fnicbzhanbi: null,
        fnicnongdu: null,
        ftxsqdh: null,
        ftxsqdhmxfid: null,
        fkehubianma: null,
        fyanfadaima: null,
        fkouweimingcheng: null,
        fbanben: null,
        fkongzhishunxu: null,
        fshoukongkwmingcheng: null,
        fshoukongbianma: null,
        fshoukongshijian: null,
        fkaishishijian: null,
        fjieshushijian: null,
        fguanlianpeifangfid: null,
        fyanfaqufen: null,
        fyanfayuanfid: null,
        fmaterialerpid: null,
        fkouweidalei: null,
        fbomerpid: null,
        fgybomerpid: null,
        fisdeleted: null,
        fisupload: null,
        ffinishtime: null,
        ftiaocankaoyangtime: null,
        fcreatetime: null,
        fcreateby: null,
        flastmodifyby: null,
        flastmodifytime: null
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
        /*id: [
          {required: true, message: "不能为空", trigger: "blur"}
        ],
        fid: [
          {required: true, message: "不能为空", trigger: "blur"}
        ],
        fbillno: [
          {required: true, message: "不能为空", trigger: "blur"}
        ],
        fdate: [
          {required: true, message: "不能为空", trigger: "blur"}
        ],
        frdcode: [
          {required: true, message: "不能为空", trigger: "blur"}
        ],
        fstatus: [
          {required: true, message: "不能为空", trigger: "blur"}
        ],
        ftiaoxiangshi: [
          {required: true, message: "不能为空", trigger: "blur"}
        ],
        fpeifangleibie: [
          {required: true, message: "不能为空", trigger: "blur"}
        ],
        fvg: [
          {required: true, message: "不能为空", trigger: "blur"}
        ],
        fpg: [
          {required: true, message: "不能为空", trigger: "blur"}
        ],
        fnicleibie: [
          {required: true, message: "不能为空", trigger: "blur"}
        ],
        fnicdanwei: [
          {required: true, message: "不能为空", trigger: "blur"}
        ],
        fnicazhanbi: [
          {required: true, message: "不能为空", trigger: "blur"}
        ],
        fnicbzhanbi: [
          {required: true, message: "不能为空", trigger: "blur"}
        ],
        fnicnongdu: [
          {required: true, message: "不能为空", trigger: "blur"}
        ],
        ftxsqdh: [
          {required: true, message: "不能为空", trigger: "blur"}
        ],
        ftxsqdhmxfid: [
          {required: true, message: "不能为空", trigger: "blur"}
        ],
        fkehubianma: [
          {required: true, message: "不能为空", trigger: "blur"}
        ],
        fyanfadaima: [
          {required: true, message: "不能为空", trigger: "blur"}
        ],
        fkouweimingcheng: [
          {required: true, message: "不能为空", trigger: "blur"}
        ],
        fbanben: [
          {required: true, message: "不能为空", trigger: "blur"}
        ],
        fkongzhishunxu: [
          {required: true, message: "不能为空", trigger: "blur"}
        ],
        fshoukongkwmingcheng: [
          {required: true, message: "不能为空", trigger: "blur"}
        ],
        fshoukongbianma: [
          {required: true, message: "不能为空", trigger: "blur"}
        ],
        fshoukongshijian: [
          {required: true, message: "不能为空", trigger: "blur"}
        ],
        fkaishishijian: [
          {required: true, message: "不能为空", trigger: "blur"}
        ],
        fjieshushijian: [
          {required: true, message: "不能为空", trigger: "blur"}
        ],
        fguanlianpeifangfid: [
          {required: true, message: "不能为空", trigger: "blur"}
        ],
        fyanfaqufen: [
          {required: true, message: "不能为空", trigger: "blur"}
        ],
        fyanfayuanfid: [
          {required: true, message: "不能为空", trigger: "blur"}
        ],
        fmaterialerpid: [
          {required: true, message: "不能为空", trigger: "blur"}
        ],
        fkouweidalei: [
          {required: true, message: "不能为空", trigger: "blur"}
        ],
        fbomerpid: [
          {required: true, message: "不能为空", trigger: "blur"}
        ],
        fgybomerpid: [
          {required: true, message: "不能为空", trigger: "blur"}
        ],
        fisdeleted: [
          {required: true, message: "不能为空", trigger: "blur"}
        ],
        fisupload: [
          {required: true, message: "不能为空", trigger: "blur"}
        ],
        ffinishtime: [
          {required: true, message: "不能为空", trigger: "blur"}
        ],
        ftiaocankaoyangtime: [
          {required: true, message: "不能为空", trigger: "blur"}
        ],
        fcreatetime: [
          {required: true, message: "不能为空", trigger: "blur"}
        ],
        fcreateby: [
          {required: true, message: "不能为空", trigger: "blur"}
        ],
        flastmodifyby: [
          {required: true, message: "不能为空", trigger: "blur"}
        ],
        flastmodifytime: [
          {required: true, message: "不能为空", trigger: "blur"}
        ]*/
      }
    };
  },
  created() {
    this.getList();
  },
  methods: {
    /** 查询调香师列表 */
    getList() {
      this.loading = true;
      listPeifang(this.queryParams).then(response => {
        this.PeifangList = response.records;
        this.total = response.total;
        this.loading = false;
      });
    },
    // 取消按钮
    cancel() {
      this.open = false;
      this.reset();
    },
    // 表单重置
    reset() {
      this.form = {
        id: null,
        fid: null,
        fbillno: null,
        fdate: null,
        frdcode: null,
        fstatus: 0,
        ftiaoxiangshi: null,
        fpeifangleibie: null,
        fvg: null,
        fpg: null,
        fnicleibie: null,
        fnicdanwei: null,
        fnicazhanbi: null,
        fnicbzhanbi: null,
        fnicnongdu: null,
        ftxsqdh: null,
        ftxsqdhmxfid: null,
        fkehubianma: null,
        fyanfadaima: null,
        fkouweimingcheng: null,
        fbanben: null,
        fkongzhishunxu: null,
        fshoukongkwmingcheng: null,
        fshoukongbianma: null,
        fshoukongshijian: null,
        fkaishishijian: null,
        fjieshushijian: null,
        fguanlianpeifangfid: null,
        fyanfaqufen: null,
        fyanfayuanfid: null,
        fmaterialerpid: null,
        fkouweidalei: null,
        fbomerpid: null,
        fgybomerpid: null,
        fisdeleted: null,
        fisupload: null,
        ffinishtime: null,
        ftiaocankaoyangtime: null,
        fcreatetime: null,
        fcreateby: null,
        flastmodifyby: null,
        flastmodifytime: null
      };
      this.resetForm("form");
    },
    /** 搜索按钮操作 */
    handleQuery() {
      this.queryParams.pageNum = 1;
      this.getList();
    },
    /** 重置按钮操作 */
    resetQuery() {
      this.resetForm("queryForm");
      this.handleQuery();
    },
    // 多选框选中数据
    handleSelectionChange(selection) {
      this.ids = selection.map(item => item.id)
      this.single = selection.length !== 1
      this.multiple = !selection.length
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.open = true;
      this.title = "添加调香师";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const id = row.id || this.ids
      getPeifang(id).then(response => {
        this.form = response.data;
        this.open = true;
        this.title = "修改调香师";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.id != null) {
            updatePeifang(this.form).then(response => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addPeifang(this.form).then(response => {
              this.$modal.msgSuccess("新增成功");
              this.open = false;
              this.getList();
            });
          }
        }
      });
    },
    /** 删除按钮操作 */
    handleDelete(row) {
      const ids = row.id || this.ids;
      this.$modal.confirm('是否确认删除调香师编号为"' + ids + '"的数据项？').then(function () {
        return delPeifang(ids);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => {
      });
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('peifang/Peifang/export', {
        ...this.queryParams
      }, `Peifang_${new Date().getTime()}.xlsx`)
    }
  }
};
</script>

