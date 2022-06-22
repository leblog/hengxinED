package com.hx.web.controller.reprot;

import cn.hutool.core.lang.Console;
import cn.hutool.core.lang.func.VoidFunc0;
import cn.hutool.http.Header;
import cn.hutool.http.HttpRequest;
import cn.hutool.json.JSONUtil;
import com.hx.common.annotation.LimitRequest;
import com.hx.common.annotation.RepeatSubmit;
import com.hx.common.core.domain.AjaxResult;
import lombok.extern.slf4j.Slf4j;
import org.jeecg.modules.jmreport.api.data.IDataSetFactory;
import org.jeecg.modules.jmreport.desreport.model.JmPage;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Collection;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.function.Supplier;

@Slf4j
@RestController
@RequestMapping("/open/report")
public class reportController{
    /**
     * TODO 传入天数动态接口
     * @param resp
     * @return
     * @throws IOException
     */
    @GetMapping("/list")
    //@LimitRequest(count = 3)
    @RepeatSubmit(interval = 3000, message = "请求过于频繁")
    public AjaxResult reportList(HttpServletResponse resp) throws IOException{
        AjaxResult ajax = new AjaxResult();
        String url2 = "http://10.10.7.33:44346/ECharsReport/ECReport_get_Xiaoshoukouweixuqiu";
        String url = "http://10.10.7.33:44346/Login/Index2";
        //resp.sendRedirect(url);
        String cookie = HttpRequest.post(url)
                .header(Header.USER_AGENT, "lusifer http")
                .timeout(20000)//超时，毫秒
                .execute().getCookieStr();
        log.debug("我是cookie{}",cookie);
        String result = HttpRequest.post(url2)
                .header(Header.COOKIE, cookie)
                .timeout(20000)//超时，毫秒
                .execute().body();
        log.debug("我是接口{}",result);
        ajax.put("list",JSONUtil.parseObj(result));
        return ajax;
    }


}
