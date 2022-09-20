package crud;

import cn.hutool.core.util.IdUtil;
import com.hx.common.utils.DateUtils;
import com.hx.common.utils.uuid.SeqRD;
import com.hx.rd.domain.TSalTxsqd;
import com.hx.rd.mapper.TSalTxsqdMapper;
import com.hx.rd.service.TSalTxsqdService;

import javax.annotation.Resource;

public class save {
    public static TSalTxsqdService service;
    public static void main(String[] args) {


        final TSalTxsqd tSalTxsqd = new TSalTxsqd();
        tSalTxsqd.setFid(IdUtil.getSnowflakeNextIdStr());
        tSalTxsqd.setFbillno(SeqRD.getId());
        tSalTxsqd.setFlastmodifytime(DateUtils.getNowDate());
        tSalTxsqd.setFlastmodifyby("测试");
        System.out.println("内容 = " + tSalTxsqd);
        final boolean save = service.save(tSalTxsqd);

        System.out.println("save = " + save);
    }
}
