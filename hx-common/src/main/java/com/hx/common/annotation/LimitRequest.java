package com.hx.common.annotation;

import java.lang.annotation.*;

/**
 * 定义一个切面，执行方法前去ExpiringMap查询该IP在规定时间内请求了多少次，如超过次数则直接返回请求失败。
 * Created by 谭月浩 on 2021-11-21 17:03
 * @author lusifer
 */
@Documented
@Target(ElementType.METHOD) // 说明该注解只能放在方法上面
@Retention(RetentionPolicy.RUNTIME)
public @interface LimitRequest {
    long time() default 6000; // 限制时间 单位：毫秒
    int count() default 30; // 允许请求的次数
}
