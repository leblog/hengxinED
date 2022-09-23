package com.hx.web.controller.sqlserver;

import com.hx.common.core.redis.RedisCache;


public class TestHttpProxy {
    public static void main(String[] args) {
        RedisCache cache = new RedisCache();
        String userKey = "use_proxy";
        String s = cache.getCacheObject(userKey);
        System.out.println("s = " + s);
    }
}
