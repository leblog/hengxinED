package com.hx.web.controller.wx.v1;

import cn.hutool.core.date.DateUtil;
import cn.hutool.core.util.StrUtil;
import cn.hutool.http.HttpRequest;
import cn.hutool.json.JSONObject;
import cn.hutool.json.JSONUtil;
import com.hx.common.annotation.Log;
import com.hx.common.annotation.RepeatSubmit;
import com.hx.common.core.domain.AjaxResult;
import com.hx.common.core.domain.entity.SysUser;
import com.hx.common.enums.BusinessType;
import com.hx.common.exception.ServiceException;
import com.hx.system.domain.HxTaste;
import com.hx.system.domain.vo.WxTxtMsgReqVo;
import com.hx.system.domain.vo.WxTxtMsgResVo;
import com.hx.system.service.IHxTasteService;
import com.hx.system.service.ISysConfigService;
import com.hx.system.service.ISysUserService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.awt.*;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Objects;

import static com.hx.common.utils.SecurityUtils.getUserId;

/**
 * 企业微信自带的审批功能
 */
@Slf4j
@RestController
@RequestMapping("/system/wxOwn/callback")
public class WxOwnAuit {

    @Autowired
    private IHxTasteService hxTasteService;
    @Autowired
    private ISysConfigService configService;
    @Autowired
    private ISysUserService userService;
    /*获取请假模板的列表*/
    private static String URLALL = "https://qyapi.weixin.qq.com/cgi-bin/gettoken?corpid=wwa3240966154cab12&corpsecret=lAi8lBjZtLq2h687uoOzy1MaRXPVM1NNi7MGNapOD-w";
    /*测试 -- 企业微信某个审批模板*/
    private static String URLAUITDETAIL = "https://qyapi.weixin.qq.com/cgi-bin/oa/gettemplatedetail";
    private static String URLAUITDETAILT;
    // 烟油审核模板ID  ZvdTVeobXMC5omTwtvaLqovMUbWX62nv272c2c
    private static String TEMPLATE_ID = "ZvdTVeobXMC5omTwtvaLqovMUbWX62nv272c2c";
    // 模板详情结果
    public String result2;
    //提交模板结果
    public String result3;
    public String token;
    /*
     * https://qyapi.weixin.qq.com/cgi-bin/gettoken?corpid=wwa3240966154cab12&corpsecret=lAi8lBjZtLq2h687uoOzy1MaRXPVM1NNi7MGNapOD-w
     */
    // 提交审核接口
    private String COMMITAPI = "https://qyapi.weixin.qq.com/cgi-bin/oa/applyevent";
    // 提交审核的参数
    private String COMMITPARAM = "{\"creator_userid\":\"HanLeLe\",\"template_id\":\"ZvdTVeobXMC5omTwtvaLqovMUbWX62nv272c2c\",\"use_template_approver\":0,\"approver\":[{\"attr\":2,\"userid\":[\"HanLeLe\"]},{\"attr\":1,\"userid\":[\"HanLeLe\"]}],\"notifyer\":[\"HanLeLe\"],\"notify_type\":1,\"apply_data\":{\"contents\":[{\"control\":\"Text\",\"id\":\"Text-1640339319582\",\"value\":{\"text\":\"测试单据ID111\"}},{\"control\":\"Date\",\"id\":\"Date-1660882636793\",\"value\":{\"date\":{\"type\":\"day\",\"s_timestamp\":\"1660895887\"}}},{\"control\":\"Contact\",\"id\":\"Contact-1660882681523\",\"value\":{\"members\":[{\"userid\":\"HanLeLe\",\"name\":\"韩乐乐\"}]}},{\"control\":\"Contact\",\"id\":\"Contact-1660882725024\",\"value\":{\"departments\":[{\"openapi_id\":\"1\",\"name\":\"销售部\"}]}},{\"control\":\"Text\",\"id\":\"Text-1660882747027\",\"value\":{\"text\":\"客户名称222\"}}]},\"summary_list\":[{\"summary_info\":[{\"text\":\"摘要第1行\",\"lang\":\"zh_CN\"}]},{\"summary_info\":[{\"text\":\"摘要第2行\",\"lang\":\"zh_CN\"}]},{\"summary_info\":[{\"text\":\"摘要第3行\",\"lang\":\"zh_CN\"}]}]}";


