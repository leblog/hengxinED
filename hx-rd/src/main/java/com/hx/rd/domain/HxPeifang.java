package com.hx.rd.domain;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.hx.common.core.domain.BaseEntity;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.Date;

/**
 *
 * @TableName T_R&D_Peifang    [T_R&amp;D_Peifang]   [T_R<![CDATA[&]]>D_Peifang]
 */
@Data
@TableName(value = "[T_RD_Peifang]")
//@TableName(value = "[T_R&amp;D_Peifang]")
public class HxPeifang {
    private static final long serialVersionUID = 1L;
    /**
     *
     */
    @TableId(type=IdType.AUTO)
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
     * -1 标识 删除
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

}
