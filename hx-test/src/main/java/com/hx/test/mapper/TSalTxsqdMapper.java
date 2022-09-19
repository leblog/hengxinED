package com.hx.test.mapper;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.hx.test.domain.TSalTxsqd;
import org.apache.poi.ss.formula.functions.T;

/**
* @author RD02
* @description 针对表【T_SAL_Txsqd】的数据库操作Mapper
* @createDate 2022-09-19 17:03:49
* @Entity com.hx.test.domain.TSalTxsqd
*/
public interface TSalTxsqdMapper extends BaseMapper<TSalTxsqd> {
    /*分页条件查询*/
    IPage<T> page(IPage<T> page, Wrapper<T> queryWrapper);
}




