package com.hx.test;

import me.chanjar.weixin.cp.api.WxCpOAuth2Service;
import org.springframework.beans.factory.annotation.Autowired;

import javax.annotation.Resource;

public class WxJava_cp {
    @Autowired
    private WxCpOAuth2Service wx;

    public void setWx(WxCpOAuth2Service wx) {
        this.wx = wx;
    }

    public WxCpOAuth2Service getWx() {
        return wx;
    }

}
