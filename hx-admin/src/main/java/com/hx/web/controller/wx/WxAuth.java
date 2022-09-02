package com.hx.web.controller.wx;

import cn.hutool.core.util.StrUtil;
import cn.hutool.http.Header;
import cn.hutool.http.HttpRequest;
import cn.hutool.http.HttpUtil;
import cn.hutool.json.JSONObject;
import cn.hutool.json.JSONUtil;
import com.hx.common.annotation.RepeatSubmit;
import com.hx.common.core.controller.BaseController;
import com.hx.common.core.domain.AjaxResult;
import com.hx.common.core.domain.entity.SysUser;
import com.hx.common.exception.ServiceException;
import com.hx.common.utils.StringUtils;
import com.hx.system.domain.SysConfig;
import com.hx.system.domain.vo.WxTxtMsgReqVo;
import com.hx.system.domain.vo.WxTxtMsgResVo;
import com.hx.system.service.ISysConfigService;
import com.hx.system.service.ISysUserService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDateTime;

import static com.hx.common.utils.SecurityUtils.getUserId;
import static com.hx.common.utils.SecurityUtils.getUsername;

@Slf4j
//@EnableScheduling    //开启定时任务
@RestController
@RequestMapping("/open/wx/callback")
public class WxAuth extends BaseController {
    @Autowired
    private ISysConfigService configService;
    @Autowired
    private ISysUserService userService;


    @RequestMapping("/WW_verify_fQ0i7eNKs0f27cyL.txt")
    public String info() {
        return StringUtils.format("fQ0i7eNKs0f27cyL");
    }

    /**
     * 授权成功302 回调   回调执行内容  获取用户code信息
     *
     * @param code , HashMap<String,String> map
     * @return
     */
    @GetMapping("/code")
    public AjaxResult info(String code, HttpServletResponse response) throws IOException {
        log.info("路径参数code:{}", code);
        if (code.length() >= 43) {
            response.sendRedirect("https://open.weixin.qq.com/connect/oauth2/authorize" +
                    "?appid=wwa3240966154cab12" +
                    "&redirect_uri=http://myweb.com" +
                    "&response_type=code" +
                    "&scope=snsapi_base" +
                    "&state=STATE" +
                    "&agentid=AGENTID#wechat_redirect");
            //response.sendRedirect("http://myweb.com/login");
            //response.sendRedirect("http://myweb.com/login?redirect=/index&code="+code);
            String accessToken = configService.selectConfigByKey("wx.work.accessToken");
            String res = HttpRequest.post("https://qyapi.weixin.qq.com/cgi-bin/user/getuserdetail?access_token=" + accessToken)
                    .body("{ \"user_ticket\": \"+" + code + "+\"}")
                    .timeout(20000)//超时，毫秒
                    .execute().body();
            log.info("user_ticket换取详细信息:{}", res);
            return AjaxResult.success("ok", code);
        } else {
            return AjaxResult.error("err", code);
        }
    }

    /**
     * 重定向  测试
     */
    @GetMapping("/redirect")
    public String redirect()
    {
        return redirect("http://rds.cnhstar.com:44346/print");
    }
    @RequestMapping("/str")
    public AjaxResult info(@RequestBody String s)
    {
        log.info("大家好{}",s);
        return AjaxResult.success("ok",s);
    }
    @GetMapping("/wxAuthorize")
    public String wxAuthorize()
    {
        String s = HttpRequest.get("https://open.weixin.qq.com/connect/oauth2/authorize?appid=ww0530511650e0c6c8&redirect_uri=http://rds.cnhstar.com:44346&response_type=code&scope=snsapi_base&state=#wechat_redirect")
                .header(Header.USER_AGENT, "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36 wxwork/2.1.3 (MicroMessenger/6.2) WindowsWechat QBCore/3.43.644.400 QQBrowser/9.0.2524.400")
                .timeout(20000)//超时，毫秒
                .execute().body();
        return redirect(s);
    }

