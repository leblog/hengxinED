package com.hx.system.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.hx.common.annotation.Excel;
import com.hx.common.core.domain.BaseEntity;

/**
 * 测试-多数据源对象 t_rd_peifang
 * 
 * @author lusifer
 * @date 2022-09-13
 */
public class TRdPeifang extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private Long id;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String fid;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String fbillno;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private Date fdate;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String frdcode;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private Long fstatus;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String ftiaoxiangshi;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String fpeifangleibie;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String ftxsqdh;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private Long fvg;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private Long fpg;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String fnicleibie;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String fnicdanwei;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String fnicazhanbi;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String fnicbzhanbi;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String fnicnongdu;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String ftxsqdhmxfid;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String fyanfadaima;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String fkouweimingcheng;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String fbanben;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private Integer fkongzhishunxu;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String fshoukongbianma;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private Date fshoukongshijian;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private Date fkaishishijian;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private Date fjieshushijian;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String fguanlianpeifangfid;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String fmaterialerpid;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String fkouweidalei;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String fbomerpid;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private Long fisdeleted;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String flastmodifyby;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private Date fcreatetime;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private Date flastmodifytime;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setFid(String fid) 
    {
        this.fid = fid;
    }

    public String getFid() 
    {
        return fid;
    }
    public void setFbillno(String fbillno) 
    {
        this.fbillno = fbillno;
    }

    public String getFbillno() 
    {
        return fbillno;
    }
    public void setFdate(Date fdate) 
    {
        this.fdate = fdate;
    }

    public Date getFdate() 
    {
        return fdate;
    }
    public void setFrdcode(String frdcode) 
    {
        this.frdcode = frdcode;
    }

    public String getFrdcode() 
    {
        return frdcode;
    }
    public void setFstatus(Long fstatus) 
    {
        this.fstatus = fstatus;
    }

    public Long getFstatus() 
    {
        return fstatus;
    }
    public void setFtiaoxiangshi(String ftiaoxiangshi) 
    {
        this.ftiaoxiangshi = ftiaoxiangshi;
    }

    public String getFtiaoxiangshi() 
    {
        return ftiaoxiangshi;
    }
    public void setFpeifangleibie(String fpeifangleibie) 
    {
        this.fpeifangleibie = fpeifangleibie;
    }

    public String getFpeifangleibie() 
    {
        return fpeifangleibie;
    }
    public void setFtxsqdh(String ftxsqdh) 
    {
        this.ftxsqdh = ftxsqdh;
    }

    public String getFtxsqdh() 
    {
        return ftxsqdh;
    }
    public void setFvg(Long fvg) 
    {
        this.fvg = fvg;
    }

    public Long getFvg() 
    {
        return fvg;
    }
    public void setFpg(Long fpg) 
    {
        this.fpg = fpg;
    }

    public Long getFpg() 
    {
        return fpg;
    }
    public void setFnicleibie(String fnicleibie) 
    {
        this.fnicleibie = fnicleibie;
    }

    public String getFnicleibie() 
    {
        return fnicleibie;
    }
    public void setFnicdanwei(String fnicdanwei) 
    {
        this.fnicdanwei = fnicdanwei;
    }

    public String getFnicdanwei() 
    {
        return fnicdanwei;
    }
    public void setFnicazhanbi(String fnicazhanbi) 
    {
        this.fnicazhanbi = fnicazhanbi;
    }

    public String getFnicazhanbi() 
    {
        return fnicazhanbi;
    }
    public void setFnicbzhanbi(String fnicbzhanbi) 
    {
        this.fnicbzhanbi = fnicbzhanbi;
    }

    public String getFnicbzhanbi() 
    {
        return fnicbzhanbi;
    }
    public void setFnicnongdu(String fnicnongdu) 
    {
        this.fnicnongdu = fnicnongdu;
    }

    public String getFnicnongdu() 
    {
        return fnicnongdu;
    }
    public void setFtxsqdhmxfid(String ftxsqdhmxfid) 
    {
        this.ftxsqdhmxfid = ftxsqdhmxfid;
    }

    public String getFtxsqdhmxfid() 
    {
        return ftxsqdhmxfid;
    }
    public void setFyanfadaima(String fyanfadaima) 
    {
        this.fyanfadaima = fyanfadaima;
    }

    public String getFyanfadaima() 
    {
        return fyanfadaima;
    }
    public void setFkouweimingcheng(String fkouweimingcheng) 
    {
        this.fkouweimingcheng = fkouweimingcheng;
    }

    public String getFkouweimingcheng() 
    {
        return fkouweimingcheng;
    }
    public void setFbanben(String fbanben) 
    {
        this.fbanben = fbanben;
    }

    public String getFbanben() 
    {
        return fbanben;
    }
    public void setFkongzhishunxu(Integer fkongzhishunxu) 
    {
        this.fkongzhishunxu = fkongzhishunxu;
    }

    public Integer getFkongzhishunxu() 
    {
        return fkongzhishunxu;
    }
    public void setFshoukongbianma(String fshoukongbianma) 
    {
        this.fshoukongbianma = fshoukongbianma;
    }

    public String getFshoukongbianma() 
    {
        return fshoukongbianma;
    }
    public void setFshoukongshijian(Date fshoukongshijian) 
    {
        this.fshoukongshijian = fshoukongshijian;
    }

    public Date getFshoukongshijian() 
    {
        return fshoukongshijian;
    }
    public void setFkaishishijian(Date fkaishishijian) 
    {
        this.fkaishishijian = fkaishishijian;
    }

    public Date getFkaishishijian() 
    {
        return fkaishishijian;
    }
    public void setFjieshushijian(Date fjieshushijian) 
    {
        this.fjieshushijian = fjieshushijian;
    }

    public Date getFjieshushijian() 
    {
        return fjieshushijian;
    }
    public void setFguanlianpeifangfid(String fguanlianpeifangfid) 
    {
        this.fguanlianpeifangfid = fguanlianpeifangfid;
    }

    public String getFguanlianpeifangfid() 
    {
        return fguanlianpeifangfid;
    }
    public void setFmaterialerpid(String fmaterialerpid) 
    {
        this.fmaterialerpid = fmaterialerpid;
    }

    public String getFmaterialerpid() 
    {
        return fmaterialerpid;
    }
    public void setFkouweidalei(String fkouweidalei) 
    {
        this.fkouweidalei = fkouweidalei;
    }

    public String getFkouweidalei() 
    {
        return fkouweidalei;
    }
    public void setFbomerpid(String fbomerpid) 
    {
        this.fbomerpid = fbomerpid;
    }

    public String getFbomerpid() 
    {
        return fbomerpid;
    }
    public void setFisdeleted(Long fisdeleted) 
    {
        this.fisdeleted = fisdeleted;
    }

    public Long getFisdeleted() 
    {
        return fisdeleted;
    }
    public void setFlastmodifyby(String flastmodifyby) 
    {
        this.flastmodifyby = flastmodifyby;
    }

    public String getFlastmodifyby() 
    {
        return flastmodifyby;
    }
    public void setFcreatetime(Date fcreatetime) 
    {
        this.fcreatetime = fcreatetime;
    }

    public Date getFcreatetime() 
    {
        return fcreatetime;
    }
    public void setFlastmodifytime(Date flastmodifytime) 
    {
        this.flastmodifytime = flastmodifytime;
    }

    public Date getFlastmodifytime() 
    {
        return flastmodifytime;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("fid", getFid())
            .append("fbillno", getFbillno())
            .append("fdate", getFdate())
            .append("frdcode", getFrdcode())
            .append("fstatus", getFstatus())
            .append("ftiaoxiangshi", getFtiaoxiangshi())
            .append("fpeifangleibie", getFpeifangleibie())
            .append("ftxsqdh", getFtxsqdh())
            .append("fvg", getFvg())
            .append("fpg", getFpg())
            .append("fnicleibie", getFnicleibie())
            .append("fnicdanwei", getFnicdanwei())
            .append("fnicazhanbi", getFnicazhanbi())
            .append("fnicbzhanbi", getFnicbzhanbi())
            .append("fnicnongdu", getFnicnongdu())
            .append("ftxsqdhmxfid", getFtxsqdhmxfid())
            .append("fyanfadaima", getFyanfadaima())
            .append("fkouweimingcheng", getFkouweimingcheng())
            .append("fbanben", getFbanben())
            .append("fkongzhishunxu", getFkongzhishunxu())
            .append("fshoukongbianma", getFshoukongbianma())
            .append("fshoukongshijian", getFshoukongshijian())
            .append("fkaishishijian", getFkaishishijian())
            .append("fjieshushijian", getFjieshushijian())
            .append("fguanlianpeifangfid", getFguanlianpeifangfid())
            .append("fmaterialerpid", getFmaterialerpid())
            .append("fkouweidalei", getFkouweidalei())
            .append("fbomerpid", getFbomerpid())
            .append("fisdeleted", getFisdeleted())
            .append("flastmodifyby", getFlastmodifyby())
            .append("fcreatetime", getFcreatetime())
            .append("flastmodifytime", getFlastmodifytime())
            .toString();
    }
}
