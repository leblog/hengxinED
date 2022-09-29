package com.hx.rd.mapper;

import java.util.List;

import com.baomidou.mybatisplus.annotation.InterceptorIgnore;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.hx.rd.domain.HxPeifang;

/**
 * 调香师Service接口
 *
 * @author lusifer
 * @date 2022-09-26
 */
@InterceptorIgnore(tenantLine = "true")
public interface HxPeifangMapper extends BaseMapper<HxPeifang>
{
    /**
     * 查询调香师
     *
     * @param id 调香师主键
     * @return 调香师
     */
    public HxPeifang selectPeifangById(Long id);

    /**
     * 查询调香师列表
     *
     * @param peifang 调香师
     * @return 调香师集合
     */
    public List<HxPeifang> selectPeifangList(HxPeifang peifang);

    /**
     * 新增调香师
     *
     * @param peifang 调香师
     * @return 结果
     */
    public int insertPeifang(HxPeifang peifang);

    /**
     * 修改调香师
     *
     * @param peifang 调香师
     * @return 结果
     */
    public int updatePeifang(HxPeifang peifang);

    /**
     * 批量删除调香师
     *
     * @param ids 需要删除的调香师主键集合
     * @return 结果
     */
    public int deletePeifangByIds(Long[] ids);

    /**
     * 删除调香师信息
     *
     * @param id 调香师主键
     * @return 结果
     */
    public int deletePeifangById(Long id);
}
