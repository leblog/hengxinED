package com.hx.web.controller.reprot;

import cn.hutool.core.lang.Console;
import cn.hutool.core.lang.func.VoidFunc0;
import cn.hutool.http.Header;
import cn.hutool.http.HttpRequest;
import cn.hutool.json.JSONUtil;
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
public class reportController implements IDataSetFactory {
    /**
     * TODO 传入天数动态接口
     * @param resp
     * @return
     * @throws IOException
     */
    @GetMapping("/list")
    public AjaxResult reportList(HttpServletResponse resp) throws IOException{
        AjaxResult ajax = new AjaxResult();
        String url = "http://10.10.7.33:44346/ECharsReport/ECReport_get_Xiaoshoukouweixuqiu";
        //链式构建请求
        String result = HttpRequest.post(url)
                .header(Header.USER_AGENT, "lusifer http")
                .header(Header.COOKIE, "ASP.NET_SessionId=fqw50zmawo1iatzcdjj55cxr")
                .timeout(20000)//超时，毫秒
                .execute().body();
        log.debug(result);
        //resp.sendRedirect(url);
        ajax.put("list",JSONUtil.parseObj(result));
        return ajax;
    }

    // 测试代码
    public static void main(String[] args) throws IOException {
        String url = "http://10.10.7.33:44346/ECharsReport/ECReport_get_Xiaoshoukouweixuqiu";
        //链式构建请求
        String result2 = HttpRequest.post(url)
                .header(Header.USER_AGENT, "Hutool http")
                .header(Header.COOKIE, "ASP.NET_SessionId=fqw50zmawo1iatzcdjj55cxr")
                .timeout(20000)//超时，毫秒
                .execute().body();
        Console.log(result2);

        HttpServletResponse resp = new HttpServletResponse() {
            @Override
            public String getCharacterEncoding() {
                return null;
            }

            @Override
            public String getContentType() {
                return null;
            }

            @Override
            public ServletOutputStream getOutputStream() throws IOException {
                return null;
            }

            @Override
            public PrintWriter getWriter() throws IOException {
                return null;
            }

            @Override
            public void setCharacterEncoding(String s) {

            }

            @Override
            public void setContentLength(int i) {

            }

            @Override
            public void setContentLengthLong(long l) {

            }

            @Override
            public void setContentType(String s) {

            }

            @Override
            public void setBufferSize(int i) {

            }

            @Override
            public int getBufferSize() {
                return 0;
            }

            @Override
            public void flushBuffer() throws IOException {

            }

            @Override
            public void resetBuffer() {

            }

            @Override
            public boolean isCommitted() {
                return false;
            }

            @Override
            public void reset() {

            }

            @Override
            public void setLocale(Locale locale) {

            }

            @Override
            public Locale getLocale() {
                return null;
            }

            @Override
            public void addCookie(Cookie cookie) {

            }

            @Override
            public boolean containsHeader(String s) {
                return false;
            }

            @Override
            public String encodeURL(String s) {
                return null;
            }

            @Override
            public String encodeRedirectURL(String s) {
                return null;
            }

            @Override
            public String encodeUrl(String s) {
                return null;
            }

            @Override
            public String encodeRedirectUrl(String s) {
                return null;
            }

            @Override
            public void sendError(int i, String s) throws IOException {

            }

            @Override
            public void sendError(int i) throws IOException {

            }

            @Override
            public void sendRedirect(String s) throws IOException {

            }

            @Override
            public void setDateHeader(String s, long l) {

            }

            @Override
            public void addDateHeader(String s, long l) {

            }

            @Override
            public void setHeader(String s, String s1) {

            }

            @Override
            public void addHeader(String s, String s1) {

            }

            @Override
            public void setIntHeader(String s, int i) {

            }

            @Override
            public void addIntHeader(String s, int i) {

            }

            @Override
            public void setStatus(int i) {

            }

            @Override
            public void setStatus(int i, String s) {

            }

            @Override
            public int getStatus() {
                return 0;
            }

            @Override
            public String getHeader(String s) {
                return null;
            }

            @Override
            public Collection<String> getHeaders(String s) {
                return null;
            }

            @Override
            public Collection<String> getHeaderNames() {
                return null;
            }

            @Override
            public void setTrailerFields(Supplier<Map<String, String>> supplier) {
                HttpServletResponse.super.setTrailerFields(supplier);
            }

            @Override
            public Supplier<Map<String, String>> getTrailerFields() {
                return HttpServletResponse.super.getTrailerFields();
            }
        };
        resp.sendRedirect(url);
    }

    @Override
    public List<Map<String, Object>> createData(Map<String, Object> map) {
        return null;
    }

    @Override
    public JmPage createPageData(Map<String, Object> map) {
        return null;
    }
}
