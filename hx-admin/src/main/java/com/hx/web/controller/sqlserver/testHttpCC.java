package com.hx.web.controller.sqlserver;

import cn.hutool.core.collection.CollUtil;
import cn.hutool.core.util.IdUtil;
import cn.hutool.core.util.StrUtil;
import cn.hutool.http.HttpRequest;
import cn.hutool.json.JSONUtil;
import com.hx.system.domain.HxTaste;
import com.hx.system.mapper.HxTasteMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@Slf4j
public class testHttpCC {
    public static void main(String[] args) {
        String ip = "https://ipservice.ws.126.net/locate/api/getLocByIp";
        String url = "https://stage-admin.igame58.com/prod-api/captchaImage";
        String req = "http://127.0.0.1:5000/get/";

        String[] proxy1 = {
                "101.200.127.149:3129"
                ,
                "8.142.149.186:80" ,
                "139.9.64.238:443" ,
                "111.225.153.129:8089" ,
                "182.253.159.163:8080" ,
                "218.28.141.66:8001",
                "116.62.142.57:8000",
                "8.141.251.188:3128"
        };
        String proxy = null;
        for (int i = 0; i < 999999; i++) {
            try {
                String s = HttpRequest.get(req)
                        .timeout(10000)
                        .execute().body();
                for (String s1 : proxy1) {
                    //proxy = JSONUtil.parseObj(s).getStr("s1");
                    String[] split = s1.split(":");
                    //log.info("请求ip:{}---{}",split[0], Integer.parseInt(split[1]));
                    String res = HttpRequest.get(url)
                            .header("user-agent", "new")
                            .setHttpProxy(split[0], Integer.parseInt(split[1]))
                            .timeout(20000)
                            .execute().body();
                    log.info("請求結果：{},這是第{}次,ip=>{}",JSONUtil.parseObj(res).getStr("uuid"),i,s1);
                }

            }catch (Exception e  ){
                e.printStackTrace();
                continue;
            }

        }
    }

}