    /**
     * 调用用户的详情信息,绑定现在的系统上面
     */
    @RepeatSubmit(interval = 1000, message = "请求过于频繁")
    @GetMapping("/userIfo/{code}")
    @CrossOrigin
    public AjaxResult userIfo(@PathVariable("code") String code) {
        String accessToken = configService.selectConfigByKey("wx.work.accessToken");
        String url = "https://qyapi.weixin.qq.com/cgi-bin/user/getuserinfo?access_token=" + accessToken + "&code=" + code + "";
        String s = HttpUtil.get(url);

        String DeviceId = JSONUtil.parseObj(s).getStr("DeviceId");
        String UserId = JSONUtil.parseObj(s).getStr("UserId");
        log.info("用户code换取信息:{}", s);
        log.info("用户code换取信息:{}", DeviceId);
        if (!JSONUtil.parseObj(s).getStr("errcode").equals("0")) {
            throw new ServiceException("绑定微信ID失败,请退出系统重试");
        }
        //绑定到本机中账户
        SysUser user = new SysUser();
        user.setUserId(getUserId());
        user.setWxUserId(UserId);
        return AjaxResult.success("ok", userService.updateUser(user));
    }

    /**
     * js-SDK签名中回调
     *
     * @param params
     * @return
     */
    @RepeatSubmit(interval = 1000, message = "请求过于频繁")
    @GetMapping("/sdk")
    @CrossOrigin
    public AjaxResult sdk(String params) {
        log.info("sdk在此:{}", params);
        return AjaxResult.success("ok", params);
    }

    // https://open.weixin.qq.com/connect/oauth2/authorize?appid=wwa3240966154cab12&redirect_uri=http://myweb.com:8081/open/wx/callback/code&response_type=code&scope=snsapi_base&state=STATE&agentid=1000003#wechat_redirect

    /**
     * 构造网页授权链接
     *
     * @param
     * @return
     */
    @RepeatSubmit(interval = 1000, message = "请求过于频繁")
    @GetMapping("/oauth2")
    @CrossOrigin
    public AjaxResult oauth2() {
        String url = "https://open.weixin.qq.com/connect/oauth2/authorize?appid=wwa3240966154cab12&redirect_uri=http://myweb.com:8081/open/wx/callback/code&response_type=code&scope=snsapi_base&state=STATE&agentid=AGENTID";
        log.info("企业微信授权:" + url);
        String res = HttpUtil.get(url);
        return AjaxResult.success("ok", JSONUtil.parseObj(res));
    }

    /**
     * 回调开启接收消息
     * @return
     */
    /*@RepeatSubmit(interval = 1000, message = "请求过于频繁")
    @GetMapping("/signature")
    @CrossOrigin
    public AjaxResult signature(String msg_signature,String timestamp,String nonce,String echostr) {
        log.info("企业微信授权{}:"+msg_signature+timestamp+nonce+echostr);
        return AjaxResult.success("ok", JSONUtil.parseObj(res));
    }*/
/**
 * 获取审批状态变化回调
 */
    /**
     * curl -X POST 'http://localhost:8080/xml/callback' -H 'content-type:application/xml' -d '<xml><URL><![CDATA[https://hhui.top]]></URL><ToUserName><![CDATA[一灰灰blog]]></ToUserName><FromUserName><![CDATA[123]]></FromUserName><CreateTime>1655700579</CreateTime><MsgType><![CDATA[text]]></MsgType><Content><![CDATA[测试]]></Content><MsgId>11111111</MsgId></xml>' -i
     *
     * @param msg
     * @param request
     * @return
     */
    @GetMapping(value = "/xml",
            consumes = {"application/xml", "text/xml"},
            produces = "application/xml;charset=utf-8")
    public WxTxtMsgResVo callBack(@RequestBody WxTxtMsgReqVo msg, HttpServletRequest request) {
        WxTxtMsgResVo res = new WxTxtMsgResVo();
        res.setFromUserName(msg.getToUserName());
        res.setToUserName(msg.getFromUserName());
        res.setCreateTime(System.currentTimeMillis() / 1000);
        res.setMsgType("text");
        res.setContent("hello: " + LocalDateTime.now());
        log.info("请求数据:{}", JSONUtil.formatJsonStr(String.valueOf(res)));
        return res;
    }

    /**
     * 定时任务获取 ACCESS_TOKEN
     * 每3400秒执行一次更新操作
     *
     * @return
     */

