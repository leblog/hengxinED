package com.hx.web.controller.wx;

import cn.hutool.core.util.StrUtil;
import cn.hutool.http.Header;
import cn.hutool.http.HttpRequest;
import cn.hutool.http.HttpUtil;
import cn.hutool.json.JSONObject;
import cn.hutool.json.JSONUtil;
import com.hx.common.annotation.RepeatSubmit;
import com.hx.common.constant.HttpStatus;
import com.hx.common.core.domain.AjaxResult;
import com.hx.common.exception.ServiceException;
import lombok.extern.slf4j.Slf4j;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.web.bind.annotation.*;

import java.awt.*;
import java.util.*;

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
    /*获取请假模板的列表*/
    private static String URLALL = "https://qyapi.weixin.qq.com/cgi-bin/gettoken?corpid=wwa3240966154cab12&corpsecret=lAi8lBjZtLq2h687uoOzy1MaRXPVM1NNi7MGNapOD-w";
    /*测试 -- 企业微信某个审批模板*/
    private static String URLAUITDETAIL = "https://qyapi.weixin.qq.com/cgi-bin/oa/gettemplatedetail";
    private static String URLAUITDETAILT;
    // 请假模板ID   C4RXns9Wq61qkASV9fmjSxNW6p3xnjFHc7agLEkFb
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
    private String COMMITAPI = "https://qyapi.weixin.qq.com/cgi-bin/oa/applyevent\n";
    // 提交审核的参数
    private String COMMITPARAM = "{\n" +
            "  \"creator_userid\": \"HanLeLe\",\n" +
            "  \"template_id\": \"ZvdTVeobXMC5omTwtvaLqovMUbWX62nv272c2c\",\n" +
            "  \"use_template_approver\": 0,\n" +
            "  \"approver\": [{\n" +
            "      \"attr\": 2,\n" +
            "      \"userid\": [\"HanLeLe\"]\n" +
            "    },\n" +
            "    {\n" +
            "      \"attr\": 1,\n" +
            "      \"userid\": [\"HanLeLe\"]\n" +
            "    }\n" +
            "  ],\n" +
            "  \"notifyer\": [\"HanLeLe\"],\n" +
            "  \"notify_type\": 1,\n" +
            "  \"apply_data\": {\n" +
            "    \"contents\": [{\n" +
            "      \"control\": \"Text\",\n" +
            "      \"id\": \"Text-1640339319582\",\n" +
            "      \"value\": {\n" +
            "        \"text\": \"测试单据ID111\"\n" +
            "      }\n" +
            "    }, {\n" +
            "      \"control\": \"Date\",\n" +
            "      \"id\": \"Date-1660882636793\",\n" +
            "      \"value\": {\n" +
            "        \"date\": {\n" +
            "          \"type\": \"day\",\n" +
            "          \"s_timestamp\": \"1660895887\"\n" +
            "        }\n" +
            "      }\n" +
            "\n" +
            "    }, {\n" +
            "      \"control\": \"Contact\",\n" +
            "      \"id\": \"Contact-1660882681523\",\n" +
            "      \"value\": {\n" +
            "        \"members\": [{\n" +
            "          \"userid\": \"HanLeLe\",\n" +
            "          \"name\": \"韩乐乐\"\n" +
            "        }]\n" +
            "      }\n" +
            "    }, {\n" +
            "      \"control\": \"Contact\",\n" +
            "      \"id\": \"Contact-1660882725024\",\n" +
            "      \"value\": {\n" +
            "        \"departments\": [{\n" +
            "          \"openapi_id\": \"1\",\n" +
            "          \"name\": \"销售部\"\n" +
            "        }]\n" +
            "      }\n" +
            "    }, {\n" +
            "      \"control\": \"Text\",\n" +
            "      \"id\": \"Text-1660882747027\",\n" +
            "      \"value\": {\n" +
            "        \"text\": \"客户名称222\"\n" +
            "      }\n" +
            "    }]\n" +
            "  },\n" +
            "  \"summary_list\": [{\n" +
            "      \"summary_info\": [{\n" +
            "        \"text\": \"摘要第1行\",\n" +
            "        \"lang\": \"zh_CN\"\n" +
            "      }]\n" +
            "    },\n" +
            "    {\n" +
            "      \"summary_info\": [{\n" +
            "        \"text\": \"摘要第2行\",\n" +
            "        \"lang\": \"zh_CN\"\n" +
            "      }]\n" +
            "    },\n" +
            "    {\n" +
            "      \"summary_info\": [{\n" +
            "        \"text\": \"摘要第3行\",\n" +
            "        \"lang\": \"zh_CN\"\n" +
            "      }]\n" +
            "    }\n" +
            "  ]\n" +
            "}";


    /**
     * 获取模板详情
     * @return
     * @throws AWTException
     * @throws InterruptedException
     */
    @RepeatSubmit(interval = 1000, message = "请求过于频繁")
    @GetMapping("/info/{type}")
    public AjaxResult info(@PathVariable("type") String type) {
        if(Objects.equals(type, "a")){
            getToken();
            template();
            return AjaxResult.success(result2);
        } else if (Objects.equals(type, "b")) {
            AjaxResult ajax = new AjaxResult();
            getToken();
            commit();
            JSONObject entries = JSONUtil.parseObj(result3);
            ajax.put("提交状态",entries.getStr("errmsg"));
            ajax.put("单号",entries.getStr("sp_no"));
            return ajax;
        } else if (Objects.equals(type, "c")) {
            return AjaxResult.error(HttpStatus.NOT_IMPLEMENTED,"接口未实现");
        }
        return AjaxResult.error(HttpStatus.NOT_IMPLEMENTED,"没有该接口");

    }
    // 获取token方法
    public String getToken(){
        String result = HttpUtil.get(URLALL);
        JSONObject obj = JSONUtil.parseObj(result);
        token = obj.getStr("access_token");
        log.info("token:{}", token);
        return token;
    }

    // 后获取审核模板的方法
    public String template() {
        if(StrUtil.isNotEmpty(token)){
            HashMap<String,String> paramMap = new HashMap<>();
            paramMap.put("template_id",TEMPLATE_ID);
            //String json = "{'template_id': 'C4RXns9Wq61qkASV9fmjSxNW6p3xnjFHc7agLEkFb'}";
            URLAUITDETAILT = URLAUITDETAIL+"?access_token="+token;
            result2 = HttpRequest.post(URLAUITDETAILT)
                    .body(JSONUtil.toJsonStr(paramMap))
                    .timeout(20000)
                    .execute().body();
            log.info("模板:{}",result2);
        }else{
            throw new ServiceException("企业微信接口调用失败,请联系管理员,或稍后重试");
        }
        return result2;
    }

    /**
     * 提交审核模板的操作
     * 1.其中表单的数据需要动态的提交
     * 2.其中日期也要选择
     * @return result3
     */
    public String commit(){
        if(StrUtil.isNotEmpty(token)){
            // TODO 校验该单子是否已存在
            // TODO 存入审批单号到提交单中
            String url = COMMITAPI+"?access_token="+token;
            log.info(url);
            result3 = HttpRequest.post(url)
                    .body(COMMITPARAM)
                    .timeout(20000)
                    .execute().body();
            log.info("提交审核:{}",result3);
        }else{
            throw new ServiceException("企业微信接口调用失败,请联系管理员,或稍后重试");
        }
        return result3;
    }
    /**
     * 获取组织机构信息
     * 注意这个地方要有管理员权限,且所在部门是一级
     */
    public String organization(){
        if(StrUtil.isNotEmpty(token)){
            // 同步组织结构到本地是使用
            String url = COMMITAPI+"?access_token="+token;
            log.info(url);
            result3 = HttpRequest.post(url)
                    .body(COMMITPARAM)
                    .timeout(20000)
                    .execute().body();
            log.info("提交审核:{}",result3);
        }else{
            throw new ServiceException("企业微信接口调用失败,请联系管理员,或稍后重试");
        }
        return result3;
    }


/* long start = System.currentTimeMillis();
        Thread.sleep(500);
        log.info("休眠时间:{}", System.currentTimeMillis()-start);*/

}
