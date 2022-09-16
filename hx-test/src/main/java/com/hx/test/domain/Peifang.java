package com.hx.test.domain;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.util.Date;
import lombok.Data;

/**
 *
 * @TableName T_R&D_Peifang
 */
@TableName(value ="[T_R&amp;D_Peifang]")
@Data
public class Peifang implements Serializable {
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
    private Date fdate;

    /**
     *
     */
    private String frdcode;

    /**
     *
     */
    private Integer fstatus;

    /**
     *
     */
    private String ftiaoxiangshi;

    /**
     *
     */
    private String fpeifangleibie;

    /**
     *
     */
    private Double fvg;

    /**
     *
     */
    private Double fpg;

    /**
     *
     */
    private String fnicleibie;

    /**
     *
     */
    private String fnicdanwei;

    /**
     *
     */
    private String fnicazhanbi;

    /**
     *
     */
    private String fnicbzhanbi;

    /**
     *
     */
    private String fnicnongdu;

    /**
     *
     */
    private String ftxsqdh;

    /**
     *
     */
    private String ftxsqdhmxfid;

    /**
     *
     */
    private String fkehubianma;

    /**
     *
     */
    private String fyanfadaima;

    /**
     *
     */
    private String fkouweimingcheng;

    /**
     *
     */
    private String fbanben;

    /**
     *
     */
    private Boolean fkongzhishunxu;

    /**
     *
     */
    private String fshoukongkwmingcheng;

    /**
     *
     */
    private String fshoukongbianma;

    /**
     *
     */
    private Date fshoukongshijian;

    /**
     *
     */
    private Date fkaishishijian;

    /**
     *
     */
    private Date fjieshushijian;

    /**
     *
     */
    private String fguanlianpeifangfid;

    /**
     *
     */
    private String fyanfaqufen;

    /**
     *
     */
    private String fyanfayuanfid;

    /**
     *
     */
    private String fmaterialerpid;

    /**
     *
     */
    private String fkouweidalei;

    /**
     *
     */
    private String fbomerpid;

    /**
     *
     */
    private String fgybomerpid;

    /**
     *
     */
    private Integer fisdeleted;

    /**
     *
     */
    private Integer fisupload;

    /**
     *
     */
    private Date ffinishtime;

    /**
     *
     */
    private Date ftiaocankaoyangtime;

    /**
     *
     */
    private Date fcreatetime;

    /**
     *
     */
    private String fcreateby;

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
