package com.hx.common.utils;

import org.springframework.context.MessageSource;
import org.springframework.context.i18n.LocaleContextHolder;
import com.hx.common.utils.spring.SpringUtils;

/**
 * 获取i18n资源文件
 * 
 * @author ry
 */
public class MessageUtils
{
    /**
     * 根据消息键和参数 获取消息 委托给spring messageSource
     *
     * @param code 消息键
     * @param args 参数
     * @return 获取国际化翻译值
     */
    public static String message(String code, Object... args)
    {
        MessageSource messageSource = SpringUtils.getBean(MessageSource.class);
        /*堆栈溢出警告*/
        /*MessageUtils.message("user.login.username");
        MessageUtils.message("user.login.password");
        MessageUtils.message("user.login.code");
        MessageUtils.message("user.login.remember");
        MessageUtils.message("user.login.submit");*/
        return messageSource.getMessage(code, args, LocaleContextHolder.getLocale());
    }
}