    //@Scheduled(fixedDelay = 3400000)
    @RepeatSubmit(interval = 1000, message = "请求过于频繁")
    @GetMapping("/getToken")
    public void getToken() {
        // 优化存在系统配置中,不判断失效,每一小时拉取更新一次,存入数据库中
        // 审批应用 lAi8lBjZtLq2h687uoOzy1MaRXPVM1NNi7MGNapOD-w   自建审批应用 HQ9pPvMX8kZ4DaXBfsadodwoG1mi2aoYt868Z7H-l1E     HQ9pPvMX8kZ4DaXBfsadodwoG1mi2aoYt868Z7H-l1E
        String URLALL = "https://qyapi.weixin.qq.com/cgi-bin/gettoken?corpid=wwa3240966154cab12&corpsecret=HQ9pPvMX8kZ4DaXBfsadodwoG1mi2aoYt868Z7H-l1E";
        //  恒信科技
        //  String URLALL = "https://qyapi.weixin.qq.com/cgi-bin/gettoken?corpid=ww0530511650e0c6c8&corpsecret=oo3yxMeLKEFZrbwe91ERqYCcP8Ak_Q0Oo8Pl8ipxnxA";
        String result = HttpUtil.get(URLALL);
        JSONObject obj = JSONUtil.parseObj(result);
        String token = obj.getStr("access_token");
        if (!"0" .equals(obj.getStr("errcode"))) {
            throw new ServiceException("获取微信token异常");
        }
        // 存入/更新token
        SysConfig config = new SysConfig();
        config.setConfigId(6L);
        config.setConfigValue(token);
        configService.updateConfig(config);
        log.info("企业微信token:{},更新了{}行", token, configService.updateConfig(config));
    }


    /**
     * 获取企业的jsapi_ticket
     * 每3500秒执行一次更新操作
     */
    @RepeatSubmit(interval = 1000, message = "请求过于频繁")
    //@Scheduled(fixedDelay = 3500000)
    @GetMapping("/jsapiTicket")
    @CrossOrigin
    public void jsapiTicket() {
        // 查询出来企业token  数据缓存
        String accessToken = configService.selectConfigByKey("wx.work.accessToken");
        log.info("业务accessToken:{}", accessToken);
        String url = "https://qyapi.weixin.qq.com/cgi-bin/get_jsapi_ticket?access_token=" + accessToken;
        String res = HttpUtil.get(url);
        String jsapiTicket = JSONUtil.parseObj(res).getStr("ticket");
        log.info("企业票据请求结果wxauth{}", res);
        if (!"0" .equals(JSONUtil.parseObj(res).getStr("errcode"))) {
            throw new ServiceException("获取微信获取企业的jsapi_ticket异常");
        }
        //更新票据
        SysConfig config = new SysConfig();
        config.setConfigId(7L);
        config.setConfigValue(jsapiTicket);
        configService.updateConfig(config);
        log.info("企业微信票据(获取企业的jsapi_ticket):" + jsapiTicket);
    }


    /**
     * 获取应用的jsapi_ticket
     * 每3500秒执行一次更新操作
     */
    @RepeatSubmit(interval = 1000, message = "请求过于频繁")
    //@Scheduled(fixedDelay = 3500000)
    @GetMapping("/jsapiAppTicket")
    @CrossOrigin
    public void jsapiAppTicket() {
        // 查询出来企业token  数据缓存
        String accessToken = configService.selectConfigByKey("wx.work.accessToken");

        String url = "https://qyapi.weixin.qq.com/cgi-bin/ticket/get?access_token=" + accessToken + "&type=agent_config";
        String res = HttpUtil.get(url);
        String jsapiTicket = JSONUtil.parseObj(res).getStr("ticket");
        log.info("应用票据请求结果{}", res);
        if (!"0" .equals(JSONUtil.parseObj(res).getStr("errcode"))) {
            throw new ServiceException("获取微信获取应用的jsapi_ticket异常");
        }
        //更新票据
        SysConfig config = new SysConfig();
        config.setConfigId(8L);
        config.setConfigValue(jsapiTicket);
        configService.updateConfig(config);
        log.info("企业微信票据(获取应用的jsapi_ticket):" + jsapiTicket);
    }




}
