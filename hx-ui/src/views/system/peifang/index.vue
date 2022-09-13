<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="68px">

      <el-form-item label="fid" prop="fid">
        <el-input
          v-model="queryParams.fid"
          placeholder="请输入fid"
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
          v-hasPermi="['system:peifang:add']"
        >新增</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="el-icon-edit"
          size="mini"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['system:peifang:edit']"
        >修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="el-icon-delete"
          size="mini"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['system:peifang:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['system:peifang:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="peifangList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="id" align="center" prop="id" />
      <el-table-column label="fid" align="center" prop="fid" />
      <el-table-column label="fbillno" align="center" prop="fbillno" />
      <el-table-column label="fdate" align="center" prop="fdate" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.fdate, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="frdcode" align="center" prop="frdcode" />
      <!--      <el-table-column label="${comment}" align="center" prop="fstatus" />
      <el-table-column label="${comment}" align="center" prop="ftiaoxiangshi" />
      <el-table-column label="${comment}" align="center" prop="fpeifangleibie" />
      <el-table-column label="${comment}" align="center" prop="ftxsqdh" />
      <el-table-column label="${comment}" align="center" prop="fvg" />
      <el-table-column label="${comment}" align="center" prop="fpg" />
<el-table-column label="${comment}" align="center" prop="fnicleibie" />
      <el-table-column label="${comment}" align="center" prop="fnicdanwei" />
      <el-table-column label="${comment}" align="center" prop="fnicazhanbi" />
      <el-table-column label="${comment}" align="center" prop="fnicbzhanbi" />
      <el-table-column label="${comment}" align="center" prop="fnicnongdu" />
      <el-table-column label="${comment}" align="center" prop="ftxsqdhmxfid" />
      <el-table-column label="${comment}" align="center" prop="fyanfadaima" />
      <el-table-column label="${comment}" align="center" prop="fkouweimingcheng" />
      <el-table-column label="${comment}" align="center" prop="fbanben" />
      <el-table-column label="${comment}" align="center" prop="fkongzhishunxu" />
      <el-table-column label="${comment}" align="center" prop="fshoukongbianma" />
      <el-table-column label="${comment}" align="center" prop="fshoukongshijian" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.fshoukongshijian, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="${comment}" align="center" prop="fkaishishijian" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.fkaishishijian, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="${comment}" align="center" prop="fjieshushijian" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.fjieshushijian, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="${comment}" align="center" prop="fguanlianpeifangfid" />
      <el-table-column label="${comment}" align="center" prop="fmaterialerpid" />
      <el-table-column label="${comment}" align="center" prop="fkouweidalei" />
      <el-table-column label="${comment}" align="center" prop="fbomerpid" />
      <el-table-column label="${comment}" align="center" prop="fisdeleted" />
      <el-table-column label="${comment}" align="center" prop="flastmodifyby" />
      <el-table-column label="${comment}" align="center" prop="fcreatetime" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.fcreatetime, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="${comment}" align="center" prop="flastmodifytime" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.flastmodifytime, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>-->
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['system:peifang:edit']"
          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['system:peifang:remove']"
          >删除</el-button>
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

    <!-- 添加或修改测试-多数据源对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="${comment}" prop="id">
          <el-input v-model="form.id" placeholder="请输入${comment}" />
        </el-form-item>
        <el-form-item label="${comment}" prop="fid">
          <el-input v-model="form.fid" placeholder="请输入${comment}" />
        </el-form-item>
        <el-form-item label="${comment}" prop="fbillno">
          <el-input v-model="form.fbillno" placeholder="请输入${comment}" />
        </el-form-item>
        <el-form-item label="${comment}" prop="fdate">
          <el-date-picker clearable
            v-model="form.fdate"
            type="date"
            value-format="yyyy-MM-dd"
            placeholder="请选择${comment}">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="${comment}" prop="frdcode">
          <el-input v-model="form.frdcode" placeholder="请输入${comment}" />
        </el-form-item>
        <el-form-item label="${comment}" prop="ftiaoxiangshi">
          <el-input v-model="form.ftiaoxiangshi" placeholder="请输入${comment}" />
        </el-form-item>
        <el-form-item label="${comment}" prop="fpeifangleibie">
          <el-input v-model="form.fpeifangleibie" placeholder="请输入${comment}" />
        </el-form-item>
        <el-form-item label="${comment}" prop="ftxsqdh">
          <el-input v-model="form.ftxsqdh" placeholder="请输入${comment}" />
        </el-form-item>
        <el-form-item label="${comment}" prop="fvg">
          <el-input v-model="form.fvg" placeholder="请输入${comment}" />
        </el-form-item>
        <el-form-item label="${comment}" prop="fpg">
          <el-input v-model="form.fpg" placeholder="请输入${comment}" />
        </el-form-item>
        <el-form-item label="${comment}" prop="fnicleibie">
          <el-input v-model="form.fnicleibie" placeholder="请输入${comment}" />
        </el-form-item>
        <el-form-item label="${comment}" prop="fnicdanwei">
          <el-input v-model="form.fnicdanwei" placeholder="请输入${comment}" />
        </el-form-item>
        <el-form-item label="${comment}" prop="fnicazhanbi">
          <el-input v-model="form.fnicazhanbi" placeholder="请输入${comment}" />
        </el-form-item>
        <el-form-item label="${comment}" prop="fnicbzhanbi">
          <el-input v-model="form.fnicbzhanbi" placeholder="请输入${comment}" />
        </el-form-item>
        <el-form-item label="${comment}" prop="fnicnongdu">
          <el-input v-model="form.fnicnongdu" placeholder="请输入${comment}" />
        </el-form-item>
        <el-form-item label="${comment}" prop="ftxsqdhmxfid">
          <el-input v-model="form.ftxsqdhmxfid" placeholder="请输入${comment}" />
        </el-form-item>
        <el-form-item label="${comment}" prop="fyanfadaima">
          <el-input v-model="form.fyanfadaima" placeholder="请输入${comment}" />
        </el-form-item>
        <el-form-item label="${comment}" prop="fkouweimingcheng">
          <el-input v-model="form.fkouweimingcheng" placeholder="请输入${comment}" />
        </el-form-item>
        <el-form-item label="${comment}" prop="fbanben">
          <el-input v-model="form.fbanben" placeholder="请输入${comment}" />
        </el-form-item>
        <el-form-item label="${comment}" prop="fkongzhishunxu">
          <el-input v-model="form.fkongzhishunxu" placeholder="请输入${comment}" />
        </el-form-item>
        <el-form-item label="${comment}" prop="fshoukongbianma">
          <el-input v-model="form.fshoukongbianma" placeholder="请输入${comment}" />
        </el-form-item>
        <el-form-item label="${comment}" prop="fshoukongshijian">
          <el-date-picker clearable
            v-model="form.fshoukongshijian"
            type="date"
            value-format="yyyy-MM-dd"
            placeholder="请选择${comment}">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="${comment}" prop="fkaishishijian">
          <el-date-picker clearable
            v-model="form.fkaishishijian"
            type="date"
            value-format="yyyy-MM-dd"
            placeholder="请选择${comment}">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="${comment}" prop="fjieshushijian">
          <el-date-picker clearable
            v-model="form.fjieshushijian"
            type="date"
            value-format="yyyy-MM-dd"
            placeholder="请选择${comment}">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="${comment}" prop="fguanlianpeifangfid">
          <el-input v-model="form.fguanlianpeifangfid" placeholder="请输入${comment}" />
        </el-form-item>
        <el-form-item label="${comment}" prop="fmaterialerpid">
          <el-input v-model="form.fmaterialerpid" placeholder="请输入${comment}" />
        </el-form-item>
        <el-form-item label="${comment}" prop="fkouweidalei">
          <el-input v-model="form.fkouweidalei" placeholder="请输入${comment}" />
        </el-form-item>
        <el-form-item label="${comment}" prop="fbomerpid">
          <el-input v-model="form.fbomerpid" placeholder="请输入${comment}" />
        </el-form-item>
        <el-form-item label="${comment}" prop="fisdeleted">
          <el-input v-model="form.fisdeleted" placeholder="请输入${comment}" />
        </el-form-item>
        <el-form-item label="${comment}" prop="flastmodifyby">
          <el-input v-model="form.flastmodifyby" placeholder="请输入${comment}" />
        </el-form-item>
        <el-form-item label="${comment}" prop="fcreatetime">
          <el-date-picker clearable
            v-model="form.fcreatetime"
            type="date"
            value-format="yyyy-MM-dd"
            placeholder="请选择${comment}">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="${comment}" prop="flastmodifytime">
          <el-date-picker clearable
            v-model="form.flastmodifytime"
            type="date"
            value-format="yyyy-MM-dd"
            placeholder="请选择${comment}">
          </el-date-picker>
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
import { listPeifang, getPeifang, delPeifang, addPeifang, updatePeifang } from "@/api/system/peifang";

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
      // 测试-多数据源表格数据
      peifangList: [],
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
        ftxsqdh: null,
        fvg: null,
        fpg: null,
        fnicleibie: null,
        fnicdanwei: null,
        fnicazhanbi: null,
        fnicbzhanbi: null,
        fnicnongdu: null,
        ftxsqdhmxfid: null,
        fyanfadaima: null,
        fkouweimingcheng: null,
        fbanben: null,
        fkongzhishunxu: null,
        fshoukongbianma: null,
        fshoukongshijian: null,
        fkaishishijian: null,
        fjieshushijian: null,
        fguanlianpeifangfid: null,
        fmaterialerpid: null,
        fkouweidalei: null,
        fbomerpid: null,
        fisdeleted: null,
        flastmodifyby: null,
        fcreatetime: null,
        flastmodifytime: null
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
        id: [
          { required: true, message: "$comment不能为空", trigger: "blur" }
        ],
        fid: [
          { required: true, message: "$comment不能为空", trigger: "blur" }
        ],
        fstatus: [
          { required: true, message: "$comment不能为空", trigger: "blur" }
        ],
        fvg: [
          { required: true, message: "$comment不能为空", trigger: "blur" }
        ],
        fpg: [
          { required: true, message: "$comment不能为空", trigger: "blur" }
        ],
        fkaishishijian: [
          { required: true, message: "$comment不能为空", trigger: "blur" }
        ],
        flastmodifyby: [
          { required: true, message: "$comment不能为空", trigger: "blur" }
        ],
        flastmodifytime: [
          { required: true, message: "$comment不能为空", trigger: "blur" }
        ]
      }
    };
  },
  created() {
    this.getList();
  },
  methods: {
    /** 查询测试-多数据源列表 */
    getList() {
      this.loading = true;
      listPeifang(this.queryParams).then(response => {
        this.peifangList = response.rows;
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
        ftxsqdh: null,
        fvg: null,
        fpg: null,
        fnicleibie: null,
        fnicdanwei: null,
        fnicazhanbi: null,
        fnicbzhanbi: null,
        fnicnongdu: null,
        ftxsqdhmxfid: null,
        fyanfadaima: null,
        fkouweimingcheng: null,
        fbanben: null,
        fkongzhishunxu: null,
        fshoukongbianma: null,
        fshoukongshijian: null,
        fkaishishijian: null,
        fjieshushijian: null,
        fguanlianpeifangfid: null,
        fmaterialerpid: null,
        fkouweidalei: null,
        fbomerpid: null,
        fisdeleted: null,
        flastmodifyby: null,
        fcreatetime: null,
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
      this.single = selection.length!==1
      this.multiple = !selection.length
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.open = true;
      this.title = "添加测试-多数据源";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const id = row.id || this.ids
      getPeifang(id).then(response => {
        this.form = response.data;
        this.open = true;
        this.title = "修改测试-多数据源";
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
      this.$modal.confirm('是否确认删除测试-多数据源编号为"' + ids + '"的数据项？').then(function() {
        return delPeifang(ids);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => {});
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('system/peifang/export', {
        ...this.queryParams
      }, `peifang_${new Date().getTime()}.xlsx`)
    }
  }
};
</script>
