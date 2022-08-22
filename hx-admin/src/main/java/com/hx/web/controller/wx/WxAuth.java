package com.hx.web.controller.wx;

import cn.hutool.http.HttpRequest;
import cn.hutool.http.HttpUtil;
import cn.hutool.json.JSONUtil;
import com.hx.common.annotation.RepeatSubmit;
import com.hx.common.core.domain.AjaxResult;
import com.hx.system.domain.vo.WxTxtMsgReqVo;
import com.hx.system.domain.vo.WxTxtMsgResVo;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.time.LocalDateTime;

@Slf4j
@RestController
@RequestMapping("/open/wx/callback")
public class WxAuth {

    /**
     * 授权成功302 回调
     * @param code  , HashMap<String,String> map
     * @return
     */
    @GetMapping("/code")
    public AjaxResult info(String code) {
        log.info(code);
        if(code.length()>=43){
            return AjaxResult.success(code);
        }else{
            return AjaxResult.error(code);
        }

    }

    /**
     * 构造网页授权链接
     * @param
     * @return
     */
    @RepeatSubmit(interval = 1000, message = "请求过于频繁")
    @GetMapping("/oauth2")
    @CrossOrigin
    public AjaxResult oauth2() {
        String url = "https://open.weixin.qq.com/connect/oauth2/authorize?appid=wwa3240966154cab12&redirect_uri=http://myweb.com:8081/open/wx/callback/code&response_type=code&scope=snsapi_base&state=STATE&agentid=AGENTID";
        log.info("企业微信授权:"+url);
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
        log.info("请求数据:{}",JSONUtil.formatJsonStr(String.valueOf(res)));
        return res;
    }


}
