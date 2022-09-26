package com.hx.rd.domain;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

/**
 *
 * @TableName T_R&D_PeifangMx
 */
@Data
@TableName("[T_R&amp;D_PeifangMx]")
public class HxPeifangmx implements Serializable {
    /**
     *
     */
    private String fid;

    /**
     *
     */
    private String fparentid;

    /**
     *
     */
    private Integer fseq;

    /**
     *
     */
    private String fwuliaobianma;

    /**
     *
     */
    private String fwuliaomingcheng;

    /**
     *
     */
    private BigDecimal ftianjialiang;

    /**
     *
     */
    private String lastmodifyby;

    /**
     *
     */
    private Date lastmodifytime;

    /**
     *
     */
    private String fstatus;

    private static final long serialVersionUID = 1L;
}
