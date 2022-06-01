package com.hx.system.mapper;

import com.hx.system.domain.HxTaste;
import com.hx.system.domain.HxTasteDetail;

import java.util.List;

/**
 * 口味申请单Mapper接口
 * 
 * @author lusifer
 * @date 2022-05-25
 */
public interface HxTasteMapper 
{
    /**
     * 查询口味申请单
     * 
     * @param tasteId 口味申请单主键
     * @return 口味申请单
     */
    public HxTaste selectHxTasteByTasteId(String tasteId);

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
     * 删除口味申请单
     * 
     * @param tasteId 口味申请单主键
     * @return 结果
     */
    public int deleteHxTasteByTasteId(String tasteId);

    /**
     * 批量删除口味申请单
     * 
     * @param tasteIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteHxTasteByTasteIds(String[] tasteIds);

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
    public int batchHxTasteDetail(List<HxTasteDetail> hxTasteDetailList);
    

    /**
     * 通过口味申请单主键删除口味申请单明细信息
     * 
     * @param tasteId 口味申请单ID
     * @return 结果
     */
    public int deleteHxTasteDetailByTasteId(String tasteId);
}