    /**
     * 获取模板详情   --- 调试使用
     * @return
     * @throws AWTException
     * @throws InterruptedException
     */
    @RepeatSubmit(interval = 1000, message = "请求过于频繁")
    @Log(title = "口味申请单-增加微信审批单号", businessType = BusinessType.INSERT)
    @GetMapping("/push/{tasteId}")
    public AjaxResult push(@PathVariable("tasteId") String tasteId) {
        HxTaste hxTaste = hxTasteService.selectHxTasteByTasteId(tasteId);
        if(StrUtil.isNotEmpty(hxTaste.getSpNo())){
            throw new ServiceException("该单已提交审批不可重复审批,若状态未更新请点击更新审批结果");
        }else{
            // 获取token
            getToken();
            // 绑定企业微信审批编码到口味单
            commitPush(tasteId);
            JSONObject entries = JSONUtil.parseObj(result3);
            String errCode = entries.getStr("errcode");
            String spNo = entries.getStr("sp_no");
            log.info(entries.getStr("errcode"));
            if("0".equals(errCode)){
                // 存入数据 成功的编码
                hxTaste.setTasteId(tasteId);
                hxTaste.setSpNo(spNo);
                hxTasteService.updateHxTaste(hxTaste);
                return AjaxResult.success("提交审核成功",result3);
            }else{
                return AjaxResult.error(503,result3);
            }
        }
    }
    /**
     * 处理JSON 参数用于提交
     */
    public String commitPush(String tasteId){
        SysUser user = userService.selectUserById(getUserId());
        HxTaste hxTaste = hxTasteService.selectHxTasteByTasteId(tasteId);
        // {"creator_userid":"HanLeLe","template_id":"ZvdTVeobXMC5omTwtvaLqovMUbWX62nv272c2c","use_template_approver":0,"approver":[{"attr":2,"userid":["HanLeLe"]},{"attr":1,"userid":["HanLeLe"]}],"notifyer":["HanLeLe"],"notify_type":1,"apply_data":{"contents":[{"control":"Text","id":"Text-1640339319582","value":{"text":"测试单据ID111"}},{"control":"Date","id":"Date-1660882636793","value":{"date":{"type":"day","s_timestamp":"1660895887"}}},{"control":"Contact","id":"Contact-1660882681523","value":{"members":[{"userid":"HanLeLe","name":"韩乐乐"}]}},{"control":"Contact","id":"Contact-1660882725024","value":{"departments":[{"openapi_id":"1","name":"销售部"}]}},{"control":"Text","id":"Text-1660882747027","value":{"text":"客户名称222"}}]},"summary_list":[{"summary_info":[{"text":"摘要第1行","lang":"zh_CN"}]},{"summary_info":[{"text":"摘要第2行","lang":"zh_CN"}]},{"summary_info":[{"text":"摘要第3行","lang":"zh_CN"}]}]}
        String tempJson = "{\"creator_userid\" : \""+user.getWxUserId()+"\",\"template_id\":\"ZvdTVeobXMC5omTwtvaLqovMUbWX62nv272c2c\",\"use_template_approver\":1,\"approver\":[{\"attr\":2,\"userid\":[\"HanLeLe\"]},{\"attr\":1,\"userid\":[\"HanLeLe\"]}],\"notifyer\":[\"HanLeLe\"],\"notify_type\":1,\"apply_data\":{\"contents\":[{\"control\":\"Text\",\"id\":\"Text-1640339319582\",\"value\":{\"text\":\""+hxTaste.getTasteId()+"\"}},{\"control\":\"Date\",\"id\":\"Date-1660882636793\",\"value\":{\"date\":{\"type\":\"day\",\"s_timestamp\":\""+System.currentTimeMillis()/1000L+"\"}}},{\"control\":\"Contact\",\"id\":\"Contact-1660882681523\",\"value\":{\"members\":[{\"userid\":\""+user.getWxUserId()+"\",\"name\":\""+user.getUserName()+"\"}]}},{\"control\":\"Contact\",\"id\":\"Contact-1660882725024\",\"value\":{\"departments\":[{\"openapi_id\":\"1\",\"name\":\"销售部\"}]}},{\"control\":\"Text\",\"id\":\"Text-1660882747027\",\"value\":{\"text\":\""+hxTaste.getCustomersName()+"\"}}]},\"summary_list\":[{\"summary_info\":[{\"text\":\"样品数量: "+hxTaste.getSendNum()+"\",\"lang\":\"zh_CN\"}]},{\"summary_info\":[{\"text\":\"口味数量:"+hxTaste.getTasteNum()+"\",\"lang\":\"zh_CN\"}]},{\"summary_info\":[{\"text\":\"期望完成时间:"+ DateUtil.format(hxTaste.getExpectedCompletionTime(), "yyyy/MM/dd")+"\",\"lang\":\"zh_CN\"}]}]}";

        //log.info("我是JSON11111 {}",JSONUtil.formatJsonStr(tempJson));
        //log.info("我是JSON22222 {}",COMMITPARAM);
        String url = COMMITAPI+"?access_token="+token;
        log.info("审批提交链接:"+url);
        result3 = HttpRequest.post(url)
                .body(tempJson)
                .timeout(20000)
                .execute().body();
        return result3;
    }



