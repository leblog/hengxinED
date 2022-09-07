package com.hx.web.controller.sqlserver;

import org.apache.commons.lang3.builder.ToStringExclude;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

// page_url = https://www.baidu.com/
public class testAuto {
    @FindBy(id = "kw")
    public WebElement wdInput;

    // No page elements added


    public testAuto(WebDriver driver) {
        PageFactory.initElements(driver, this);
        wdInput.submit();
    }
}
