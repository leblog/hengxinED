package com.hx.test.autoSelenium;

import java.io.File;

import org.openqa.selenium.chrome.ChromeDriver;

public class hello {


    public static void test() {
        //指定驱动位置
        //String filePath = new File("").getAbsolutePath() + File.separator;
        System.setProperty("webdriver.chrome.driver", "C:\\Program Files\\Google\\Chrome\\Application\\chrome.exe");
        //
        ChromeDriver dr = new ChromeDriver();
        dr.get("https://www.google.com");
    }

    public static void main(String[] args) {
        test();
    }


}
