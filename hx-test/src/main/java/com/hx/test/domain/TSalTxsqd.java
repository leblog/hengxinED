package com.hx.test.domain;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 *
 * @TableName T_SAL_Txsqd
 */
@TableName(value ="T_SAL_Txsqd")
@Data
public class TSalTxsqd implements Serializable {
    /**
     *
     */
    private Long id;

    /**
     *
     */
    private String fid;

    /**
     *
     */
    private String fbillno;

    /**
     *
     */
    private Integer fstatus;

    /**
     *
     */
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
    private String flastmodifyby;

    /**
     *
     */
    private Date flastmodifytime;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;
}
