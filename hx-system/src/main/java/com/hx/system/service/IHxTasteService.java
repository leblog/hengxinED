package com.hx.system.service;

import com.hx.system.domain.HxTaste;

import java.util.List;

/**
 * 口味申请单Service接口
 * 
 * @author lusifer
 * @date 2022-05-25
 */
public interface IHxTasteService 
{
    /**
     * 查询口味申请单
     * 
     * @param tasteId 口味申请单主键
     * @return 口味申请单
     */
    public HxTaste selectHxTasteByTasteId(Long tasteId);

    /**
     * 查询口味申请单列表
     * 
     * @param hxTaste 口味申请单
     * @return 口味申请单集合
     */
    public List<HxTaste> selectHxTasteList(HxTaste hxTaste);

    /**
     * 新增口味申请单
     * 
     * @param hxTaste 口味申请单
     * @return 结果
     */
    public int insertHxTaste(HxTaste hxTaste);

    /**
     * 修改口味申请单
     * 
     * @param hxTaste 口味申请单
     * @return 结果
     */
    public int updateHxTaste(HxTaste hxTaste);

    /**
     * 批量删除口味申请单
     * 
     * @param tasteIds 需要删除的口味申请单主键集合
     * @return 结果
     */
    public int deleteHxTasteByTasteIds(String[] tasteIds);

    /**
     * 删除口味申请单信息
     * 
     * @param tasteId 口味申请单主键
     * @return 结果
     */
    public int deleteHxTasteByTasteId(String tasteId);
}