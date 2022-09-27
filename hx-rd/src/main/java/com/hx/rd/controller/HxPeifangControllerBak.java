package com.hx.rd.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.hx.common.annotation.Log;
import com.hx.common.core.controller.BaseController;
import com.hx.common.core.domain.AjaxResult;
import com.hx.common.core.page.TableDataInfo;
import com.hx.common.enums.BusinessType;
import com.hx.common.utils.StringUtils;
import com.hx.common.utils.poi.ExcelUtil;
import com.hx.rd.domain.HxPeifang;
import com.hx.rd.service.HxPeifangService;
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
@RequestMapping("/ope/peifang")
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
        startPage();
        List<HxPeifang> list = peifangService.selectPeifangList(peifang);
        return getDataTable(list);
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
