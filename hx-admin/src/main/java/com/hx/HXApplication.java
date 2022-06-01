package com.hx;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.boot.autoconfigure.mongo.MongoAutoConfiguration;

/**
 * 启动程序
 * 
 * @author lusifer
 */
//@SpringBootApplication(exclude = { DataSourceAutoConfiguration.class })

//@SpringBootApplication(exclude = MongoAutoConfiguration.class)  禁用springboot  自带的mongoDB
@SpringBootApplication(
        exclude = {
            DataSourceAutoConfiguration.class ,
            MongoAutoConfiguration.class
        },
        scanBasePackages = {
            "org.jeecg.modules.jmreport",
            "com.hx"
        })

public class HXApplication
{
    public static void main(String[] args)
    {
        // System.setProperty("spring.devtools.restart.enabled", "false");
        SpringApplication.run(HXApplication.class, args);
        System.out.println("=======  启动成功 =====  \n");
    }
}
