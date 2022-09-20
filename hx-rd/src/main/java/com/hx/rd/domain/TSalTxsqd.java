package com.hx.rd.domain;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.NotNull;
import java.io.Serializable;
import java.util.Date;

/**
 *
 * @TableName T_SAL_Txsqd
 */
@TableName(value ="T_SAL_Txsqd")
@Data
public class TSalTxsqd implements Serializable {

   @TableId(type = IdType.AUTO)
   private Long id;

    @NotNull(message = "唯一ID不能为空")
    private String fid;


    @NotNull(message = "企业微信审批ID不能为空")
    private String fbillno;

    /**
     *
     */
    private Integer fstatus;

    @NotNull(message = "申请人不能为空")
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
     *
     */
    private String fdaoyoumianzhonglei;

    /**
     *
     */
    private String fnigudinghanliang;

    /**
     *
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
    @NotNull(message = "最后更新人不能为空")
    private String flastmodifyby;

    /**
     *
     */
    @NotNull(message = "最后更新时间不能为空")
    private Date flastmodifytime;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;
}
