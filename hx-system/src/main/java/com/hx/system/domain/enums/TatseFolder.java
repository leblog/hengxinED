package com.hx.system.domain.enums;

/**
 * 口味状态
 * -1作废 ,0正常,1审核
 * @author lusifer
 */
public enum TatseFolder
{
    WASTE(-1, "已作废"),
    NORMAL(0, "状态0未使用"),
    SAVED(1, "已保存"),
    WITHDRAWN(2, "已撤回"),
    PRODUCTRETURN(3, "产品退回"),
    REJECTED(4, "已驳回"),
    SUBMITTED(5, "已提交"),
    AUDIT(6, "已审核"),
    DISTRIBUTE(7, "分配产品跟进人"),
    FOLLOWING(8, "跟进中"),
    DISTRIBUTEFRAGRANCE(9, "分配调香师"),
    TASKRETURN(10, "任务退回"),
    DISTRIBUTEFRAGRANCEED(11, "分配调香师完毕"),
    PUSHEDRD(12, "已推送研发"),
    RECIPEDEVELOPMENT(13, "配方开发中"),
    RECIPECOMPLETE(14, "配方完成"),
    TASTECONFIRMED(15, "口味确认中"),
    PRINTCONFIRMATION(16, "打印口味确认书"),
    TASTEISCONFIRMED(17, "口味确认完毕"),
    CASECLOSED(18, "结案");
    //DEFAULT(null, "未知");
    private final int code;
    private final String info;

    TatseFolder(int code, String info)
    {
        this.code = code;
        this.info = info;
    }

    public int getCode()
    {
        return code;
    }

    public String getInfo()
    {
        return info;
    }
}
