package com.hx.rd.domain.enums;

/**
 * 口味状态
 * -1作废 ,0正常,1审核
 * 	申请单当前审批状态：1-审批中；2-已通过；3-已驳回；4-已撤销
 * @author lusifer
 * 备份
 *      WASTE(-1, "已作废"),
 *     NORMAL(0, "已保存"),
 *     SAVED(1, "审核中"),
 *     WITHDRAWN(2, "审批通过"),
 *     PRODUCTRETURN(3, "产品退回/已驳回"),
 *     REJECTED(4, "已撤销"),
 *     SUBMITTED(5, "已提交"),
 *     AUDIT(6, "已审核"),
 *     DISTRIBUTE(7, "分配产品跟进人"),
 *     FOLLOWING(8, "跟进中"),
 *     DISTRIBUTEFRAGRANCE(9, "分配调香师"),
 *     TASKRETURN(10, "任务退回"),
 *     DISTRIBUTEFRAGRANCEED(11, "分配调香师完毕"),
 *     PUSHEDRD(12, "已推送研发"),
 *     RECIPEDEVELOPMENT(13, "配方开发中"),
 *     RECIPECOMPLETE(14, "配方完成"),
 *     TASTECONFIRMED(15, "口味确认中"),
 *     PRINTCONFIRMATION(16, "打印口味确认书"),
 *     TASTEISCONFIRMED(17, "口味确认完毕"),
 *     CASECLOSED(18, "结案");
 */
public enum TatseFolderO
{
    STATUS_1(-1, "已作废"),
    STATUS0(0, "已保存0"),
    STATUS1(1, "已保存1"),
    STATUS2(2, "已撤回"),
    STATUS3(3, "产品退回"),
    STATUS4(4, "已驳回"),
    STATUS5(5, "已提交"),
    STATUS7(7, "已审核"),
    STATUS10(10, "分配产品跟进人"),
    STATUS11(11, "跟进中"),
    STATUS12(12, "分配调香师"),
    STATUS13(13, "任务退回"),
    STATUS14(14, "分配调香师完毕"),
    STATUS20(20, "已推送研发"),
    STATUS21(21, "配方开发中"),
    STATUS29(29, "配方完成"),
    STATUS30(30, "口味确认中"),
    STATUS38(38, "打印口味确认书"),
    STATUS39(39, "口味确认完毕"),
    STATUS99(99, "结案");
    private final int code;
    private final String info;

    TatseFolderO(int code, String info)
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
