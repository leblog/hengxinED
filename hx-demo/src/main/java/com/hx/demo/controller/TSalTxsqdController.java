package com.hx.demo.controller;



import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.api.ApiController;
import com.baomidou.mybatisplus.extension.api.R;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.hx.demo.entity.TSalTxsqd;
import com.hx.demo.service.TSalTxsqdService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.io.Serializable;
import java.util.List;

/**
 * (TSalTxsqd)表控制层
 *
 * @author lusifer
 * @since 2022-09-20 15:21:37
 */
@RestController
@RequestMapping("/open/crud")
public class TSalTxsqdController extends ApiController {
    /**
     * 服务对象
     */
    @Resource
    private TSalTxsqdService tSalTxsqdService;

    /**
     * 分页查询所有数据
     *
     * @param page 分页对象
     * @param tSalTxsqd 查询实体
     * @return 所有数据
     */
    @GetMapping("/{list}")
    public R selectAll(Page<TSalTxsqd> page, TSalTxsqd tSalTxsqd) {
        return success(this.tSalTxsqdService.page(page, new QueryWrapper<>(tSalTxsqd)));
    }

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("{id}")
    public R selectOne(@PathVariable Serializable id) {
        return success(this.tSalTxsqdService.getById(id));
    }

    /**
     * 新增数据
     *
     * @param tSalTxsqd 实体对象
     * @return 新增结果
     */
    @PostMapping
    public R insert(@RequestBody TSalTxsqd tSalTxsqd) {
        return success(this.tSalTxsqdService.save(tSalTxsqd));
    }

    /**
     * 修改数据
     *
     * @param tSalTxsqd 实体对象
     * @return 修改结果
     */
    @PutMapping
    public R update(@RequestBody TSalTxsqd tSalTxsqd) {
        return success(this.tSalTxsqdService.updateById(tSalTxsqd));
    }

    /**
     * 删除数据
     *
     * @param idList 主键结合
     * @return 删除结果
     */
    @DeleteMapping
    public R delete(@RequestParam("idList") List<Long> idList) {
        return success(this.tSalTxsqdService.removeByIds(idList));
    }
}

