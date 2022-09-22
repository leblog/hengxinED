package com.hx.rd.domain;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.hx.common.annotation.Excel;
import com.hx.common.core.domain.BaseEntity;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.validation.constraints.NotBlank;
import java.util.Date;
import java.util.List;

/**
 * 口味申请单对象 hx_taste
 *
 * @author lusifer
 * @date 2022-05-25
 */
@Getter
@Setter
@ToString
public class HxTasteSQL extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /**
     *
     */
    @TableId(type = IdType.AUTO)
    private Long id;

    /**
     *
     */
    @NotBlank(message = "FID不能为空")
    private String fid;

    /**
     *
     */
    @Excel(name = "审批单ID")
    @NotBlank(message = "fbillno不能为空")
    private String fbillno;

    /**
     *
     */
    @Excel(name = "审批状态")
    private Integer fstatus;

    /**
     *
     */
    @NotBlank(message = "申请人不能为空")
    @Excel(name = "申请人")
    private String fshenqingren;

    /**
     *
     */
    private String fsqrid;

    /**
     *
     */
    @Excel(name = "原申请人")
    private String fyuanshenqingren;

    /**
     *
     */
    private String fyuansqrid;

    /**
     *
     */
    @Excel(name = "业务姓名")
    private String fyewuxingming;

    /**
     *
     */
    @Excel(name = "业务部门")
    private String fyewubumen;

    /**
     *
     */
    @Excel(name = "申请日期")
    private Date fsqriqi;

    /**
     *
     */
    @Excel(name = "客户名称")
    private String fkehumingcheng;

    /**
     *
     */
    @Excel(name = "客户代码")
    private String fkehudaima;

    /**
     *
     */
    @Excel(name = "业务代码")
    private String fyewudaima;

    /**
     *
     */
    @Excel(name = "来访日期")
    private Date flaifangriqi;

    /**
     *
     */
    @Excel(name = "第几次送样")
    private String fdijicisongyang;

    /**
     *
     */
    @Excel(name = "项目信息")
    private String fxiangmuxinxi;

    /**
     *
     */
    //@Excel(name = "上次申请单号")
    private String fshangcishenqingdanhao;

    /**
     *
     */
    @Excel(name = "可供烟具")
    private String fkegongyanju;

    /**
     *
     */
    @Excel(name = "口味数量")
    private String fkouweishuliang;

    /**
     *
     */
    @Excel(name = "烟品需求日期")
    private Date fyangpinxuqiuriqi;

    /**
     *
     */
    @Excel(name = "烟具类别")
    private String fyanjuleixing;

    /**
     *
     */
    @Excel(name = "匹配市场")
    private String fpipeishichang;

    /**
     *
     */
    @Excel(name = "甜度")
    private String ftiandu;

    /**
     *
     */
    @Excel(name = "凉度")
    private String fliangdu;

    /**
     *
     */
    @Excel(name = "")
    private String fnianchoudu;

    /**
     *
     */
    @Excel(name = "口味专供")
    private String fkouweizhuangong;

    /**
     *
     */
    @Excel(name = "现场试油")
    private String fxianchangshiyou;

    /**
     *
     */
    @Excel(name = "邮寄信息")
    private String fyoujixinxi;

    /**
     *
     */
    private String fzidaiyanju;

    /**
     *
     */
    @Excel(name = "回收烟具")
    private String fhuishouyanju;

    /**
     *
     */
    @Excel(name = "油环种类")
    private String ffaresizhonglei;

    /**
     *
     */
    private String ffaresizuzhi;

    /**
     *
     */
    @Excel(name = "容量")
    private String fyanyoucangrongliang;

    /**
     * 导油棉类型
     */
    @Excel(name = "导油棉类型")
    private String fdaoyoumianzhonglei;

    /**
     *
     */
    @Excel(name = "尼古丁含量")
    private String fnigudinghanliang;

    /**
     * 油环材质类型
     */
    @Excel(name = "油环材质类型")
    private String fyoubeicaizhi;

    /**
     *
     */
    @Excel(name = "期望完成时间")
    private Date fqiwangwanchengshijian;

    /**
     *
     */
    @Excel(name = "样品需求数量")
    private String fyangpinxuqiushuliang;

    /**
     *
     */
    @Excel(name = "预计完成时间")
    private Date fyujiwanchengshijian;

    /**
     *
     */
    @Excel(name = "fvg")
    private String fvg;

    /**
     *
     */
    @Excel(name = "备注")
    private String fbeizhu;

    /**
     *
     */
    @Excel(name = "跟进人")
    private String ffenpeigenjinren;

    /**
     *
     */
    private String fcurspbillno;

    /**
     *
     */
    private Date ftijiaotime;

    /**
     *
     */
    private Date fshenhetime;

    /**
     *
     */
    private Date ffenpeitime;

    /**
     *
     */
    @NotBlank(message = "最后更新人 flastmodifyby 不能为空")
    @Excel(name = "最后更新人")
    private String flastmodifyby;

    /**
     *
     */
    @NotBlank(message = "最后更新时间 flastmodifytime 不能为空")
    @Excel(name = "最后更新时间")
    private Date flastmodifytime;

    /** 口味申请单明细信息 */
    private List<HxTasteSQLDetail> hxTasteDetailList;


}
