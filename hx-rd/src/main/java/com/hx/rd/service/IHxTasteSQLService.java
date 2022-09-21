package com.hx.rd.service;

import com.hx.rd.domain.HxTasteSQL;

import java.util.List;

/**
 * 口味申请单Service接口
 *
 * @author lusifer
 * @date 2022-05-25
 */
public interface IHxTasteSQLService
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
    public int updateHxTasteStart(HxTasteSQL hxTaste);

    /**
     * 批量删除口味申请单
     *
     * @param tasteIds 需要删除的口味申请单主键集合
     * @return 结果
     */
    public int deleteHxTasteByTasteIds(String[] fid);

    /**
     * 删除口味申请单信息
     *
     * @param tasteId 口味申请单主键
     * @return 结果
     */
    public int deleteHxTasteByTasteId(String tasteId);
}
