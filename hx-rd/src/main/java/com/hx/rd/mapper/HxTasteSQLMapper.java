package com.hx.rd.mapper;

import com.hx.rd.domain.HxTasteSQL;
import com.hx.rd.domain.HxTasteSQLDetail;

import java.util.List;

/**
 * 口味申请单Mapper接口
 *
 * @author lusifer
 * @date 2022-05-25
 */
public interface HxTasteSQLMapper
{
    /**
     * 查询口味申请单
     *
     * @param tasteId 口味申请单主键
     * @return 口味申请单
     */
    public HxTasteSQL selectHxTasteByTasteId(String fid);


    /**
     * 查询口味申请单列表
     *
     * @param hxTaste 口味申请单
     * @return 口味申请单集合
     */

    public List<HxTasteSQL> selectHxTasteList(HxTasteSQL hxTaste);
    public List<HxTasteSQL> selectHxTasteListDetail(HxTasteSQL hxTaste);

    /**
     * 新增口味申请单
     *
     * @param hxTaste 口味申请单
     * @return 结果
     */
    public int insertHxTaste(HxTasteSQL hxTaste);

    /**
     * 修改口味申请单
     *
     * @param hxTaste 口味申请单
     * @return 结果
     */
    public int updateHxTaste(HxTasteSQL hxTaste);

    /**
     * 删除口味申请单
     *
     * @param tasteId 口味申请单主键
     * @return 结果
     */
    public int deleteHxTasteByTasteId(String fid);

    /**
     * 批量删除口味申请单
     *
     * @param tasteIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteHxTasteByTasteIds(String[] fid);

    /**
     * 批量删除口味申请单明细
     *
     * @param tasteIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteHxTasteDetailByTasteIds(String[] tasteIds);

    /**
     * 批量新增口味申请单明细
     *
     * @param hxTasteDetailList 口味申请单明细列表
     * @return 结果
     */
    public int batchHxTasteDetail(List<HxTasteSQLDetail> hxTasteDetailList);


    /**
     * 通过口味申请单主键删除口味申请单明细信息
     *
     * @param tasteId 口味申请单ID
     * @return 结果
     */
    public int deleteHxTasteDetailByTasteId(String fid);
}
