package com.hx.web.controller.sqlserver;

import cn.hutool.http.HttpRequest;
import cn.hutool.json.JSONUtil;
import lombok.extern.slf4j.Slf4j;

@Slf4j
public class testHttpCC2 {
    public static void main(String[] args) {
        String ip = "https://ipservice.ws.126.net/locate/api/getLocByIp";
        String url = "https://stage-admin.igame58.com/prod-api/captchaImage";
        String req = "http://127.0.0.1:5000/get/";

        String[] proxy1 = {
            "8.142.149.186:80" ,
            "139.9.64.238:443" ,
            "111.225.153.129:8089" ,
            "101.200.127.149:3129",
            "182.253.159.163:8080" ,
            "218.28.141.66:8001",
            "116.62.142.57:8000",
            "8.141.251.188:3128",
            "222.209.172.201:8118"
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
                    log.info("請求結果：{},這是第{}次",JSONUtil.parseObj(res).getStr("uuid"),i);
                }

            }catch (Exception e  ){
                e.printStackTrace();
                continue;
            }

        }
    }

}