    /**
     * 审批详情接口
     * @param spNo
     * @return
     */
    @RepeatSubmit(interval = 1000, message = "请求过于频繁")
    @GetMapping("/auitDetail/{spNo}")
    public AjaxResult auitDetail(@PathVariable("spNo") String spNo) {
        getToken();
        String url = "https://qyapi.weixin.qq.com/cgi-bin/oa/getapprovaldetail?access_token="+token;
        String tempJson = "{\"sp_no\" : \""+spNo+"\"}";
        log.info("审批详情链接:"+url);
        String res = HttpRequest.post(url)
                .body(tempJson)
                .timeout(20000)
                .execute().body();
        return AjaxResult.success("ok",JSONUtil.parseObj(res));
    }

    /**
     * 更新(同步)审批接口  https://developer.work.weixin.qq.com/document/path/90269#4%E6%9F%A5%E8%AF%A2%E8%87%AA%E5%BB%BA%E5%BA%94%E7%94%A8%E5%AE%A1%E6%89%B9%E5%8D%95%E5%BD%93%E5%89%8D%E7%8A%B6%E6%80%81
     * @param spNo
     * @return
     */
    @RepeatSubmit(interval = 1000, message = "请求过于频繁")
    @Log(title = "口味申请单-更新审批状态", businessType = BusinessType.UPDATE)
    @GetMapping("/updateAuitDetail/{spNo}")
    public AjaxResult updateAuitDetail(@PathVariable("spNo") String spNo) {
        String token1 = configService.selectConfigByKey("wx.work.accessToken");
        String url = " https://qyapi.weixin.qq.com/cgi-bin/corp/getopenapprovaldata?access_token="+token1;
        String tempJson = "{\"thirdNo\" : \""+spNo+"\"}";
        String res = HttpRequest.post(url)
                .body(tempJson)
                .timeout(20000)
                .execute().body();
        log.info("res:{}",res);
        if(!Objects.equals(JSONUtil.parseObj(res).getStr("errmsg"), "ok")){
            throw new ServiceException("没有提交审批或撤销审批");
        }
        String str = JSONUtil.parseObj(JSONUtil.parseObj(res).getStr("data")).getStr("OpenSpstatus");
        HxTaste hxTaste = new HxTaste();
        hxTaste.setTasteId(spNo);
        List<HxTaste> list = hxTasteService.selectHxTasteList(hxTaste);
        String state = list.get(0).getState();
        if(Objects.equals(str, state)){
            throw new ServiceException("企业微信审批状态与研发系统状态一致,请勿重复更新状态");
        }else{
            //状态不一致  同步更新
            HxTaste hxTasteT = new HxTaste();
            hxTasteT.setTasteId(list.get(0).getTasteId());
            hxTasteT.setState(str);
            int i = hxTasteService.updateHxTaste(hxTasteT);
            return AjaxResult.success("审核状态不一致,已同步最新审核单状态");
        }

    }


    // 获取token方法
    public String getToken(){
        token = configService.selectConfigByKey("wx.work.accessToken");
        log.info("token:{}", token);
        return token;
    }

}
