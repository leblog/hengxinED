package com.hx.rd.controller;

import com.hx.common.core.controller.BaseController;
import com.hx.common.core.page.TableDataInfo;
import com.hx.rd.domain.HxPeifang;
import com.hx.rd.service.HxPeifangService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@Slf4j
@RequestMapping("/open/RdPeifangSQL")
public class HxPeifangController extends BaseController {


    @Autowired
    private HxPeifangService peifangService;

    /**
     * 查询口味申请单列表
     */
    //@PreAuthorize("@ss.hasPermi('taste:list')")
    @GetMapping("/list")
    public TableDataInfo list(HxPeifang peifang)
    {
        startPage();
        List<HxPeifang> list = peifangService.list();
        return getDataTable(list);
    }

/*
    */
/**
     * 导出口味申请单列表
     *//*

    @PreAuthorize("@ss.hasPermi('taste:export')")
    @Log(title = "口味申请单",businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, HxTasteSQL hxTaste)
    {
        List<HxTasteSQL> list = hxTasteService.selectHxTasteList(hxTaste);
        ExcelUtil<HxTasteSQL> util = new ExcelUtil<HxTasteSQL>(HxTasteSQL.class);
        util.exportExcel(response, list, "口味申请单数据");
    }

    */
/**
     * 获取口味申请单详细信息
     *//*

    */
/*@PreAuthorize("@ss.hasPermi('taste:query')")*//*

    @GetMapping(value = "/query/{fid}")
    public AjaxResult getInfo(@PathVariable("fid") String fid)
    {
        return AjaxResult.success(hxTasteService.selectHxTasteByTasteId(fid));
    }

    */
/**
     * 新增口味申请单
     *//*

    @PreAuthorize("@ss.hasPermi('taste:add')")
    @RepeatSubmit(interval = 2000, message = "请求过于频繁")
    @Log(title = "口味申请单",businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody HxTasteSQL hxTaste)
    {
        AjaxResult result = new AjaxResult();
        //final String id = IdUtil.nanoId(36);
        // eg:SALEF6DF285BACDC4FEE961D9D63825266D5
        final String id = "SALE"+ IdUtil.fastSimpleUUID().toUpperCase();
        hxTaste.setFid(id.toUpperCase());
        hxTaste.setFbillno(SeqRD.getId());
        hxTaste.setFlastmodifyby(getUsername());
        hxTaste.setFsqriqi(DateUtils.getNowDate());
        hxTaste.setFlastmodifytime(DateUtils.getNowDate());
        //hxTaste.setFstatus(TatseFolderO.NORMAL.getCode());
        hxTaste.setFshenqingren(getUsername());
        result.put("res",hxTasteService.insertHxTaste(hxTaste));
        result.put("data",id);
        return result;
    }

    */
/**
     * 修改口味申请单
     *//*

    @PreAuthorize("@ss.hasPermi('taste:edit')")
    @RepeatSubmit(interval = 2000, message = "请求过于频繁")
    @Log(title = "口味申请单", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody HxTasteSQL hxTaste)
    {
        return toAjax(hxTasteService.updateHxTaste(hxTaste));
    }
*/

}
