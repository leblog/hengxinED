package com.hx.demo.entity;


import com.baomidou.mybatisplus.extension.activerecord.Model;
import java.io.Serializable;
import java.util.Date;

/**
 * (TSalTxsqd)表实体类
 *
 * @author lusifer
 * @since 2022-09-20 15:21:37
 */
@SuppressWarnings("serial")
public class TSalTxsqd extends Model<TSalTxsqd> {

    private Long id;

    private String fid;

    private String fbillno;

    private Integer fstatus;

    private String fshenqingren;

    private String fsqrid;

    private String fyuanshenqingren;

    private String fyuansqrid;

    private String fyewuxingming;

    private String fyewubumen;

    private Date fsqriqi;

    private String fkehumingcheng;

    private String fkehudaima;

    private String fyewudaima;

    private Date flaifangriqi;

    private String fdijicisongyang;

    private String fxiangmuxinxi;

    private String fshangcishenqingdanhao;

    private String fkegongyanju;

    private String fkouweishuliang;

    private Date fyangpinxuqiuriqi;

    private String fyanjuleixing;

    private String fpipeishichang;

    private String ftiandu;

    private String fliangdu;

    private String fnianchoudu;

    private String fkouweizhuangong;

    private String fxianchangshiyou;

    private String fyoujixinxi;

    private String fzidaiyanju;

    private String fhuishouyanju;

    private String ffaresizhonglei;

    private String ffaresizuzhi;

    private String fyanyoucangrongliang;

    private String fdaoyoumianzhonglei;

    private String fnigudinghanliang;

    private String fyoubeicaizhi;

    private Date fqiwangwanchengshijian;

    private String fyangpinxuqiushuliang;

    private Date fyujiwanchengshijian;

    private String fvg;

    private String fbeizhu;

    private String ffenpeigenjinren;

    private String fcurspbillno;

    private Date ftijiaotime;

    private Date fshenhetime;

    private Date ffenpeitime;

    private String flastmodifyby;

    private Date flastmodifytime;


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getFid() {
        return fid;
    }

    public void setFid(String fid) {
        this.fid = fid;
    }

    public String getFbillno() {
        return fbillno;
    }

    public void setFbillno(String fbillno) {
        this.fbillno = fbillno;
    }

    public Integer getFstatus() {
        return fstatus;
    }

    public void setFstatus(Integer fstatus) {
        this.fstatus = fstatus;
    }

    public String getFshenqingren() {
        return fshenqingren;
    }

    public void setFshenqingren(String fshenqingren) {
        this.fshenqingren = fshenqingren;
    }

    public String getFsqrid() {
        return fsqrid;
    }

    public void setFsqrid(String fsqrid) {
        this.fsqrid = fsqrid;
    }

    public String getFyuanshenqingren() {
        return fyuanshenqingren;
    }

    public void setFyuanshenqingren(String fyuanshenqingren) {
        this.fyuanshenqingren = fyuanshenqingren;
    }

    public String getFyuansqrid() {
        return fyuansqrid;
    }

    public void setFyuansqrid(String fyuansqrid) {
        this.fyuansqrid = fyuansqrid;
    }

    public String getFyewuxingming() {
        return fyewuxingming;
    }

    public void setFyewuxingming(String fyewuxingming) {
        this.fyewuxingming = fyewuxingming;
    }

    public String getFyewubumen() {
        return fyewubumen;
    }

    public void setFyewubumen(String fyewubumen) {
        this.fyewubumen = fyewubumen;
    }

    public Date getFsqriqi() {
        return fsqriqi;
    }

    public void setFsqriqi(Date fsqriqi) {
        this.fsqriqi = fsqriqi;
    }

    public String getFkehumingcheng() {
        return fkehumingcheng;
    }

    public void setFkehumingcheng(String fkehumingcheng) {
        this.fkehumingcheng = fkehumingcheng;
    }

    public String getFkehudaima() {
        return fkehudaima;
    }

    public void setFkehudaima(String fkehudaima) {
        this.fkehudaima = fkehudaima;
    }

    public String getFyewudaima() {
        return fyewudaima;
    }

    public void setFyewudaima(String fyewudaima) {
        this.fyewudaima = fyewudaima;
    }

    public Date getFlaifangriqi() {
        return flaifangriqi;
    }

    public void setFlaifangriqi(Date flaifangriqi) {
        this.flaifangriqi = flaifangriqi;
    }

    public String getFdijicisongyang() {
        return fdijicisongyang;
    }

    public void setFdijicisongyang(String fdijicisongyang) {
        this.fdijicisongyang = fdijicisongyang;
    }

    public String getFxiangmuxinxi() {
        return fxiangmuxinxi;
    }

    public void setFxiangmuxinxi(String fxiangmuxinxi) {
        this.fxiangmuxinxi = fxiangmuxinxi;
    }

    public String getFshangcishenqingdanhao() {
        return fshangcishenqingdanhao;
    }

    public void setFshangcishenqingdanhao(String fshangcishenqingdanhao) {
        this.fshangcishenqingdanhao = fshangcishenqingdanhao;
    }

    public String getFkegongyanju() {
        return fkegongyanju;
    }

    public void setFkegongyanju(String fkegongyanju) {
        this.fkegongyanju = fkegongyanju;
    }

    public String getFkouweishuliang() {
        return fkouweishuliang;
    }

    public void setFkouweishuliang(String fkouweishuliang) {
        this.fkouweishuliang = fkouweishuliang;
    }

    public Date getFyangpinxuqiuriqi() {
        return fyangpinxuqiuriqi;
    }

    public void setFyangpinxuqiuriqi(Date fyangpinxuqiuriqi) {
        this.fyangpinxuqiuriqi = fyangpinxuqiuriqi;
    }

