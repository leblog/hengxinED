package com.hx.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.hx.common.annotation.Excel;
import com.hx.common.core.domain.BaseEntity;

/**
 * 口味申请单明细对象 hx_taste_detail
 * 
 * @author lusifer
 * @date 2022-05-25
 */
public class HxTasteDetail extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 口味明细ID */
    private Long id;

    /** 口味名称 */
    @Excel(name = "口味名称")
    private String tasteName;

    /** 管理口味表ID */
    @Excel(name = "管理口味表ID")
    private String tasteId;

    /** 口味描述 */
    @Excel(name = "口味描述")
    private String tasteDetail;

    /** 有基础口味（0:是，1：否） */
    @Excel(name = "有基础口味", readConverterExp = "0=:是，1：否")
    private String isBasicTaste;

    /** 基础口味名称/编号 */
    @Excel(name = "基础口味名称/编号")
    private String basicTasteName;

    /** 基础口味改善建议 */
    @Excel(name = "基础口味改善建议")
    private String basicTasteImprovementIdeas;

    /** 容量 */
    @Excel(name = "容量")
    private String capacity;

    /** VG（待优化） */
    @Excel(name = "VG", readConverterExp = "待=优化")
    private String vg;

    /** NIC类别（字段长度待优化) */
    @Excel(name = "NIC类别", readConverterExp = "NIC类别（字段长度待优化)")
    private String nicType;

    /** NIC浓度 */
    @Excel(name = "NIC浓度")
    private String nicConcentration;

    /** NIC单位（mg/ml ， mg/g） */
    @Excel(name = "NIC单位", readConverterExp = "m=g/ml,，=,m=g/g")
    private String nicUnit;

    /** 调香师 */
    @Excel(name = "调香师")
    private String perfumer;

    /** 版本 */
    @Excel(name = "版本")
    private String version;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setTasteName(String tasteName) 
    {
        this.tasteName = tasteName;
    }

    public String getTasteName() 
    {
        return tasteName;
    }
    public void setTasteId(String tasteId)
    {
        this.tasteId = tasteId;
    }

    public String getTasteId()
    {
        return tasteId;
    }
    public void setTasteDetail(String tasteDetail) 
    {
        this.tasteDetail = tasteDetail;
    }

    public String getTasteDetail() 
    {
        return tasteDetail;
    }
    public void setIsBasicTaste(String isBasicTaste)
    {
        this.isBasicTaste = isBasicTaste;
    }

    public String getIsBasicTaste()
    {
        return isBasicTaste;
    }
    public void setBasicTasteName(String basicTasteName) 
    {
        this.basicTasteName = basicTasteName;
    }

    public String getBasicTasteName() 
    {
        return basicTasteName;
    }
    public void setBasicTasteImprovementIdeas(String basicTasteImprovementIdeas) 
    {
        this.basicTasteImprovementIdeas = basicTasteImprovementIdeas;
    }

    public String getBasicTasteImprovementIdeas() 
    {
        return basicTasteImprovementIdeas;
    }
    public void setCapacity(String capacity) 
    {
        this.capacity = capacity;
    }

    public String getCapacity() 
    {
        return capacity;
    }
    public void setVg(String vg) 
    {
        this.vg = vg;
    }

    public String getVg() 
    {
        return vg;
    }
    public void setNicType(String nicType) 
    {
        this.nicType = nicType;
    }

    public String getNicType() 
    {
        return nicType;
    }
    public void setNicConcentration(String nicConcentration) 
    {
        this.nicConcentration = nicConcentration;
    }

    public String getNicConcentration() 
    {
        return nicConcentration;
    }
    public void setNicUnit(String nicUnit) 
    {
        this.nicUnit = nicUnit;
    }

    public String getNicUnit() 
    {
        return nicUnit;
    }
    public void setPerfumer(String perfumer) 
    {
        this.perfumer = perfumer;
    }

    public String getPerfumer() 
    {
        return perfumer;
    }
    public void setVersion(String version) 
    {
        this.version = version;
    }

    public String getVersion() 
    {
        return version;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("tasteName", getTasteName())
            .append("tasteId", getTasteId())
            .append("tasteDetail", getTasteDetail())
            .append("isBasicTaste", getIsBasicTaste())
            .append("basicTasteName", getBasicTasteName())
            .append("basicTasteImprovementIdeas", getBasicTasteImprovementIdeas())
            .append("capacity", getCapacity())
            .append("vg", getVg())
            .append("nicType", getNicType())
            .append("nicConcentration", getNicConcentration())
            .append("nicUnit", getNicUnit())
            .append("perfumer", getPerfumer())
            .append("version", getVersion())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("remark", getRemark())
            .toString();
    }
}
