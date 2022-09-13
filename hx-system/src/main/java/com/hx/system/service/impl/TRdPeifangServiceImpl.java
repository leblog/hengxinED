package com.hx.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.hx.system.mapper.TRdPeifangMapper;
import com.hx.system.domain.TRdPeifang;
import com.hx.system.service.ITRdPeifangService;

/**
 * 测试-多数据源Service业务层处理
 * 
 * @author lusifer
 * @date 2022-09-13
 */
@Service
public class TRdPeifangServiceImpl implements ITRdPeifangService 
{
    @Autowired
    private TRdPeifangMapper tRdPeifangMapper;

    /**
     * 查询测试-多数据源
     * 
     * @param id 测试-多数据源主键
     * @return 测试-多数据源
     */
    @Override
    public TRdPeifang selectTRdPeifangById(Long id)
    {
        return tRdPeifangMapper.selectTRdPeifangById(id);
    }

    /**
     * 查询测试-多数据源列表
     * 
     * @param tRdPeifang 测试-多数据源
     * @return 测试-多数据源
     */
    @Override
    public List<TRdPeifang> selectTRdPeifangList(TRdPeifang tRdPeifang)
    {
        return tRdPeifangMapper.selectTRdPeifangList(tRdPeifang);
    }

    /**
     * 新增测试-多数据源
     * 
     * @param tRdPeifang 测试-多数据源
     * @return 结果
     */
    @Override
    public int insertTRdPeifang(TRdPeifang tRdPeifang)
    {
        return tRdPeifangMapper.insertTRdPeifang(tRdPeifang);
    }

    /**
     * 修改测试-多数据源
     * 
     * @param tRdPeifang 测试-多数据源
     * @return 结果
     */
    @Override
    public int updateTRdPeifang(TRdPeifang tRdPeifang)
    {
        return tRdPeifangMapper.updateTRdPeifang(tRdPeifang);
    }

    /**
     * 批量删除测试-多数据源
     * 
     * @param ids 需要删除的测试-多数据源主键
     * @return 结果
     */
    @Override
    public int deleteTRdPeifangByIds(Long[] ids)
    {
        return tRdPeifangMapper.deleteTRdPeifangByIds(ids);
    }

    /**
     * 删除测试-多数据源信息
     * 
     * @param id 测试-多数据源主键
     * @return 结果
     */
    @Override
    public int deleteTRdPeifangById(Long id)
    {
        return tRdPeifangMapper.deleteTRdPeifangById(id);
    }
}
