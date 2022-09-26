package com.hx.rd.controller;

import cn.hutool.core.collection.CollUtil;
import cn.hutool.core.date.DateUtil;
import cn.hutool.core.util.IdUtil;
import cn.hutool.core.util.StrUtil;
import cn.hutool.http.HttpRequest;
import cn.hutool.json.JSONUtil;
import com.hx.common.annotation.Log;
import com.hx.common.annotation.RepeatSubmit;
import com.hx.common.core.controller.BaseController;
import com.hx.common.core.domain.AjaxResult;
import com.hx.common.core.domain.entity.SysUser;
import com.hx.common.core.page.TableDataInfo;
import com.hx.common.enums.BusinessType;
import com.hx.common.exception.ServiceException;
import com.hx.common.utils.DateUtils;
import com.hx.common.utils.poi.ExcelUtil;
import com.hx.common.utils.uuid.SeqRD;
import com.hx.rd.domain.HxTasteSQL;
import com.hx.system.domain.SysConfig;
import com.hx.system.domain.SysOperLog;
import com.hx.rd.domain.enums.TatseFolderO;
import com.hx.system.domain.vo.OwnerVO;
import com.hx.rd.service.IHxTasteSQLService;
import com.hx.system.service.ISysConfigService;
import com.hx.system.service.ISysOperLogService;
import com.hx.system.service.ISysUserService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.stream.Collectors;

/**
 * 口味申请单Controller
 *
 * @author lusifer
 * @date 2022-05-25
 */
@RestController
@Slf4j
@RequestMapping("/system/tasteSQL")
public class HxTasteSQLController extends BaseController
{
    @Autowired
    private IHxTasteSQLService hxTasteService;
    @Autowired
    private ISysUserService userService;
    @Autowired
    private ISysOperLogService operLogService;
    @Autowired
    private ISysConfigService configService;



    /**
     * 查询口味申请单列表
     */
    @PreAuthorize("@ss.hasPermi('taste:list')")
    @GetMapping("/list")
    public TableDataInfo list(HxTasteSQL hxTaste)
    {
        startPage();
        List<HxTasteSQL> list = hxTasteService.selectHxTasteList(hxTaste);
        return getDataTable(list);
    }

    /**
     * 导出口味申请单列表
     */
    @PreAuthorize("@ss.hasPermi('taste:export')")
    @Log(title = "口味申请单",businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, HxTasteSQL hxTaste)
    {
        List<HxTasteSQL> list = hxTasteService.selectHxTasteList(hxTaste);
        ExcelUtil<HxTasteSQL> util = new ExcelUtil<HxTasteSQL>(HxTasteSQL.class);
        util.exportExcel(response, list, "口味申请单数据");
    }

    /**
     * 获取口味申请单详细信息
     */
    /*@PreAuthorize("@ss.hasPermi('taste:query')")*/
    @GetMapping(value = "/query/{fid}")
    public AjaxResult getInfo(@PathVariable("fid") String fid)
    {
            return AjaxResult.success(hxTasteService.selectHxTasteByTasteId(fid));
    }

