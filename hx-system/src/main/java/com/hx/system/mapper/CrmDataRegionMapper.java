package com.hx.system.mapper;

import java.util.List;
import com.hx.system.domain.CrmDataRegion;

/**
 * 全球地区Mapper接口
 *
 * @author lusifer
 * @date 2022-08-12
 */
public interface CrmDataRegionMapper
{
    /**
     * 查询全球地区
     *
     * @param id 全球地区主键
     * @return 全球地区
     */
    public CrmDataRegion selectCrmDataRegionById(Long id);

    /**
     * 查询全球地区列表
     *
     * @param crmDataRegion 全球地区
     * @return 全球地区集合
     */
    public List<CrmDataRegion> selectCrmDataRegionList(CrmDataRegion crmDataRegion);

    /**
     * 新增全球地区
     *
     * @param crmDataRegion 全球地区
     * @return 结果
     */
    public int insertCrmDataRegion(CrmDataRegion crmDataRegion);

    /**
     * 修改全球地区
     *
     * @param crmDataRegion 全球地区
     * @return 结果
     */
    public int updateCrmDataRegion(CrmDataRegion crmDataRegion);

    /**
     * 删除全球地区
     *
     * @param id 全球地区主键
     * @return 结果
     */
    public int deleteCrmDataRegionById(Long id);

    /**
     * 批量删除全球地区
     *
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteCrmDataRegionByIds(Long[] ids);
}
