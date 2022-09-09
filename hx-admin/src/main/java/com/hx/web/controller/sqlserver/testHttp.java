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
@RestController
@RequestMapping("/open/http")
public class testHttp {
    @Autowired
    private HxTasteMapper hxTasteMapper;


    /**
     * 消息通知测试
     * @return
     */
    @RequestMapping("/msg")
    public String msg(){
        String json ="{\n" +
                "   \"touser\" : \"hanlele|UserID2|UserID3\",\n" +
                "   \"toparty\" : \"PartyID1|PartyID2\",\n" +
                "   \"totag\" : \"TagID1 | TagID2\",\n" +
                "   \"msgtype\" : \"text\",\n" +
                "   \"agentid\" : 1000042,\n" +
                "   \"text\" : {\n" +
                "       \"content\" :  \"测试消息。\\n出发前可查看<a href=\\\"http://work.weixin.qq.com\\\">邮件中心视频实况</a>，聪明避开排队。\"\n" +
                "   },\n" +
                "   \"safe\":0,\n" +
                "   \"enable_id_trans\": 0,\n" +
                "   \"enable_duplicate_check\": 0,\n" +
                "   \"duplicate_check_interval\": 1800\n" +
                "}";
        String body = HttpRequest.post("https://qyapi.weixin.qq.com/cgi-bin/message/send?access_token=lEnVqcW4TtMATMrVWOmvzAlO1Os7bAFrlCAlNJozE2lmeBTZ9x_31xRRmVb7OGUtVN_Kvf89UjcdaEvxF5Hlm8coOh_s7yY5eUvF9EkYtuNP4xDMAfJSCy-0xVR98v75wxBclkxzP96qn4__PZQQSG4oqGZa6l4vVp4RVQQNAMXRSGYGfAKEpcg83PvAZHumFIiM85_1hBaUKzJ0VEnmUA")
                .body(json)
                .execute().body();
        log.info("请求结果{}",body);
        return body;
    }


    @RequestMapping("/start")
    public String httpString() {

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
        String proxy = null;
        for (int i = 0; i < 9999; i++) {
            try {
                String s = HttpRequest.get(req)
                        .timeout(10000)
                        .execute().body();
                proxy = JSONUtil.parseObj(s).getStr("proxy");
                String guishu = JSONUtil.parseObj(s).getStr("proxy");
                log.info("请求ip:{}",proxy);
                String[] split = proxy.split(":");
                log.info("请求ip:{}---{}",split[0], Integer.parseInt(split[1]));
                String res = HttpRequest.get(url)
                        .header("user-agent", "new")
                        .setHttpProxy(split[0], Integer.parseInt(split[1]))
                        .timeout(20000)
                        .execute().body();

                if(StrUtil.isNotEmpty(JSONUtil.parseObj(res).getStr("uuid"))){
                    log.info("请求成功:{}====这是我第{}次成功了!!",JSONUtil.parseObj(res).getStr("uuid"),i);
                    // 先查询 有存现
                    HxTaste hxTaste = new HxTaste();
                    hxTaste.setDeptId(proxy);
                    List<HxTaste> hxTastes = hxTasteMapper.selectHxTasteList(hxTaste);
                    log.info("list====>:{}",hxTastes);
                    if(CollUtil.isEmpty(hxTastes)){
                        HxTaste hxTaste1 = new HxTaste();
                        hxTaste1.setTasteId(String.valueOf(IdUtil.getSnowflakeNextId()));
                        hxTaste1.setDeptId(proxy);
                        hxTasteMapper.insertHxTaste(hxTaste1);
                        /*if(hxTastes.get(0).getDeptId().equals(proxy)){
                            log.info("重复");
                        }else{

                        }*/
                    }
                }
            }catch (Exception e  ){
                e.printStackTrace();
                log.info("异常中{}",proxy);
                //http://127.0.0.1:5000/delete/?proxy=183.215.23.242:9091
                /*String delete = HttpRequest.get("http://127.0.0.1:5000/delete/?proxy="+proxy)
                        .timeout(2000)
                        .execute().body();
                log.info("删除IP:{}",delete);*/
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


        return proxy;
    }






}
