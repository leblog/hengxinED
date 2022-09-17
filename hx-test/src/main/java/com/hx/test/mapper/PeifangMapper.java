package com.hx.test.mapper;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.hx.test.domain.Peifang;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.poi.ss.formula.functions.T;

/**
* @author RD02
* @description 针对表【T_R&D_Peifang】的数据库操作Mapper
* @createDate 2022-09-16 17:51:08
* @Entity com.hx.test.domain.Peifang
*/
public interface PeifangMapper extends BaseMapper<Peifang> {
    IPage<T> page(IPage<T> page, Wrapper<T> queryWrapper);


}




