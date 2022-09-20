package com.hx.rd.controller;

import cn.hutool.core.util.IdUtil;
import cn.hutool.json.JSONUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.hx.common.core.controller.BaseController;
import com.hx.common.core.domain.AjaxResult;
import com.hx.common.utils.DateUtils;
import com.hx.common.utils.uuid.SeqRD;
import com.hx.rd.domain.TSalTxsqd;
import com.hx.rd.mapper.TSalTxsqdMapper;
import com.hx.rd.service.TSalTxsqdService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
@Slf4j
@RestController
@RequestMapping("/open/crud")
public class TSalTxsqdController extends BaseController {
    @Resource
    private TSalTxsqdService tSalTxsqdService;
    @Resource
    private TSalTxsqdMapper tSalTxsqdMapper;
    /**
     * 分页查询所有数据
     *
     * @param pageNum 第几页
     * @param pageSize 每页分多少
     * @return 所有数据
     */
    @GetMapping("/list")
    public IPage list(
            @RequestParam(required = false, defaultValue = "1") int pageNum,
            @RequestParam(required = false, defaultValue = "10") int pageSize)
    {
        Page<TSalTxsqd> page = new Page<>(pageNum,pageSize);
        QueryWrapper<TSalTxsqd> wrapper = new QueryWrapper<>();
        // 日期倒序
        wrapper.orderByDesc("flastmodifytime");
        IPage<TSalTxsqd> iPage = tSalTxsqdService.page(page,wrapper);
        return iPage;
    }

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("/one")
    public IPage selectOne(@RequestParam String id) {
        Page<TSalTxsqd> page = new Page<>(1,10);
        QueryWrapper<TSalTxsqd> wrapper = new QueryWrapper<>();
        wrapper.eq("fid",id);
        IPage<TSalTxsqd> iPage = tSalTxsqdService.page(page,wrapper);
        return iPage;
    }

    /**
     * 新增数据
     *
     * @param tSalTxsqd 实体对象
     * @return 新增结果
     */
    @PostMapping()
    public AjaxResult insert(@Validated @RequestBody TSalTxsqd tSalTxsqd) {
        System.out.println("tSalTxsqd = " + tSalTxsqd);
        tSalTxsqd.setFid(IdUtil.fastSimpleUUID());
        tSalTxsqd.setFbillno(SeqRD.getId());
        tSalTxsqd.setFlastmodifytime(DateUtils.getNowDate());
        tSalTxsqd.setFlastmodifyby("测试");
        log.info("保存{}",tSalTxsqd);
        /*log.info("1=>{},2=>{},3=>{},4=>{},5=>{},6=>{},7=>{},8=>{},9=>{}",
                IdUtil.getSnowflakeNextIdStr(),
                Seq.getId(),
                IdUtil.getSnowflake(),
                IdUtil.objectId(),
                IdUtil.nanoId(),
                IdUtil.fastSimpleUUID(), //6
                UUID.fastUUID(),
                IdUtil.simpleUUID(),
                IdUtil.getDataCenterId(36)
        );*/
        return AjaxResult.success(tSalTxsqdService.saveOrUpdate(tSalTxsqd));
    }

    /**
     * 修改数据
     *
     * @param tSalTxsqd 实体对象
     * @return 修改结果
     */
    @PutMapping
    public Boolean update(@RequestBody TSalTxsqd tSalTxsqd) {
        QueryWrapper<TSalTxsqd> wrapper = new QueryWrapper<>();
        wrapper.eq("fid",tSalTxsqd.getFid());
        tSalTxsqd.setFlastmodifyby("测试修改");
        tSalTxsqd.setFlastmodifytime(DateUtils.getNowDate());
        log.info("修改数据:{}",tSalTxsqd);
        return tSalTxsqdService.update(tSalTxsqd,wrapper);
    }

    /**
     * 删除数据
     *
     * @param id 主键结合
     * @return 删除结果
     */
    @DeleteMapping
    public Boolean delete(@RequestBody String id) {
        QueryWrapper<TSalTxsqd> wrapper = new QueryWrapper<>();
        wrapper.eq("fid", JSONUtil.parseObj(id).get("id"));
        log.info("id====>{}",JSONUtil.parseObj(id).get("id"));
        return tSalTxsqdService.remove(wrapper);
        //return tSalTxsqdService.removeById(id);
    }
}
