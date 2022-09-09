package com.hx.system.domain;

import lombok.Data;
import lombok.ToString;
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
@Data
@ToString
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
    @Excel(name = "口味状态")
    private String tasteStatus;
    @Excel(name = "分配调香师的ID")
    private String selectUserId;
    @Excel(name = "选择配方版本的ID")
    private String selectTasteId;
    @Excel(name = "选择配方版本") //这里的字段是根据调香师的配方表进行拼接生成的  拼接规则:  DRD22090127-A[ X00167 蜜瓜冰 ] VG: 40  丁盐：Y8-3  浓度：19mg
    private String selectVersion;

//    taste_status
//    select_user_id
    //select_taste_id
    //select_version



}
