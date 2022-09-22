package com.hx.rd.domain;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.hx.common.annotation.Excel;
import com.hx.common.core.domain.BaseEntity;
import lombok.Data;
import lombok.ToString;

import javax.validation.constraints.NotBlank;
import java.util.Date;

/**
 * 口味申请单明细对象 hx_taste_detail
 *
 * @author lusifer
 * @date 2022-05-25
 */
@Data
@ToString
public class HxTasteSQLDetail
{
    private static final long serialVersionUID = 1L;

    /**
     *
     */
    @NotBlank(message = "明细ID 不能为空")
    @TableId(type = IdType.ASSIGN_UUID)
    private String fid;

    /**
     *
     */
    private Long fseq;

    /**
     *
     */
    @NotBlank(message = "明细父ID 不能为空")
    private String fparentid;

    /**
     *
     */
    @NotBlank(message = "明细口味名称不能为空")
    private String fkouweimingcheng;

    /**
     *
     */
    private String fkouweimiaoshu;

    /**
     *
     */
    private String fjichukouwei;

    /**
     *
     */
    private String fjichukouweimingcheng;

    /**
     *
     */
    private String fjichukouweigaishanyijian;

    /**
     *
     */
    private String frongliang;

    /**
     *
     */
    private String fvg;

    /**
     *
     */
    private String fniclb;

    /**
     *
     */
    private String fnicnd;

    /**
     *
     */
    private String fnicdw;

    /**
     *
     */
    private String ftiaoxiangshi;

    /**
     *
     */
    private String fbanben;

    /**
     *
     */
    private String fxuanzepeifangbanben;

    /**
     *
     */
    private String fxuanzepeifangbanbenid;

    /**
     *
     */
    private String ffentiaoxiangshi;

    /**
     *
     */
    private String ffentiaoxiangshiid;

    /**
     *
     */
    private String fkwzhuangtai;

    /**
     *
     */
    private String fxgzhuangtai;

    /**
     *
     */
    private String fjdzhuangtai;

    /**
     *
     */
    private Date fyujiwanchengshijian;

    /**
     *
     */
    private Integer fisdeleted;

    /**
     *
     */
    private Date ffenpeitiaoxiangshitime;

    /**
     *
     */
    private String lastmodifyby;



}