    /**
     * 新增口味申请单
     */
    @PreAuthorize("@ss.hasPermi('taste:add')")
    @RepeatSubmit(interval = 2000, message = "请求过于频繁")
    @Log(title = "口味申请单",businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody HxTasteSQL hxTaste)
    {
        AjaxResult result = new AjaxResult();
        //final String id = IdUtil.nanoId(36);
        final String id = "C29N"+IdUtil.fastSimpleUUID().toUpperCase();
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

    /**
     * 修改口味申请单
     */
    @PreAuthorize("@ss.hasPermi('taste:edit')")
    @RepeatSubmit(interval = 2000, message = "请求过于频繁")
    @Log(title = "口味申请单", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody HxTasteSQL hxTaste)
    {
        return toAjax(hxTasteService.updateHxTaste(hxTaste));
    }

    /**
     * 修改审批单走的流程
     */
    @PreAuthorize("@ss.hasPermi('taste:edit')")
    @RepeatSubmit(interval = 1000, message = "请求过于频繁")
    @PutMapping(value = "/editPresson")
    public AjaxResult editPresson(@RequestBody String data)
    {
        String id = JSONUtil.parseObj(data).getStr("id");
        String processNo = JSONUtil.parseObj(data).getStr("processNo");
        logger.info("传递内容1{}",id);
        logger.info("传递内容2{}",processNo);
        if(StrUtil.isEmpty(id)) {
            throw new RuntimeException("绑定流程失败,没有口味id");
        }
        if(StrUtil.isEmpty(processNo)) {
            throw new RuntimeException("绑定流程失败,没有流程编码");
        }
        HxTasteSQL hxTaste = hxTasteService.selectHxTasteByTasteId(id);
        /*if(StrUtil.isNotEmpty(hxTaste.getProcessNo())) {
            return null;
        }
        hxTaste.setProcessNo(processNo);*/
        return toAjax(hxTasteService.updateHxTasteStart(hxTaste));
    }

    /**
     * 删除口味申请单
     */
    @PreAuthorize("@ss.hasPermi('taste:remove')")
    @Log(title = "口味申请单", businessType = BusinessType.DELETE)
	@DeleteMapping("/{fid}")
    public AjaxResult remove(@PathVariable String[] fid)
    {
        return toAjax(hxTasteService.deleteHxTasteByTasteIds(fid));
    }

    /**
     * 作废口味申请单
     */
    @PreAuthorize("@ss.hasPermi('taste:waste')")
    @Log(title = "口味申请单作废", businessType = BusinessType.UPDATE)
    @GetMapping(value = "/waste/{fid}")
    public AjaxResult waste(@PathVariable("fid") String fid)
    {
        HxTasteSQL hxTaste = hxTasteService.selectHxTasteByTasteId(fid);
        // 校验
        if(hxTaste.getFstatus().equals(TatseFolderO.STATUS_1.getCode())){
            throw new ServiceException("该单已作废不可重复作废");
        }
        hxTaste.setFstatus(TatseFolderO.STATUS_1.getCode());
        return toAjax(hxTasteService.updateHxTasteStart(hxTaste));
    }

    /**
     *  口味申请单强制审核通过  taste:audit
     */
    @PreAuthorize("@ss.hasPermi('taste:audit')")
    @Log(title = "口味申请单强制审核通过", businessType = BusinessType.UPDATE)
    @GetMapping(value = "/audit/{fid}")
    public AjaxResult audit(@PathVariable("fid") String fid)
    {
        HxTasteSQL hxTaste = hxTasteService.selectHxTasteByTasteId(fid);
        int i = hxTaste.getFstatus();
        // 校验
        if(i == TatseFolderO.STATUS7.getCode()){
            throw new ServiceException("该单已审核通过不可重复审核");
        }
        if (i == TatseFolderO.STATUS0.getCode()&&i == TatseFolderO.STATUS1.getCode()&&i == TatseFolderO.STATUS5.getCode()){
            throw new ServiceException("只有已保存,已提交状态才可以强制审核");
        }
        hxTaste.setFstatus(TatseFolderO.STATUS7.getCode());
        return toAjax(hxTasteService.updateHxTasteStart(hxTaste));
    }





    /**
     * TODO
     *  口味申请单溯源 taste:audit  tasteCopyId   递归树结构
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
    @GetMapping("/oper/{tasteId}")
    public AjaxResult log(@PathVariable("tasteId") String tasteId){
        SysOperLog log = new SysOperLog();
        log.setOperUrl(tasteId);
        List<SysOperLog> logList = operLogService.selectOperLogList(log);
        List<SysOperLog> map = logList.stream().collect(Collectors.toList());
        return AjaxResult.success(map);
    }

    /**
     *  判断用户是否已经绑定了企业微信
     */
    @GetMapping(value = "/userDetail")
    public AjaxResult userDetail()
    {
        return AjaxResult.success(userService.selectUserById(getUserId()));
    }


    /**
     *  开始跟进---改变状态
     */
    @Log(title = "口味申请单开始跟进", businessType = BusinessType.UPDATE)
    @PutMapping(value = "/start")
    public AjaxResult start(@RequestBody HxTasteSQL h)
    {
        log.info("口味data:{}",h);
        HxTasteSQL hxTaste = hxTasteService.selectHxTasteByTasteId(h.getFid());
        int dataState = h.getFstatus();
        int i = hxTaste.getFstatus();
        // 校验
        // 退回分配---退回到重新分配调香师 ,如果状态小于分配产品跟进人,可以进行退回产品操作
        if(dataState < TatseFolderO.STATUS10.getCode()){
            //退回业务 -- 发送通知
            if("wxmsg".equals(h.getRemark())){
                SysConfig sysConfig = configService.selectConfigById(6L);
                String json ="{\n" +
                        "   \"touser\" : \"hanlele|UserID2|UserID3\",\n" +
                        "   \"toparty\" : \"PartyID1|PartyID2\",\n" +
                        "   \"totag\" : \"TagID1 | TagID2\",\n" +
                        "   \"msgtype\" : \"text\",\n" +
                        "   \"agentid\" : 1000042,\n" +
                        "   \"text\" : {\n" +
                        "   \"content\" : \" "+ DateUtil.format(DateUtils.getNowDate(), "yyyy/MM/dd HH:mm:ss")+"你的单据"+hxTaste.getFbillno()+"已被产品部退回，请修改后重新提交审核\"\n" +
                        "   },\n" +
                        "   \"safe\":0,\n" +
                        "   \"enable_id_trans\": 0,\n" +
                        "   \"enable_duplicate_check\": 0,\n" +
                        "   \"duplicate_check_interval\": 1800\n" +
                        "}";
                String body = HttpRequest.post("https://qyapi.weixin.qq.com/cgi-bin/message/send?access_token="+sysConfig.getConfigValue())
                        .body(json)
                        .execute().body();
                log.info("请求结果{}",body);
            }
            //改变状态为退回,清除分配的跟进人,申请人,设置原申请人
            hxTaste.setFstatus(TatseFolderO.STATUS3.getCode());
            hxTaste.setFfenpeigenjinren("");
            hxTaste.setFyuanshenqingren(hxTaste.getFshenqingren());
            hxTaste.setFshenqingren("");
            hxTasteService.updateHxTasteStart(hxTaste);
        }

        //分配跟进人 (状态是已审核可分配跟进人)
        if(dataState ==(TatseFolderO.STATUS7.getCode())){
            hxTaste.setFstatus(TatseFolderO.STATUS10.getCode());
            hxTaste.setFfenpeigenjinren(h.getFfenpeigenjinren());
            hxTasteService.updateHxTasteStart(hxTaste);
        }else{
            throw new ServiceException("只有已审核状态,才可分配跟进人");
        }

        //开始跟进流程  流程等于 分配跟进人状态下允许操作 状态变更更为11跟进中
        if(dataState ==(TatseFolderO.STATUS10.getCode())){
            if(i != TatseFolderO.STATUS10.getCode()){
                throw new ServiceException("未分配跟进人,不能开始跟进");
            }else {checkOut(hxTaste);}
            hxTaste.setFstatus(TatseFolderO.STATUS11.getCode());
            hxTasteService.updateHxTasteStart(hxTaste);

        }
        //已推送研发  流程等于20跟进中 分配跟进人状态下允许操作
        if(dataState ==(TatseFolderO.STATUS11.getCode())){
            if(i < TatseFolderO.STATUS20.getCode()){
                throw new ServiceException("状态不正确,请确保微信审批已通过,以及口味明细调香师再开始推送研发");
            }else {checkOut(hxTaste);}
            hxTaste.setFstatus(TatseFolderO.STATUS20.getCode());
            hxTasteService.updateHxTasteStart(hxTaste);
        }

        //开始跟进流程  流程等于20 分配跟进人状态下允许操作(谁开始跟进==>调香师，改变什么，改变时间，但是不在这里 )
        if(dataState ==(TatseFolderO.STATUS20.getCode())){
            if(i != TatseFolderO.STATUS20.getCode()){
                throw new ServiceException("状态不正确,请确保微信审批已通过,以及口味明细调香师再开始跟进");
            }else  {checkOut(hxTaste);}
            hxTaste.setFstatus(TatseFolderO.STATUS21.getCode());
            hxTasteService.updateHxTasteStart(hxTaste);
        }

        // 反确认配方  大于21,配方在开发中的可以退回去
        if(dataState > (TatseFolderO.STATUS21.getCode())){
            if(dataState < TatseFolderO.STATUS39.getCode()){
                throw new ServiceException("口味已确认完毕不可以再反确认配方");
            }
            hxTaste.setFstatus(TatseFolderO.STATUS21.getCode());
            hxTasteService.updateHxTasteStart(hxTaste);
        }
        // 确认配方
        if(dataState ==(TatseFolderO.STATUS21.getCode())){
            hxTaste.setFstatus(TatseFolderO.STATUS29.getCode());
            hxTasteService.updateHxTasteStart(hxTaste);
        }
        //STATUS 30-39 口味确认中->打印口味确认书->口味确认完毕  缺少TODO
        //结案完成  申请结果等于结案完成
        if(dataState ==(TatseFolderO.STATUS39.getCode())){
            if(i==(TatseFolderO.STATUS39.getCode())){
                throw new ServiceException("不可重复结案完成");
            }
            hxTaste.setFstatus(TatseFolderO.STATUS99.getCode());
            hxTasteService.updateHxTasteStart(hxTaste);
        }

        return AjaxResult.success("ok");
    }

    //校验工具
    public void checkOut(HxTasteSQL hxTaste){
        if (CollUtil.isNotEmpty(hxTaste.getHxTasteDetailList())){
            for (int j = 0; j < hxTaste.getHxTasteDetailList().size(); j++) {
                if(StrUtil.isEmpty(hxTaste.getHxTasteDetailList().get(j).getFfentiaoxiangshi())){
                    throw new ServiceException("您应该是一个口味都没有分配调香师,你说我猜的对不对?");
                }
                break;
            }
        }else{
            throw new ServiceException("请添加口味明细,你说我猜的对不对?");
        }
    }



    /**
     * 流程优惠
     * @param money
     * @param type
     * @return
     */
    @GetMapping(value = "/getResult")
    private static double getResult(long money, int type) {

        double result = money;

        if (money >= 1000) {
            if (type == 1) {

                System.out.println("白银会员 优惠50元");
                result = money - 50;
            } else if (type == 2) {

                System.out.println("黄金会员 8折");
                result = money * 0.8;
            } else if (type == 3) {

                System.out.println("白金会员 优惠50元，再打7折");
                result = (money - 50) * 0.7;
            } else {
                System.out.println("普通会员 不打折");
                result = money;
            }
        }

        return result;
    }

}
