package com.hx.web.controller.system;

import java.util.List;
import javax.servlet.http.HttpServletResponse;

import com.hx.system.domain.HxTaste;
import com.hx.system.service.IHxTasteService;
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
import com.hx.common.utils.poi.ExcelUtil;
import com.hx.common.core.page.TableDataInfo;

/**
 * 口味申请单Controller
 * 
 * @author lusifer
 * @date 2022-05-25
 */
@RestController
@RequestMapping("/system/taste")
public class HxTasteController extends BaseController
{
    @Autowired
    private IHxTasteService hxTasteService;

    /**
     * 查询口味申请单列表
     */
    @PreAuthorize("@ss.hasPermi('system:taste:list')")
    @GetMapping("/list")
    public TableDataInfo list(HxTaste hxTaste)
    {
        startPage();
        List<HxTaste> list = hxTasteService.selectHxTasteList(hxTaste);
        return getDataTable(list);
    }

    /**
     * 导出口味申请单列表
     */
    @PreAuthorize("@ss.hasPermi('system:taste:export')")
    @Log(title = "口味申请单", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, HxTaste hxTaste)
    {
        List<HxTaste> list = hxTasteService.selectHxTasteList(hxTaste);
        ExcelUtil<HxTaste> util = new ExcelUtil<HxTaste>(HxTaste.class);
        util.exportExcel(response, list, "口味申请单数据");
    }

    /**
     * 获取口味申请单详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:taste:query')")
    @GetMapping(value = "/{tasteId}")
    public AjaxResult getInfo(@PathVariable("tasteId") Long tasteId)
    {
        return AjaxResult.success(hxTasteService.selectHxTasteByTasteId(tasteId));
    }

    /**
     * 新增口味申请单
     */
    @PreAuthorize("@ss.hasPermi('system:taste:add')")
    @Log(title = "口味申请单", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody HxTaste hxTaste)
    {
        return toAjax(hxTasteService.insertHxTaste(hxTaste));
    }

    /**
     * 修改口味申请单
     */
    @PreAuthorize("@ss.hasPermi('system:taste:edit')")
    @Log(title = "口味申请单", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody HxTaste hxTaste)
    {
        return toAjax(hxTasteService.updateHxTaste(hxTaste));
    }

    /**
     * 删除口味申请单
     */
    @PreAuthorize("@ss.hasPermi('system:taste:remove')")
    @Log(title = "口味申请单", businessType = BusinessType.DELETE)
	@DeleteMapping("/{tasteIds}")
    public AjaxResult remove(@PathVariable String[] tasteIds)
    {
        return toAjax(hxTasteService.deleteHxTasteByTasteIds(tasteIds));
    }
}
