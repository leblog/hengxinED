package com.hx.system.service;

import java.util.List;
import com.hx.system.domain.TRdPeifang;

/**
 * 测试-多数据源Service接口
 * 
 * @author lusifer
 * @date 2022-09-13
 */
public interface ITRdPeifangService 
{
    /**
     * 查询测试-多数据源
     * 
     * @param id 测试-多数据源主键
     * @return 测试-多数据源
     */
    public TRdPeifang selectTRdPeifangById(Long id);

    /**
     * 查询测试-多数据源列表
     * 
     * @param tRdPeifang 测试-多数据源
     * @return 测试-多数据源集合
     */
    public List<TRdPeifang> selectTRdPeifangList(TRdPeifang tRdPeifang);

    /**
     * 新增测试-多数据源
     * 
     * @param tRdPeifang 测试-多数据源
     * @return 结果
     */
    public int insertTRdPeifang(TRdPeifang tRdPeifang);

    /**
     * 修改测试-多数据源
     * 
     * @param tRdPeifang 测试-多数据源
     * @return 结果
     */
    public int updateTRdPeifang(TRdPeifang tRdPeifang);

    /**
     * 批量删除测试-多数据源
     * 
     * @param ids 需要删除的测试-多数据源主键集合
     * @return 结果
     */
    public int deleteTRdPeifangByIds(Long[] ids);

    /**
     * 删除测试-多数据源信息
     * 
     * @param id 测试-多数据源主键
     * @return 结果
     */
    public int deleteTRdPeifangById(Long id);
}
