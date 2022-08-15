package com.hx.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.hx.common.annotation.Excel;
import com.hx.common.core.domain.BaseEntity;

/**
 * 全球地区对象 crm_data_region
 *
 * @author lusifer
 * @date 2022-08-12
 */
public class CrmDataRegion extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键 */
    private Long id;

    /** 父ID */
    @Excel(name = "父ID")
    private Long pid;

    /** 路径 */
    @Excel(name = "路径")
    private String path;

    /** 层级 */
    @Excel(name = "层级")
    private Long level;

    /** 中文名称 */
    @Excel(name = "中文名称")
    private String name;

    /** 英文名称 */
    @Excel(name = "英文名称")
    private String nameEn;

    /** 中文拼音 */
    @Excel(name = "中文拼音")
    private String namePinyin;

    /** 代码 */
    @Excel(name = "代码")
    private String code;

    public void setId(Long id)
    {
        this.id = id;
    }

    public Long getId()
    {
        return id;
    }
    public void setPid(Long pid)
    {
        this.pid = pid;
    }

    public Long getPid()
    {
        return pid;
    }
    public void setPath(String path)
    {
        this.path = path;
    }

    public String getPath()
    {
        return path;
    }
    public void setLevel(Long level)
    {
        this.level = level;
    }

    public Long getLevel()
    {
        return level;
    }
    public void setName(String name)
    {
        this.name = name;
    }

    public String getName()
    {
        return name;
    }
    public void setNameEn(String nameEn)
    {
        this.nameEn = nameEn;
    }

    public String getNameEn()
    {
        return nameEn;
    }
    public void setNamePinyin(String namePinyin)
    {
        this.namePinyin = namePinyin;
    }

    public String getNamePinyin()
    {
        return namePinyin;
    }
    public void setCode(String code)
    {
        this.code = code;
    }

    public String getCode()
    {
        return code;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
                .append("id", getId())
                .append("pid", getPid())
                .append("path", getPath())
                .append("level", getLevel())
                .append("name", getName())
                .append("nameEn", getNameEn())
                .append("namePinyin", getNamePinyin())
                .append("code", getCode())
                .toString();
    }
}

