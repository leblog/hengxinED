package com.hx.web.controller.wx;

import cn.hutool.http.Header;
import cn.hutool.http.HttpRequest;
import com.hx.common.core.domain.AjaxResult;
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
    private static String CORPID = "wwa3240966154cab12";
    private static String CORPSECRET = "lAi8lBjZtLq2h687uoOzy1MaRXPVM1NNi7MGNapOD-w";
    private static String URL = "https://qyapi.weixin.qq.com/cgi-bin/gettoken";
    private static String URLALL = "https://qyapi.weixin.qq.com/cgi-bin/gettoken?corpid=wwa3240966154cab12&corpsecret=lAi8lBjZtLq2h687uoOzy1MaRXPVM1NNi7MGNapOD-w";

    /*
    * https://qyapi.weixin.qq.com/cgi-bin/gettoken?corpid=wwa3240966154cab12&corpsecret=lAi8lBjZtLq2h687uoOzy1MaRXPVM1NNi7MGNapOD-w
    */

    @GetMapping("/info")
    public AjaxResult info() {

        //链式构建请求
        String result = HttpRequest.get(URLALL)
                //超时，毫秒
                .timeout(20000)
                .execute().body();
        return AjaxResult.success(result);
    }

    @GetMapping("/auit")
    public AjaxResult auit() {

        //链式构建请求
        String result = HttpRequest.post(URLALL)
                //超时，毫秒
                .timeout(20000)
                .execute().body();
        return AjaxResult.success(result);
    }


}
