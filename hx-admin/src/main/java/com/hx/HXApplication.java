package com.hx;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

/**
 * 启动程序
 * 
 * @author lusifer
 */
//@SpringBootApplication(exclude = { DataSourceAutoConfiguration.class })
@SpringBootApplication(exclude = { DataSourceAutoConfiguration.class },scanBasePackages = {"org.jeecg.modules.jmreport","com.hx"})
public class HXApplication
{
    public static void main(String[] args)
    {
        // System.setProperty("spring.devtools.restart.enabled", "false");
        SpringApplication.run(HXApplication.class, args);
        System.out.println("=======  启动成功 =====  \n");
    }
}
