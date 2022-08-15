package com.hx.system.service.impl;

import java.io.Console;
import java.util.Iterator;
import java.util.List;

import cn.hutool.core.util.IdUtil;
import com.hx.common.core.domain.entity.SysDept;
import com.hx.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.ArrayList;
import com.hx.common.utils.StringUtils;
import org.springframework.transaction.annotation.Transactional;
import com.hx.system.domain.HxTasteDetail;
import com.hx.system.mapper.HxTasteMapper;
import com.hx.system.domain.HxTaste;
import com.hx.system.service.IHxTasteService;

import static com.hx.common.utils.SecurityUtils.getUsername;

/**
 * 口味申请单Service业务层处理
 *
 * @author lusifer
 * @date 2022-05-25
 */
@Service
public class HxTasteServiceImpl implements IHxTasteService
{
    @Autowired
    private HxTasteMapper hxTasteMapper;

    /**
     * 查询口味申请单
     *
     * @param tasteId 口味申请单主键
     * @return 口味申请单
     */
    @Override
    public HxTaste selectHxTasteByTasteId(String tasteId)
    {
        return hxTasteMapper.selectHxTasteByTasteId(tasteId);
    }

    /**
     * 查询口味申请单列表
     *
     * @param hxTaste 口味申请单
     * @return 口味申请单
     */
    @Override
    public List<HxTaste> selectHxTasteList(HxTaste hxTaste)
    {
        return hxTasteMapper.selectHxTasteList(hxTaste);
    }
    @Override
    public List<HxTaste> selectHxTasteListDetail(HxTaste hxTaste)
    {
        return hxTasteMapper.selectHxTasteListDetail(hxTaste);
    }
    /**
     * 递归列表
     */
    /*private void recursionFn(List<HxTaste> list, HxTaste t)
    {
        // 得到子节点列表
        List<HxTaste> childList = getChildList(list, t);
        t.setHxTasteDetailList(childList);
        for (HxTaste tChild : childList)
        {
            if (hasChild(list, tChild))
            {
                recursionFn(list, tChild);
            }
        }
    }*/

    /**
     * 得到子节点列表
     */
    /*private List<HxTaste> getChildList(List<HxTaste> list, HxTaste t)
    {
        List<HxTaste> tlist = new ArrayList<HxTaste>();
        Iterator<HxTaste> it = list.iterator();
        while (it.hasNext())
        {
            HxTaste n = (HxTaste) it.next();
            if (StringUtils.isNotNull(n.getTasteId()) && n.getTasteId().longValue() == t.getDeptId().longValue())
            {
                tlist.add(n);
            }
        }
        return tlist;
    }*/

    /**
     * 判断是否有子节点
     */
    /*private boolean hasChild(List<HxTaste> list, HxTaste t)
    {
        return getChildList(list, t).size() > 0;
    }*/

    /**
     * 新增口味申请单
     *
     * @param hxTaste 口味申请单
     * @return 结果
     */
    @Transactional
    @Override
    public int insertHxTaste(HxTaste hxTaste)
    {
        hxTaste.setTasteId(String.valueOf(IdUtil.getSnowflakeNextId()));
        hxTaste.setCreateTime(DateUtils.getNowDate());
        hxTaste.setCreateBy(getUsername());
        int rows = hxTasteMapper.insertHxTaste(hxTaste);
        //插入详情表
        insertHxTasteDetail(hxTaste);
        return rows;
    }

    /**
     * 修改口味申请单
     *
     * @param hxTaste 口味申请单
     * @return 结果
     */
    @Transactional
    @Override
    public int updateHxTaste(HxTaste hxTaste)
    {
        hxTaste.setUpdateTime(DateUtils.getNowDate());
        hxTaste.setUpdateBy(getUsername());
        hxTasteMapper.deleteHxTasteDetailByTasteId(hxTaste.getTasteId());
        insertHxTasteDetail(hxTaste);
        return hxTasteMapper.updateHxTaste(hxTaste);
    }

    /**
     * 批量删除口味申请单
     *
     * @param tasteIds 需要删除的口味申请单主键
     * @return 结果
     */
    @Transactional
    //@Override
    public int deleteHxTasteByTasteIds(String[] tasteIds)
    {
        hxTasteMapper.deleteHxTasteDetailByTasteIds(tasteIds);
        return hxTasteMapper.deleteHxTasteByTasteIds(tasteIds);
    }

    /**
     * 删除口味申请单信息
     *
     * @param tasteId 口味申请单主键
     * @return 结果
     */
    @Transactional
    //@Override
    public int deleteHxTasteByTasteId(String tasteId)
    {
        hxTasteMapper.deleteHxTasteDetailByTasteId(tasteId);
        return hxTasteMapper.deleteHxTasteByTasteId(tasteId);
    }

    /**
     * 新增口味申请单明细信息
     *
     * @param hxTaste 口味申请单对象
     */
    public void insertHxTasteDetail(HxTaste hxTaste)
    {
        List<HxTasteDetail> hxTasteDetailList = hxTaste.getHxTasteDetailList();
        String tasteId = hxTaste.getTasteId();
        if (StringUtils.isNotNull(hxTasteDetailList))
        {
            List<HxTasteDetail> list = new ArrayList<HxTasteDetail>();
            for (HxTasteDetail hxTasteDetail : hxTasteDetailList)
            {
                hxTasteDetail.setTasteId(tasteId);
                list.add(hxTasteDetail);
            }
            if (list.size() > 0)
            {
                hxTasteMapper.batchHxTasteDetail(list);
            }
        }
    }
}
