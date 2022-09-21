package com.hx.rd.service.impl;

import cn.hutool.core.util.StrUtil;
import com.hx.common.annotation.DataScope;
import com.hx.common.utils.DateUtils;
import com.hx.common.utils.StringUtils;
import com.hx.common.utils.uuid.SeqRD;
import com.hx.rd.domain.HxTasteSQL;
import com.hx.rd.domain.HxTasteSQLDetail;
import com.hx.rd.mapper.HxTasteSQLMapper;
import com.hx.rd.service.IHxTasteSQLService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

import static com.hx.common.utils.SecurityUtils.getUsername;

/**
 * 口味申请单Service业务层处理
 *
 * @author lusifer
 * @date 2022-05-25
 */
@Service
@Slf4j
public class HxTasteSQLServiceImpl implements IHxTasteSQLService
{
    @Autowired
    private HxTasteSQLMapper hxTasteMapper;
    /**
     * 查询口味申请单
     *
     * @return 口味申请单
     */
    @Override
    public HxTasteSQL selectHxTasteByTasteId(String fid)
    {
        //HxTasteSQL hxTaste = hxTasteMapper.selectHxTasteByTasteId(fid);
        //log.info("口味单数据:{}",hxTaste);
//        if(StrUtil.isBlank(hxTaste.getFbillno())){
//            //判断sp_NO是否重复
//            String id = SeqRD.getId();
//            /*
//            HxTaste taste = new HxTaste();
//            taste.setSpNo(hxTaste.getSpNo());
//            List<HxTaste> list = selectHxTasteList(taste);
//            if(Objects.equals(list.get(0).getSpNo(), id)){
//                log.info("审批Id重复:{}", list.get(0).getSpNo());
//                log.info("审批Id重复:{}", id);
//                log.info("重新获取审批Id重复:{}", SeqRD.getId());
//            }*/
//            hxTaste.setFbillno(id);
//            log.info("Fbillno为空,新增绑定单号为{}",hxTaste.getFbillno());
//            hxTasteMapper.updateHxTaste(hxTaste);
//        }
        HxTasteSQL id = hxTasteMapper.selectHxTasteByTasteId(fid);
        return id;

    }

    /**
     * 查询口味申请单列表
     *
     * @param hxTaste 口味申请单
     * @return 口味申请单
     */
    @Override
    public List<HxTasteSQL> selectHxTasteList(HxTasteSQL hxTaste)
    {
        return hxTasteMapper.selectHxTasteList(hxTaste);
    }
    @Override
    public List<HxTasteSQL> selectHxTasteListDetail(HxTasteSQL hxTaste)
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
    public int insertHxTaste(HxTasteSQL hxTaste)
    {
        //插入详情表
        insertHxTasteDetail(hxTaste);
        return hxTasteMapper.insertHxTaste(hxTaste);
    }

    /**
     * 修改口味申请单
     *
     * @param hxTaste 口味申请单
     * @return 结果
     */
    @Transactional
    @Override
    public int updateHxTaste(HxTasteSQL hxTaste)
    {
        hxTaste.setFlastmodifytime(DateUtils.getNowDate());
        hxTaste.setFlastmodifyby(getUsername());
        hxTasteMapper.deleteHxTasteDetailByTasteId(hxTaste.getFid());
        insertHxTasteDetail(hxTaste);
        return hxTasteMapper.updateHxTaste(hxTaste);
    }
    /**
     * 修改口味申请单
     *
     * @param hxTaste 口味申请单
     * @return 结果
     */
    @Transactional
    @Override
    public int
    updateHxTasteStart(HxTasteSQL hxTaste)
    {
        hxTaste.setFlastmodifytime(DateUtils.getNowDate());
        hxTaste.setFlastmodifyby(getUsername());
        return hxTasteMapper.updateHxTaste(hxTaste);
    }
    /**
     * 批量删除口味申请单
     *
     * @return 结果
     */
    @Transactional
    @Override
    public int deleteHxTasteByTasteIds(String[] fid)
    {
        hxTasteMapper.deleteHxTasteDetailByTasteIds(fid);
        return hxTasteMapper.deleteHxTasteByTasteIds(fid);
    }

    /**
     * 删除口味申请单信息
     *
     * @return 结果
     */
    @Transactional
    @Override
    public int deleteHxTasteByTasteId(String fid)
    {
        hxTasteMapper.deleteHxTasteDetailByTasteId(fid);
        return hxTasteMapper.deleteHxTasteByTasteId(fid);
    }

    /**
     * 新增口味申请单明细信息
     *
     * @param hxTaste 口味申请单对象
     */
    public void insertHxTasteDetail(HxTasteSQL hxTaste)
    {
        List<HxTasteSQLDetail> hxTasteDetailList = hxTaste.getHxTasteDetailList();
        String fid = hxTaste.getFid();
        if (StringUtils.isNotNull(hxTasteDetailList))
        {
            List<HxTasteSQLDetail> list = new ArrayList<HxTasteSQLDetail>();
            for (HxTasteSQLDetail hxTasteDetail : hxTasteDetailList)
            {
                hxTasteDetail.setFid(fid);
                list.add(hxTasteDetail);
            }
            if (list.size() > 0)
            {
                hxTasteMapper.batchHxTasteDetail(list);
            }
        }
    }
}
