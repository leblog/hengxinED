package com.hx.web.controller.sqlserver;

import cn.hutool.core.lang.Console;
import cn.hutool.core.thread.ConcurrencyTester;
import cn.hutool.core.thread.ThreadUtil;
import cn.hutool.core.util.RandomUtil;
import cn.hutool.http.HttpRequest;
import cn.hutool.json.JSONUtil;
import com.hx.common.core.redis.RedisCache;
import com.hx.framework.config.RedisConfig;
import lombok.extern.slf4j.Slf4j;

import java.util.HashMap;

@Slf4j
public class testHttp {


    public static void main(String[] args) {
        // 测试  http://demo.spiderpy.cn/get/   http://127.0.0.1:5000/get/
        String ip = "https://ipservice.ws.126.net/locate/api/getLocByIp";
        String url = "https://stage-admin.igame58.com/prod-api/captchaImage";
        String req = "http://127.0.0.1:5000/get/";



        /*String res = HttpRequest.get(ip)
                .header("user-agent", "new")
                .setHttpProxy(split[0], Integer.parseInt(split[1]))
                .timeout(9000)
                .execute().body();
        log.info("ip归属:{}",res);*/

        for (int i = 0; i < 9999; i++) {
            try {
                String s = HttpRequest.get(req)
                        .timeout(10000)
                        .execute().body();
                String proxy = JSONUtil.parseObj(s).getStr("proxy");
                String guishu = JSONUtil.parseObj(s).getStr("proxy");
                log.info("请求ip:{}",proxy);
                String[] split = proxy.split(":");
                log.info("请求ip:{}---{}",split[0], Integer.parseInt(split[1]));
                String res = HttpRequest.get(url)
                        .header("user-agent", "new")
                        .setHttpProxy(split[0], Integer.parseInt(split[1]))
                        .timeout(20000)
                        .execute().body();
                log.info("请求成功:{}====这是我第{}次成功了!!",JSONUtil.parseObj(res).getStr("uuid"),i);
                if(JSONUtil.parseObj(res).getStr("uuid") != null){
                    RedisCache redisCache = new RedisCache();
                    redisCache.setCacheObject("成功代理",proxy);
                }else{
                    //http://127.0.0.1:5000/delete/?proxy=183.215.23.242:9091
                    String delete = HttpRequest.get("http://127.0.0.1:5000/delete/?proxy="+proxy)
                            .timeout(2000)
                            .execute().body();
                    log.info("删除IP:{}",delete);
                }

            }catch (Exception e){
                e.printStackTrace();
                continue;
            }

        }


        // 线程
       /* ConcurrencyTester tester = ThreadUtil.concurrencyTest(100, () -> {
            // 测试的逻辑内容
            long delay = RandomUtil.randomLong(100, 1000);
            for (int i = 0; i < 999999; i++) {
                String res = HttpRequest.get(url)
                        .header("user-agent", "new")
                        .setHttpProxy("113.108.148.102",10415)
                        .timeout(20000)
                        .execute().body();
                log.info("线程{},请求成功:{}====这是我第{}次成功了!!",Thread.currentThread().getName(),JSONUtil.parseObj(res).getStr("uuid"),i);
            }
            ThreadUtil.sleep(delay);

            //Console.log("{} test finished, delay: {}", Thread.currentThread().getName(), delay);
        });

        // 获取总的执行时间，单位毫秒
        Console.log("耗时{}分钟",tester.getInterval()/1000L);*/

    }






}
