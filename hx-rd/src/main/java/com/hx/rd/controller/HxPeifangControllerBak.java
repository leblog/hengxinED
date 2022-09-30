package com.hx.rd.controller;

import cn.hutool.core.util.StrUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.github.pagehelper.JSqlParser;
import com.hx.common.annotation.Log;
import com.hx.common.core.controller.BaseController;
import com.hx.common.core.domain.AjaxResult;
import com.hx.common.core.page.TableDataInfo;
import com.hx.common.enums.BusinessType;
import com.hx.common.utils.StringUtils;
import com.hx.common.utils.poi.ExcelUtil;
import com.hx.rd.domain.HxPeifang;
import com.hx.rd.service.HxPeifangService;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * 调香师Controller
 *
 * @author lusifer
 * @date 2022-09-26
 */
@RestController
@RequestMapping("/open/peifang1")
public class HxPeifangControllerBak extends BaseController
{
    @Autowired
    private HxPeifangService peifangService;

        /**
     * 查询调香师列表
     */
    //@PreAuthorize("@ss.hasPermi('peifang:peifang:list')")
    @GetMapping("/list")
    public TableDataInfo list(HxPeifang peifang)
    {
        System.out.println(" ======================================================= " );
        startPage();
        List<HxPeifang> list = peifangService.selectPeifangList(peifang);
        return getDataTable(list);
    }

    @RequestMapping(value = "/edit",method = RequestMethod.PUT)
    @ApiOperation(value = "更新一个配方")
    public AjaxResult  update(@RequestBody HxPeifang peifang){
        final UpdateWrapper<HxPeifang> wrapper = new UpdateWrapper<>();
        if (StrUtil.isNotBlank(peifang.getFid())) {
            wrapper.lambda().eq(HxPeifang::getFid, peifang.getFid());
        }
        boolean update = peifangService.update(peifang, wrapper);
        return AjaxResult.success("ok",update);
    }

    @GetMapping("/listMP")
    public IPage listMP(int pageNum,
                        int pageSize,
                        HxPeifang peifang)
    {
        QueryWrapper<HxPeifang> wrapper = new QueryWrapper<>();
        if(StringUtils.isNotEmpty(peifang.getFid())){
            wrapper.lambda().like(HxPeifang::getFid, peifang.getFid());
        }
        if(StringUtils.isNotEmpty(peifang.getFbillno())){
            wrapper.lambda().like(HxPeifang::getFbillno, peifang.getFbillno());
        }
        if(StringUtils.isNotEmpty(peifang.getFkouweimingcheng())){
            wrapper.lambda().like(HxPeifang::getFkouweimingcheng, peifang.getFkouweimingcheng());
        }
        //wrapper.orderByDesc("flastmodifytime"); //不能排序
        final Page page = peifangService.page(new Page(pageNum, pageSize),wrapper);
        return page;
    }

    /**
     * 导出调香师列表
     */
    //@PreAuthorize("@ss.hasPermi('peifang:peifang:export')")
    @Log(title = "调香师", businessType = BusinessType.EXPORT,isSaveRequestData = false)
    @PostMapping("/export")
    public void export(HttpServletResponse response, HxPeifang peifang)
    {
        List<HxPeifang> list = peifangService.selectPeifangList(peifang);
        ExcelUtil<HxPeifang> util = new ExcelUtil<HxPeifang>(HxPeifang.class);
        util.exportExcel(response, list, "调香师数据");
    }

    /**
     * 获取调香师详细信息
     */
    //@PreAuthorize("@ss.hasPermi('peifang:peifang:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return AjaxResult.success(peifangService.selectPeifangById(id));
    }

    /**
     * 新增调香师
     */
    //@PreAuthorize("@ss.hasPermi('peifang:peifang:add')")
    @Log(title = "调香师", businessType = BusinessType.INSERT,isSaveRequestData = false)
    @PostMapping
    public AjaxResult add(@RequestBody HxPeifang peifang)
    {
        return toAjax(peifangService.insertPeifang(peifang));
    }

    /**
     * 修改调香师
     */
    //@PreAuthorize("@ss.hasPermi('peifang:peifang:edit')")
    @Log(title = "调香师", businessType = BusinessType.UPDATE,isSaveRequestData = false)
    @PutMapping
    public AjaxResult edit(@RequestBody HxPeifang peifang)
    {
        return toAjax(peifangService.updatePeifang(peifang));
    }

    /**
     * 删除调香师
     */
    //@PreAuthorize("@ss.hasPermi('peifang:peifang:remove')")
    @Log(title = "调香师", businessType = BusinessType.DELETE,isSaveRequestData = false)
    @DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(peifangService.deletePeifangByIds(ids));
    }
}
