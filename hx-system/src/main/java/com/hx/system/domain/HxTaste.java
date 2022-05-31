package com.hx.system.domain;

import java.util.List;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
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
    private Integer isSupply;

    /** 现场试用 */
    @Excel(name = "现场试用")
    private Integer isTry;

    /** 来访日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "来访日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date visitTime;

    /** 自带烟具 */
    @Excel(name = "自带烟具")
    private Integer isSmoking;

    /** 烟具类型 */
    @Excel(name = "烟具类型")
    private Integer smokingType;

    /** 发热丝类型 */
    @Excel(name = "发热丝类型")
    private Integer heatingWireType;

    /** 发热丝阻值 */
    @Excel(name = "发热丝阻值")
    private String heatingWireResistance;

    /** 烟油仓容量 */
    @Excel(name = "烟油仓容量")
    private String capacity;

    /** 导游棉类型 */
    @Excel(name = "导游棉类型")
    private Integer oilGuideCottonType;

    /** 是否回收烟具 */
    @Excel(name = "是否回收烟具")
    private Integer isRecyclingSmoking;

    /** 油环材质类型 */
    @Excel(name = "油环材质类型")
    private Integer oilRingMaterial;

    /** VG */
    @Excel(name = "VG")
    private String vg;

    /** 粘稠度 */
    @Excel(name = "粘稠度")
    private String viscosity;

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

    public void setTasteId(String tasteId)
    {
        this.tasteId = tasteId;
    }

    public String getTasteId()
    {
        return tasteId;
    }
    public void setDeptId(String deptId) 
    {
        this.deptId = deptId;
    }

    public String getDeptId() 
    {
        return deptId;
    }
    public void setBusinessName(String businessName) 
    {
        this.businessName = businessName;
    }

    public String getBusinessName() 
    {
        return businessName;
    }
    public void setBusinessCode(String businessCode) 
    {
        this.businessCode = businessCode;
    }

    public String getBusinessCode() 
    {
        return businessCode;
    }
    public void setCustomersName(String customersName) 
    {
        this.customersName = customersName;
    }

    public String getCustomersName() 
    {
        return customersName;
    }
    public void setCustomersCode(String customersCode) 
    {
        this.customersCode = customersCode;
    }

    public String getCustomersCode() 
    {
        return customersCode;
    }
    public void setTasteNum(String tasteNum) 
    {
        this.tasteNum = tasteNum;
    }

    public String getTasteNum() 
    {
        return tasteNum;
    }
    public void setRefereeNum(String refereeNum) 
    {
        this.refereeNum = refereeNum;
    }

    public String getRefereeNum() 
    {
        return refereeNum;
    }
    public void setSendNum(String sendNum) 
    {
        this.sendNum = sendNum;
    }

    public String getSendNum() 
    {
        return sendNum;
    }
    public void setIsSupply(Integer isSupply) 
    {
        this.isSupply = isSupply;
    }

    public Integer getIsSupply() 
    {
        return isSupply;
    }
    public void setIsTry(Integer isTry) 
    {
        this.isTry = isTry;
    }

    public Integer getIsTry() 
    {
        return isTry;
    }
    public void setVisitTime(Date visitTime) 
    {
        this.visitTime = visitTime;
    }

    public Date getVisitTime() 
    {
        return visitTime;
    }
    public void setIsSmoking(Integer isSmoking) 
    {
        this.isSmoking = isSmoking;
    }

    public Integer getIsSmoking() 
    {
        return isSmoking;
    }
    public void setSmokingType(Integer smokingType) 
    {
        this.smokingType = smokingType;
    }

    public Integer getSmokingType() 
    {
        return smokingType;
    }
    public void setHeatingWireType(Integer heatingWireType) 
    {
        this.heatingWireType = heatingWireType;
    }

    public Integer getHeatingWireType() 
    {
        return heatingWireType;
    }
    public void setHeatingWireResistance(String heatingWireResistance) 
    {
        this.heatingWireResistance = heatingWireResistance;
    }

    public String getHeatingWireResistance() 
    {
        return heatingWireResistance;
    }
    public void setCapacity(String capacity) 
    {
        this.capacity = capacity;
    }

    public String getCapacity() 
    {
        return capacity;
    }
    public void setOilGuideCottonType(Integer oilGuideCottonType) 
    {
        this.oilGuideCottonType = oilGuideCottonType;
    }

    public Integer getOilGuideCottonType() 
    {
        return oilGuideCottonType;
    }
    public void setIsRecyclingSmoking(Integer isRecyclingSmoking) 
    {
        this.isRecyclingSmoking = isRecyclingSmoking;
    }

    public Integer getIsRecyclingSmoking() 
    {
        return isRecyclingSmoking;
    }
    public void setOilRingMaterial(Integer oilRingMaterial) 
    {
        this.oilRingMaterial = oilRingMaterial;
    }

    public Integer getOilRingMaterial() 
    {
        return oilRingMaterial;
    }
    public void setVg(String vg) 
    {
        this.vg = vg;
    }

    public String getVg() 
    {
        return vg;
    }
    public void setViscosity(String viscosity) 
    {
        this.viscosity = viscosity;
    }

    public String getViscosity() 
    {
        return viscosity;
    }
    public void setExpectedCompletionTime(Date expectedCompletionTime) 
    {
        this.expectedCompletionTime = expectedCompletionTime;
    }

    public Date getExpectedCompletionTime() 
    {
        return expectedCompletionTime;
    }
    public void setSampleRequestTime(Date sampleRequestTime) 
    {
        this.sampleRequestTime = sampleRequestTime;
    }

    public Date getSampleRequestTime() 
    {
        return sampleRequestTime;
    }
    public void setEstimatedFinishTime(Date estimatedFinishTime) 
    {
        this.estimatedFinishTime = estimatedFinishTime;
    }

    public Date getEstimatedFinishTime() 
    {
        return estimatedFinishTime;
    }
    public void setMatchMarket(String matchMarket) 
    {
        this.matchMarket = matchMarket;
    }

    public String getMatchMarket() 
    {
        return matchMarket;
    }
    public void setSamplesNum(Long samplesNum) 
    {
        this.samplesNum = samplesNum;
    }

    public Long getSamplesNum() 
    {
        return samplesNum;
    }
    public void setMailingInformation(String mailingInformation) 
    {
        this.mailingInformation = mailingInformation;
    }

    public String getMailingInformation() 
    {
        return mailingInformation;
    }

    public List<HxTasteDetail> getHxTasteDetailList()
    {
        return hxTasteDetailList;
    }

    public void setHxTasteDetailList(List<HxTasteDetail> hxTasteDetailList)
    {
        this.hxTasteDetailList = hxTasteDetailList;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("tasteId", getTasteId())
            .append("deptId", getDeptId())
            .append("businessName", getBusinessName())
            .append("businessCode", getBusinessCode())
            .append("customersName", getCustomersName())
            .append("customersCode", getCustomersCode())
            .append("tasteNum", getTasteNum())
            .append("refereeNum", getRefereeNum())
            .append("sendNum", getSendNum())
            .append("isSupply", getIsSupply())
            .append("isTry", getIsTry())
            .append("visitTime", getVisitTime())
            .append("isSmoking", getIsSmoking())
            .append("smokingType", getSmokingType())
            .append("heatingWireType", getHeatingWireType())
            .append("heatingWireResistance", getHeatingWireResistance())
            .append("capacity", getCapacity())
            .append("oilGuideCottonType", getOilGuideCottonType())
            .append("isRecyclingSmoking", getIsRecyclingSmoking())
            .append("oilRingMaterial", getOilRingMaterial())
            .append("vg", getVg())
            .append("viscosity", getViscosity())
            .append("expectedCompletionTime", getExpectedCompletionTime())
            .append("sampleRequestTime", getSampleRequestTime())
            .append("estimatedFinishTime", getEstimatedFinishTime())
            .append("matchMarket", getMatchMarket())
            .append("samplesNum", getSamplesNum())
            .append("mailingInformation", getMailingInformation())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("remark", getRemark())
            .append("hxTasteDetailList", getHxTasteDetailList())
            .toString();
    }
}
