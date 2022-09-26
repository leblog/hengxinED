package com.hx.web.controller.sqlserver;

import com.hx.common.core.redis.RedisCache;
import org.springframework.data.redis.core.RedisTemplate;


public class TestHttpProxy {
    public static void main(String[] args) {
        RedisCache cache = new RedisCache();
        String userKey = "use_proxy";
        String s = cache.getCacheMapValue("218.64.163.226:7302",userKey);
        System.out.println("s = " + s);
    }
}
