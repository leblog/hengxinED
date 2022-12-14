package com.hx.web.controller.wx.v1;

import cn.hutool.core.map.MapUtil;
import cn.hutool.crypto.SecureUtil;
import cn.hutool.http.HttpUtil;
import cn.hutool.json.JSONObject;
import cn.hutool.json.JSONUtil;
import com.hx.common.core.controller.BaseController;
import com.hx.common.core.domain.AjaxResult;
import com.hx.common.exception.ServiceException;
import com.hx.common.utils.uuid.SeqRD;
import com.hx.system.domain.SysConfig;
import com.hx.system.service.ISysConfigService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;

@Slf4j
@RestController
@RequestMapping("/open")
@EnableScheduling    //开启定时任务
public class WxCommon extends BaseController {
    @Autowired
    private ISysConfigService configService;

    /**
     * 定时任务获取 ACCESS_TOKEN
     * 每3400秒执行一次更新操作
     * @return
     */

    @Scheduled(fixedDelay = 120000)
    public void getToken(){
        // 优化存在系统配置中,不判断失效,每一小时拉取更新一次,存入数据库中
        // 自带审批应用 lAi8lBjZtLq2h687uoOzy1MaRXPVM1NNi7MGNapOD-w lAi8lBjZtLq2h687uoOzy1MaRXPVM1NNi7MGNapOD-w
        // 自建审批应用 HQ9pPvMX8kZ4DaXBfsadodwoG1mi2aoYt868Z7H-l1E
        // 测试工程--测试账号
       /* String URLALL = "https://qyapi.weixin.qq.com/cgi-bin/gettoken" +
                "?corpid=wwa3240966154cab12" +
                "&corpsecret=lAi8lBjZtLq2h687uoOzy1MaRXPVM1NNi7MGNapOD-w";*/
        //  恒信科技
        String URLALL = "https://qyapi.weixin.qq.com/cgi-bin/gettoken" +
                "?corpid=ww0530511650e0c6c8" +
                "&corpsecret=oo3yxMeLKEFZrbwe91ERqYCcP8Ak_Q0Oo8Pl8ipxnxA";
        String result = HttpUtil.get(URLALL);
        JSONObject obj = JSONUtil.parseObj(result);
        String token = obj.getStr("access_token");
        log.info("====accessToken====:{}",token);
        if(!"0".equals(obj.getStr("errcode"))){
            throw new ServiceException("获取微信token异常");
        }
        // 存入/更新token
        SysConfig config = new SysConfig();
        config.setConfigId(6L);
        config.setConfigValue(token);
        configService.updateConfig(config);
        log.info("企业微信token:{},更新了{}行",token,configService.updateConfig(config));
    }


    /**
     * 获取企业的jsapi_ticket
     * 每120秒执行一次更新操作
     */
    @Scheduled(fixedDelay = 120000)
    @CrossOrigin
    public void jsapiTicket() {
        // 查询出来企业token  数据缓存
        String accessToken = configService.selectConfigByKey("wx.work.accessToken");
        String url = "https://qyapi.weixin.qq.com/cgi-bin/get_jsapi_ticket?access_token="+accessToken;
        String res = HttpUtil.get(url);
        String jsapiTicket = JSONUtil.parseObj(res).getStr("ticket");
        log.info("企业票据请求结果wxCommon{}",res);
        if(!"0".equals(JSONUtil.parseObj(res).getStr("errcode"))){
            throw new ServiceException("获取微信获取企业的jsapi_ticket异常");
        }
        //更新票据
        SysConfig config = new SysConfig();
        config.setConfigId(7L);
        config.setConfigValue(jsapiTicket);
        configService.updateConfig(config);
        log.info("企业微信票据(获取企业的jsapi_ticket):"+jsapiTicket);
    }


    /**
     * 获取应用的jsapi_ticket
     * 每120秒执行一次更新操作
     */
    @Scheduled(fixedDelay = 120000)
    public void jsapiAppTicket() {
        // 查询出来企业token  数据缓存
        String accessToken = configService.selectConfigByKey("wx.work.accessToken");

        String url = "https://qyapi.weixin.qq.com/cgi-bin/ticket/get?access_token="+accessToken+"&type=agent_config";
        String res = HttpUtil.get(url);
        String jsapiTicket = JSONUtil.parseObj(res).getStr("ticket");
        log.info("应用票据请求结果{}",res);
        if(!"0".equals(JSONUtil.parseObj(res).getStr("errcode"))){
            throw new ServiceException("获取微信获取应用的jsapi_ticket异常");
        }
        //更新票据
        SysConfig config = new SysConfig();
        config.setConfigId(8L);
        config.setConfigValue(jsapiTicket);
        configService.updateConfig(config);
        log.info("企业微信票据(获取应用的jsapi_ticket):"+jsapiTicket);
    }

    /**
     * 企业微信js-SDK  加密算法
     * @param data
     * @return
     */
    @PostMapping("/code")
    public AjaxResult jsapiAppTicketAppCode(@RequestBody String data) {
        log.info("map----{}", data);
        String url = JSONUtil.parseObj(data).getStr("url");

        AjaxResult ajax = new AjaxResult();
        String app = configService.selectConfigByKey("wx.work.jsapiTicket.app");
        StringBuilder s2 = new StringBuilder();
        s2.append("jsapi_ticket=");
        s2.append(app);
        s2.append("&noncestr=1234&timestamp=1414587457&url=");
        s2.append(url);
        log.info("完成URLs2=====>{}",s2);
        String appCode = SecureUtil.sha1(String.valueOf(s2));

        System.out.println("app加密字符 = " + s2);
        log.info("app加密code:{}",appCode);
        ajax.put("signature",appCode);
        return AjaxResult.success("ok",ajax);
    }
    @PostMapping("/codeApp")
    public AjaxResult jsapiAppTicketApp(@RequestBody String data) {
        log.info("map----{}", data);
        String url = JSONUtil.parseObj(data).getStr("url");

        AjaxResult ajax = new AjaxResult();
        String jsapiTicket = configService.selectConfigByKey("wx.work.jsapiTicket");
        StringBuilder s1 = new StringBuilder();
        s1.append("jsapi_ticket=");
        s1.append(jsapiTicket);
        s1.append("&noncestr=1234&timestamp=1414587457&url=");
        s1.append(url);
        String apiCode = SecureUtil.sha1(String.valueOf(s1));
        System.out.println("api加密字符 = " + s1);
        log.info("完成URLs1=====>{}",s1);
        log.info("api加密code:{}",apiCode);
        ajax.put("signature",apiCode);
        return AjaxResult.success("ok",ajax);
    }



}
