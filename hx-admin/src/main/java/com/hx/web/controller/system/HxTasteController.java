package com.hx.web.controller.system;

import java.util.List;
import java.util.stream.Collectors;
import javax.servlet.http.HttpServletResponse;

import cn.hutool.core.util.IdUtil;
import com.hx.common.core.domain.entity.SysUser;
import com.hx.system.domain.HxTaste;
import com.hx.system.domain.SysOperLog;
import com.hx.system.domain.enums.TatseFolder;
import com.hx.system.domain.vo.LogVO;
import com.hx.system.domain.vo.OwnerVO;
import com.hx.system.mapper.HxTasteMapper;
import com.hx.system.service.IHxTasteService;
import com.hx.system.service.ISysOperLogService;
import com.hx.system.service.ISysUserService;
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
    @Autowired
    private HxTasteMapper hxTasteMapper;
    @Autowired
    private ISysUserService userService;
    @Autowired
    private ISysOperLogService operLogService;



    /**
     * 查询口味申请单列表
     */
    @PreAuthorize("@ss.hasPermi('taste:list')")
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
    @PreAuthorize("@ss.hasPermi('taste:export')")
    @Log(title = "口味申请单",businessType = BusinessType.EXPORT)
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
    @PreAuthorize("@ss.hasPermi('taste:query')")
    @GetMapping(value = "/{tasteId}")
    public AjaxResult getInfo(@PathVariable("tasteId") String tasteId)
    {
        return AjaxResult.success(hxTasteService.selectHxTasteByTasteId(tasteId));
    }

    /**
     * 新增口味申请单
     */
    @PreAuthorize("@ss.hasPermi('taste:add')")
    @Log(title = "口味申请单",businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody HxTaste hxTaste)
    {
        return toAjax(hxTasteService.insertHxTaste(hxTaste));
    }

    /**
     * 修改口味申请单
     */
    @PreAuthorize("@ss.hasPermi('taste:edit')")
    @Log(title = "口味申请单", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody HxTaste hxTaste)
    {
        return toAjax(hxTasteService.updateHxTaste(hxTaste));
    }

    /**
     * 删除口味申请单
     */
    @PreAuthorize("@ss.hasPermi('taste:remove')")
    @Log(title = "口味申请单", businessType = BusinessType.DELETE)
	@DeleteMapping("/{tasteIds}")
    public AjaxResult remove(@PathVariable String[] tasteIds)
    {
        return toAjax(hxTasteService.deleteHxTasteByTasteIds(tasteIds));
    }

    /**
     * 作废口味申请单
     */
    @PreAuthorize("@ss.hasPermi('taste:waste')")
    @Log(title = "口味申请单作废", businessType = BusinessType.UPDATE)
    @GetMapping(value = "/waste/{tasteId}")
    public AjaxResult waste(@PathVariable("tasteId") String tasteId)
    {
        AjaxResult ajax = new AjaxResult();
        HxTaste hxTaste = hxTasteMapper.selectHxTasteByTasteId(tasteId);
        hxTaste.setState(TatseFolder.WASTE.getCode());
        return toAjax(hxTasteService.updateHxTaste(hxTaste));
    }

    /**
     * TODO
     *  口味申请单审核  taste:audit
     */

    /**
     * TODO
     *  口味申请单溯源 taste:audit  tasteCopyId
     */


    /**
     * 查询负责人列表
     */
    @GetMapping("/getDistribution")
    public AjaxResult getDistribution(){
        List<SysUser> listUser = userService.selectUserList(new SysUser());
        List<OwnerVO> map = listUser.stream()
                .map(owner->new OwnerVO(owner.getUserName(), owner.getNickName(),owner.getUserId()))
                .collect(Collectors.toList());
        return AjaxResult.success(map);
    }

    /**
     *  单子的操作日志 taste:log  查询表
     */
    @GetMapping("value = /log/{tasteId}")
    //@Log(title = "口味申请单日志", businessType = BusinessType.UPDATE)
    public AjaxResult log(@PathVariable("tasteId") String tasteId){
        SysOperLog log = new SysOperLog();
        log.setOperUrl(tasteId);
        List<SysOperLog> logList = operLogService.selectOperLogList(log);
        List<LogVO> map  = logList.stream()
                .map(i->new LogVO(
                        i.getTitle(),
                        i.getMethod(),
                        i.getRequestMethod(),
                        i.getOperUrl(),
                        i.getOperIp(),
                        i.getOperParam(),
                        i.getJsonResult()
                ))
                .collect(Collectors.toList());
        return AjaxResult.success(map);
    }


}
