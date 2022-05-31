package com.hx.web.controller.wx;

import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;

/**
 * 企业微信授权登录,回调
 */
@Slf4j
@RestController
@RequestMapping("/open/wx/callback")
public class WxCallback {
    //http://hxapi.vaiwan.cn/open/wx/callback/info?authorization_code=11
    //https://open.weixin.qq.com/connect/oauth2/authorize
    // ?appid=wwa3240966154cab12
    // &redirect_uri=http://hxapi.vaiwan.cn/open/wx/callback/info
    // &response_type=code
    // &scope=snsapi_base
    // &state=STATE
    // &connect_redirect=1

    @GetMapping("/info")
    public String info(String authorization_code, HashMap<String,String> map) {
        log.info(authorization_code);
        return "获取TK成功:[" + authorization_code + "]";
    }

}
