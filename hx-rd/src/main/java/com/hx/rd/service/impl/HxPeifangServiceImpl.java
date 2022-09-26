package com.hx.rd.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.hx.rd.mapper.HxPeifangMapper;
import com.hx.rd.domain.HxPeifang;
import com.hx.rd.service.HxPeifangService;

/**
 * 调香师Service业务层处理
 *
 * @author lusifer
 * @date 2022-09-26
 */
@Service
public class HxPeifangServiceImpl implements HxPeifangService
{
    @Autowired
    private HxPeifangMapper peifangMapper;

    /**
     * 查询调香师
     *
     * @param id 调香师主键
     * @return 调香师
     */
    @Override
    public HxPeifang selectPeifangById(Long id)
    {
        return peifangMapper.selectPeifangById(id);
    }

    /**
     * 查询调香师列表
     *
     * @param peifang 调香师
     * @return 调香师
     */
    @Override
    public List<HxPeifang> selectPeifangList(HxPeifang peifang)
    {
        return peifangMapper.selectPeifangList(peifang);
    }

    /**
     * 新增调香师
     *
     * @param peifang 调香师
     * @return 结果
     */
    @Override
    public int insertPeifang(HxPeifang peifang)
    {
        return peifangMapper.insertPeifang(peifang);
    }

    /**
     * 修改调香师
     *
     * @param peifang 调香师
     * @return 结果
     */
    @Override
    public int updatePeifang(HxPeifang peifang)
    {
        return peifangMapper.updatePeifang(peifang);
    }

    /**
     * 批量删除调香师
     *
     * @param ids 需要删除的调香师主键
     * @return 结果
     */
    @Override
    public int deletePeifangByIds(Long[] ids)
    {
        return peifangMapper.deletePeifangByIds(ids);
    }

    /**
     * 删除调香师信息
     *
     * @param id 调香师主键
     * @return 结果
     */
    @Override
    public int deletePeifangById(Long id)
    {
        return peifangMapper.deletePeifangById(id);
    }
}