    public String getFyanjuleixing() {
        return fyanjuleixing;
    }

    public void setFyanjuleixing(String fyanjuleixing) {
        this.fyanjuleixing = fyanjuleixing;
    }

    public String getFpipeishichang() {
        return fpipeishichang;
    }

    public void setFpipeishichang(String fpipeishichang) {
        this.fpipeishichang = fpipeishichang;
    }

    public String getFtiandu() {
        return ftiandu;
    }

    public void setFtiandu(String ftiandu) {
        this.ftiandu = ftiandu;
    }

    public String getFliangdu() {
        return fliangdu;
    }

    public void setFliangdu(String fliangdu) {
        this.fliangdu = fliangdu;
    }

    public String getFnianchoudu() {
        return fnianchoudu;
    }

    public void setFnianchoudu(String fnianchoudu) {
        this.fnianchoudu = fnianchoudu;
    }

    public String getFkouweizhuangong() {
        return fkouweizhuangong;
    }

    public void setFkouweizhuangong(String fkouweizhuangong) {
        this.fkouweizhuangong = fkouweizhuangong;
    }

    public String getFxianchangshiyou() {
        return fxianchangshiyou;
    }

    public void setFxianchangshiyou(String fxianchangshiyou) {
        this.fxianchangshiyou = fxianchangshiyou;
    }

    public String getFyoujixinxi() {
        return fyoujixinxi;
    }

    public void setFyoujixinxi(String fyoujixinxi) {
        this.fyoujixinxi = fyoujixinxi;
    }

    public String getFzidaiyanju() {
        return fzidaiyanju;
    }

    public void setFzidaiyanju(String fzidaiyanju) {
        this.fzidaiyanju = fzidaiyanju;
    }

    public String getFhuishouyanju() {
        return fhuishouyanju;
    }

    public void setFhuishouyanju(String fhuishouyanju) {
        this.fhuishouyanju = fhuishouyanju;
    }

    public String getFfaresizhonglei() {
        return ffaresizhonglei;
    }

    public void setFfaresizhonglei(String ffaresizhonglei) {
        this.ffaresizhonglei = ffaresizhonglei;
    }

    public String getFfaresizuzhi() {
        return ffaresizuzhi;
    }

    public void setFfaresizuzhi(String ffaresizuzhi) {
        this.ffaresizuzhi = ffaresizuzhi;
    }

    public String getFyanyoucangrongliang() {
        return fyanyoucangrongliang;
    }

    public void setFyanyoucangrongliang(String fyanyoucangrongliang) {
        this.fyanyoucangrongliang = fyanyoucangrongliang;
    }

    public String getFdaoyoumianzhonglei() {
        return fdaoyoumianzhonglei;
    }

    public void setFdaoyoumianzhonglei(String fdaoyoumianzhonglei) {
        this.fdaoyoumianzhonglei = fdaoyoumianzhonglei;
    }

    public String getFnigudinghanliang() {
        return fnigudinghanliang;
    }

    public void setFnigudinghanliang(String fnigudinghanliang) {
        this.fnigudinghanliang = fnigudinghanliang;
    }

    public String getFyoubeicaizhi() {
        return fyoubeicaizhi;
    }

    public void setFyoubeicaizhi(String fyoubeicaizhi) {
        this.fyoubeicaizhi = fyoubeicaizhi;
    }

    public Date getFqiwangwanchengshijian() {
        return fqiwangwanchengshijian;
    }

    public void setFqiwangwanchengshijian(Date fqiwangwanchengshijian) {
        this.fqiwangwanchengshijian = fqiwangwanchengshijian;
    }

    public String getFyangpinxuqiushuliang() {
        return fyangpinxuqiushuliang;
    }

    public void setFyangpinxuqiushuliang(String fyangpinxuqiushuliang) {
        this.fyangpinxuqiushuliang = fyangpinxuqiushuliang;
    }

    public Date getFyujiwanchengshijian() {
        return fyujiwanchengshijian;
    }

    public void setFyujiwanchengshijian(Date fyujiwanchengshijian) {
        this.fyujiwanchengshijian = fyujiwanchengshijian;
    }

    public String getFvg() {
        return fvg;
    }

    public void setFvg(String fvg) {
        this.fvg = fvg;
    }

    public String getFbeizhu() {
        return fbeizhu;
    }

    public void setFbeizhu(String fbeizhu) {
        this.fbeizhu = fbeizhu;
    }

    public String getFfenpeigenjinren() {
        return ffenpeigenjinren;
    }

    public void setFfenpeigenjinren(String ffenpeigenjinren) {
        this.ffenpeigenjinren = ffenpeigenjinren;
    }

    public String getFcurspbillno() {
        return fcurspbillno;
    }

    public void setFcurspbillno(String fcurspbillno) {
        this.fcurspbillno = fcurspbillno;
    }

    public Date getFtijiaotime() {
        return ftijiaotime;
    }

    public void setFtijiaotime(Date ftijiaotime) {
        this.ftijiaotime = ftijiaotime;
    }

    public Date getFshenhetime() {
        return fshenhetime;
    }

    public void setFshenhetime(Date fshenhetime) {
        this.fshenhetime = fshenhetime;
    }

    public Date getFfenpeitime() {
        return ffenpeitime;
    }

    public void setFfenpeitime(Date ffenpeitime) {
        this.ffenpeitime = ffenpeitime;
    }

    public String getFlastmodifyby() {
        return flastmodifyby;
    }

    public void setFlastmodifyby(String flastmodifyby) {
        this.flastmodifyby = flastmodifyby;
    }

    public Date getFlastmodifytime() {
        return flastmodifytime;
    }

    public void setFlastmodifytime(Date flastmodifytime) {
        this.flastmodifytime = flastmodifytime;
    }

}

