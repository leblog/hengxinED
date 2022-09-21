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
    @NotBlank(message = "fbillno不能为空")
    private String fbillno;

    /**
     *
     */
    private Integer fstatus;

    /**
     *
     */
    @NotBlank(message = "申请人不能为空")
    private String fshenqingren;

    /**
     *
     */
    private String fsqrid;

    /**
     *
     */
    private String fyuanshenqingren;

    /**
     *
     */
    private String fyuansqrid;

    /**
     *
     */
    private String fyewuxingming;

    /**
     *
     */
    private String fyewubumen;

    /**
     *
     */
    private Date fsqriqi;

    /**
     *
     */
    private String fkehumingcheng;

    /**
     *
     */
    private String fkehudaima;

    /**
     *
     */
    private String fyewudaima;

    /**
     *
     */
    private Date flaifangriqi;

    /**
     *
     */
    private String fdijicisongyang;

    /**
     *
     */
    private String fxiangmuxinxi;

    /**
     *
     */
    private String fshangcishenqingdanhao;

    /**
     *
     */
    private String fkegongyanju;

    /**
     *
     */
    private String fkouweishuliang;

    /**
     *
     */
    private Date fyangpinxuqiuriqi;

    /**
     *
     */
    private String fyanjuleixing;

    /**
     *
     */
    private String fpipeishichang;

    /**
     *
     */
    private String ftiandu;

    /**
     *
     */
    private String fliangdu;

    /**
     *
     */
    private String fnianchoudu;

    /**
     *
     */
    private String fkouweizhuangong;

    /**
     *
     */
    private String fxianchangshiyou;

    /**
     *
     */
    private String fyoujixinxi;

    /**
     *
     */
    private String fzidaiyanju;

    /**
     *
     */
    private String fhuishouyanju;

    /**
     *
     */
    private String ffaresizhonglei;

    /**
     *
     */
    private String ffaresizuzhi;

    /**
     *
     */
    private String fyanyoucangrongliang;

    /**
     * 导油棉类型
     */
    private String fdaoyoumianzhonglei;

    /**
     *
     */
    private String fnigudinghanliang;

    /**
     * 油环材质类型
     */
    private String fyoubeicaizhi;

    /**
     *
     */
    private Date fqiwangwanchengshijian;

    /**
     *
     */
    private String fyangpinxuqiushuliang;

    /**
     *
     */
    private Date fyujiwanchengshijian;

    /**
     *
     */
    private String fvg;

    /**
     *
     */
    private String fbeizhu;

    /**
     *
     */
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
    private String flastmodifyby;

    /**
     *
     */
    @NotBlank(message = "最后更新时间 flastmodifytime 不能为空")
    private Date flastmodifytime;

    /** 口味申请单明细信息 */
    private List<HxTasteSQLDetail> hxTasteDetailList;


}
