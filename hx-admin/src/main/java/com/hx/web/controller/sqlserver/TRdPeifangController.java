package com.hx.web.controller.sqlserver;

import java.util.List;
import javax.servlet.http.HttpServletResponse;
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
import com.hx.common.annotation.Log;
import com.hx.common.core.controller.BaseController;
import com.hx.common.core.domain.AjaxResult;
import com.hx.common.enums.BusinessType;
import com.hx.system.domain.TRdPeifang;
import com.hx.system.service.ITRdPeifangService;
import com.hx.common.utils.poi.ExcelUtil;
import com.hx.common.core.page.TableDataInfo;

/**
 * 测试-多数据源Controller
 *
 * @author lusifer
 * @date 2022-09-13
 */
@RestController
@RequestMapping("/system/peifang")
public class TRdPeifangController extends BaseController
{
    @Autowired
    private ITRdPeifangService tRdPeifangService;

    /**
     * 查询测试-多数据源列表
     */
    @PreAuthorize("@ss.hasPermi('system:peifang:list')")
    @GetMapping("/list")
    public TableDataInfo list(TRdPeifang tRdPeifang)
    {
        startPage();
        List<TRdPeifang> list = tRdPeifangService.selectTRdPeifangList(tRdPeifang);
        return getDataTable(list);
    }

    /**
     * 导出测试-多数据源列表
     */
    @PreAuthorize("@ss.hasPermi('system:peifang:export')")
    @Log(title = "测试-多数据源", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, TRdPeifang tRdPeifang)
    {
        List<TRdPeifang> list = tRdPeifangService.selectTRdPeifangList(tRdPeifang);
        ExcelUtil<TRdPeifang> util = new ExcelUtil<TRdPeifang>(TRdPeifang.class);
        util.exportExcel(response, list, "测试-多数据源数据");
    }

    /**
     * 获取测试-多数据源详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:peifang:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return AjaxResult.success(tRdPeifangService.selectTRdPeifangById(id));
    }

    /**
     * 新增测试-多数据源
     */
    @PreAuthorize("@ss.hasPermi('system:peifang:add')")
    @Log(title = "测试-多数据源", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody TRdPeifang tRdPeifang)
    {
        return toAjax(tRdPeifangService.insertTRdPeifang(tRdPeifang));
    }

    /**
     * 修改测试-多数据源
     */
    @PreAuthorize("@ss.hasPermi('system:peifang:edit')")
    @Log(title = "测试-多数据源", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody TRdPeifang tRdPeifang)
    {
        return toAjax(tRdPeifangService.updateTRdPeifang(tRdPeifang));
    }

    /**
     * 删除测试-多数据源
     */
    @PreAuthorize("@ss.hasPermi('system:peifang:remove')")
    @Log(title = "测试-多数据源", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(tRdPeifangService.deleteTRdPeifangByIds(ids));
    }
}
