package com.hx.rd.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;

import com.hx.common.annotation.Log;
import com.hx.common.core.controller.BaseController;
import com.hx.common.core.domain.AjaxResult;
import com.hx.common.core.page.TableDataInfo;
import com.hx.common.enums.BusinessType;
import com.hx.common.utils.poi.ExcelUtil;
import com.hx.rd.domain.HxPeifang;
import com.hx.rd.service.HxPeifangService;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * 调香师Controller
 *
 * @author lusifer
 * @date 2022-09-26
 */
@RestController
@RequestMapping("/open/peifang")
public class HxPeifangController extends BaseController
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

    /**
     * 导出调香师列表
     */
    //@PreAuthorize("@ss.hasPermi('peifang:peifang:export')")
    @Log(title = "调香师", businessType = BusinessType.EXPORT)
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
    @Log(title = "调香师", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody HxPeifang peifang)
    {
        return toAjax(peifangService.insertPeifang(peifang));
    }

    /**
     * 修改调香师
     */
    //@PreAuthorize("@ss.hasPermi('peifang:peifang:edit')")
    @Log(title = "调香师", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody HxPeifang peifang)
    {
        return toAjax(peifangService.updatePeifang(peifang));
    }

    /**
     * 删除调香师
     */
    //@PreAuthorize("@ss.hasPermi('peifang:peifang:remove')")
    @Log(title = "调香师", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(peifangService.deletePeifangByIds(ids));
    }
}
