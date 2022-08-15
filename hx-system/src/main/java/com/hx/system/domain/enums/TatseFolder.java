package com.hx.system.domain.enums;

/**
 * 口味状态
 * -1作废 ,0正常,1审核
 * @author lusifer
 */
public enum TatseFolder
{
    WASTE("-1", "作废"),
    NORMAL("0", "正常"),
    AUDIT("1", "审核");

    private final String code;
    private final String info;

    TatseFolder(String code, String info)
    {
        this.code = code;
        this.info = info;
    }

    public String getCode()
    {
        return code;
    }

    public String getInfo()
    {
        return info;
    }
}
