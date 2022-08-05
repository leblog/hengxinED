package com.hx.web.controller.system;

import cn.hutool.core.lang.Console;
import cn.hutool.core.util.StrUtil;
import com.hx.common.annotation.Log;
import com.hx.common.core.controller.BaseController;
import com.hx.common.core.domain.AjaxResult;
import com.hx.common.core.page.TableDataInfo;
import com.hx.common.enums.BusinessType;
import com.hx.common.utils.poi.ExcelUtil;
import com.hx.system.domain.HxTaste;
import com.hx.system.service.IHxTasteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;

/**
 * 口味申请单Controller- 对外开放接口
 *
 * @author lusifer
 * @date 2022-05-25
 */
@RestController
@RequestMapping("/open/taste")
public class HxTasteControllerOpen extends BaseController
{
    @Autowired
    private IHxTasteService hxTasteService;

    /**
     * 查询口味申请单列表
     */
    @GetMapping("/list")
    public TableDataInfo list(HxTaste hxTaste)
    {
        startPage();
        List<HxTaste> list = hxTasteService.selectHxTasteList(hxTaste);
        return getDataTable(list);
    }

    /**
     * 查询口味申请单列表--详情
     */
    @GetMapping("/listDetail")
    public TableDataInfo listDetail(HxTaste hxTaste)
    {
        startPage();
        List<HxTaste> listDetail = hxTasteService.selectHxTasteListDetail(hxTaste);
        return getDataTable(listDetail);
    }
    @GetMapping("/table")
    public AjaxResult table(HxTaste hxTaste){
        AjaxResult ajax = new AjaxResult();
        List<HxTaste> hxTastes = hxTasteService.selectHxTasteList(hxTaste);
        LinkedList<Object> objects = new LinkedList<>();
        Console.log(objects+"=====");
        HxTaste taste = new HxTaste();
        Console.log(StrUtil.format((CharSequence) taste));
        return ajax;
    }

    /**
     * 导出口味申请单列表
     */
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
    @GetMapping(value = "/{tasteId}")
    public AjaxResult getInfo(@PathVariable("tasteId") String tasteId)
    {
        return AjaxResult.success(hxTasteService.selectHxTasteByTasteId(tasteId));
    }

    /**
     * 新增口味申请单
     */
    @Log(title = "口味申请单", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody HxTaste hxTaste)
    {
        return toAjax(hxTasteService.insertHxTaste(hxTaste));
    }

    /**
     * 修改口味申请单
     */
    @Log(title = "口味申请单", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody HxTaste hxTaste)
    {
        return toAjax(hxTasteService.updateHxTaste(hxTaste));
    }

    /**
     * 删除口味申请单
     */
    @Log(title = "口味申请单", businessType = BusinessType.DELETE)
	@DeleteMapping("/{tasteIds}")
    public AjaxResult remove(@PathVariable String[] tasteIds)
    {
        return toAjax(hxTasteService.deleteHxTasteByTasteIds(tasteIds));
    }
}
