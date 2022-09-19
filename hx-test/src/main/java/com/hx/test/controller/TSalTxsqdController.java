package com.hx.test.controller;

import cn.hutool.core.bean.BeanUtil;
import cn.hutool.core.collection.CollUtil;
import cn.hutool.core.date.DateUtil;
import cn.hutool.core.util.StrUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.conditions.query.LambdaQueryChainWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.hx.common.core.controller.BaseController;
import com.hx.common.core.domain.AjaxResult;
import com.hx.common.utils.DateUtils;
import com.hx.common.utils.bean.BeanUtils;
import com.hx.test.domain.TSalTxsqd;
import com.hx.test.mapper.TSalTxsqdMapper;
import com.hx.test.service.TSalTxsqdService;
import lombok.extern.slf4j.Slf4j;
import org.apache.poi.ss.formula.functions.T;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

@Slf4j
@RestController
@RequestMapping("/open/tx")
public class TSalTxsqdController extends BaseController {
    @Resource
    private TSalTxsqdService tSalTxsqdService;
    @Resource
    private TSalTxsqdMapper tSalTxsqdMapper;
    /**
     * 条件分页
     */
    @PostMapping("/page")
    public List<TSalTxsqd> list(
        @RequestParam(required = false, defaultValue = "1") int pageNum,
        @RequestParam(required = false, defaultValue = "10") int pageSize,
        @RequestBody TSalTxsqd p)
    {
        log.info("shuju{}",p);
        //分页
        Page<TSalTxsqd> page = new Page<>(pageNum,pageSize);
        //条件
        LambdaQueryChainWrapper<TSalTxsqd> wrapper = tSalTxsqdService.lambdaQuery();
        /*if(BeanUtil.isNotEmpty(p)){

        }*/

        if (StrUtil.isNotBlank(p.getFkehumingcheng())) {
            wrapper.like(TSalTxsqd::getFkehumingcheng , p.getFkehumingcheng());
        }
        IPage<TSalTxsqd> list = tSalTxsqdMapper.selectPage(page, wrapper );
        return list.getRecords();
    }

    @GetMapping("/listpage")
    public AjaxResult listPage(
            @RequestParam(required = false, defaultValue = "1") int pageNum,
            @RequestParam(required = false, defaultValue = "10") int pageSize,
            TSalTxsqd p)
    {
        QueryWrapper<TSalTxsqd> queryWrapper = new QueryWrapper<TSalTxsqd>();
        /*queryWrapper.ge("age", 26);*/
        //后面参数false  表示不查询总记录数

        return  null;
    }

    /**
     * 获取详情
     */
    @GetMapping("/{id}")
    public AjaxResult byId(@PathVariable("id") Long id)
    {
        final TSalTxsqd detail = tSalTxsqdMapper.selectById(id);
        return  AjaxResult.success("ok",detail);
    }
    /**
     * 保存
     */
    @PostMapping
    public AjaxResult save(@RequestBody TSalTxsqd p)
    {
        final boolean save = tSalTxsqdService.save(p);
        return  AjaxResult.success("ok",save);
    }

    /**
     * 修改
     */
    @PutMapping("/{id}")
    public AjaxResult editById(@RequestBody TSalTxsqd p)
    {
        final boolean b = tSalTxsqdService.updateById(p);
        return  AjaxResult.success("ok",b);
    }

    /**
     * 删除
     */
    @DeleteMapping("/{id}")
    public AjaxResult deleteById(Long id)
    {
        final boolean b = tSalTxsqdService.removeById(id);
        final TSalTxsqd detail = tSalTxsqdService.getById(id);
        return  AjaxResult.success("ok",detail);
    }


}
