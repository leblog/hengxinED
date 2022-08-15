package com.hx.system.domain;

import java.util.List;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import lombok.ToString;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.hx.common.annotation.Excel;
import com.hx.common.core.domain.BaseEntity;

/**
 * 口味申请单对象 hx_taste
 *
 * @author lusifer
 * @date 2022-05-25
 */
@Data
@ToString
public class HxTaste extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 口味申请单ID */
    private String tasteId;

    /** 部门Id */
    @Excel(name = "部门Id")
    private String deptId;

    /** 业务姓名 */
    @Excel(name = "业务姓名")
    private String businessName;

    /** 业务代码 */
    @Excel(name = "业务代码")
    private String businessCode;

    /** 客户名称 */
    @Excel(name = "客户名称")
    private String customersName;

    /** 客户代码 */
    @Excel(name = "客户代码")
    private String customersCode;

    /** 口味数量 */
    @Excel(name = "口味数量")
    private String tasteNum;

    /** 上次申请单号 */
    @Excel(name = "上次申请单号")
    private String refereeNum;

    /** 第几次送样 */
    @Excel(name = "第几次送样")
    private String sendNum;

    /** 口味专供 */
    @Excel(name = "口味专供")
    private String isSupply;

    /** 现场试用 */
    @Excel(name = "现场试用")
    private String isTry;

    /** 来访日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "来访日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date visitTime;

    /** 自带烟具 */
    @Excel(name = "自带烟具")
    private String isSmoking;

    /** 烟具类型 */
    @Excel(name = "烟具类型")
    private String smokingType;

    /** 发热丝类型 */
    @Excel(name = "发热丝类型")
    private String heatingWireType;

    /** 发热丝阻值 */
    @Excel(name = "发热丝阻值")
    private String heatingWireResistance;

    /** 烟油仓容量 */
    @Excel(name = "烟油仓容量")
    private String capacity;

    /** 导游棉类型 */
    @Excel(name = "导油棉类型")
    private String oilGuideCottonType;

    /** 是否回收烟具 */
    @Excel(name = "是否回收烟具")
    private String isRecyclingSmoking;

    /** 油环材质类型 */
    @Excel(name = "油环材质类型")
    private String oilRingMaterial;

    /** VG */
    @Excel(name = "VG")
    private String vg;

    /** 粘稠度 */
    @Excel(name = "粘稠度")
    private String viscosity;
    /** 甜度 */
    @Excel(name = "甜度")
    private String sweetness;
    /** 粘稠度 */
    @Excel(name = "凉度")
    private String coolness;
    private String status;
    private String deleted;

    /** 期望完成时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "期望完成时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date expectedCompletionTime;

    /** 样品需求时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "样品需求时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date sampleRequestTime;

    /** 预计完成时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "预计完成时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date estimatedFinishTime;

    /** 匹配市场 */
    @Excel(name = "匹配市场")
    private String matchMarket;

    /** 样品数量 */
    @Excel(name = "样品数量")
    private Long samplesNum;

    /** 邮寄信息 */
    @Excel(name = "邮寄信息")
    private String mailingInformation;

    /** 口味申请单明细信息 */
    private List<HxTasteDetail> hxTasteDetailList;


}
