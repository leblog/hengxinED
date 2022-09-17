package com.hx.test.controller;

import cn.hutool.core.util.ObjectUtil;
import cn.hutool.json.JSONUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.hx.common.core.controller.BaseController;
import com.hx.common.core.domain.AjaxResult;
import com.hx.common.core.domain.R;
import com.hx.common.exception.ServiceException;
import com.hx.common.utils.StringUtils;
import com.hx.test.domain.Peifang;
import com.hx.test.mapper.PeifangMapper;
import com.hx.test.service.PeifangService;
import lombok.extern.slf4j.Slf4j;
import org.apache.poi.ss.formula.functions.T;
import org.junit.Test;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


/**
 * (PPeifang)表控制层
 *
 * @author lusifer
 * @since 2022-09-16 17:18:00
 */
@Slf4j
@RestController
@RequestMapping("/open/jar")
public class PeifangController  extends BaseController {
    /**
     * 服务对象
     */
    @Resource
    private PeifangService peifangService;
    @Resource
    private PeifangMapper peifangMapper;

    @GetMapping("/str")
    public String str(){
        return "hello world";
    }


    @GetMapping("/list")
    public String list(){
        Peifang id = peifangService.getById("1");
        return JSONUtil.formatJsonStr(String.valueOf(id));
    }

    @GetMapping("/listArr")
    public String listArr(){
        List<Peifang> list = peifangService.lambdaQuery().list();
        return JSONUtil.formatJsonStr(String.valueOf(list));
    }


    /**
     * 分页条件 查询
     */
    @GetMapping("/page")
    public AjaxResult list(@RequestParam(required = false, defaultValue = "0") int offset,
                           @RequestParam(required = false, defaultValue = "10") int pagesize,
                           Peifang p)
    {
        log.info("参数1:{}",offset);
        log.info("参数2:{}",pagesize);
        log.info("参数3:{}",p);
        QueryWrapper<Peifang> peifangQueryWrapper = new QueryWrapper<>();
        peifangQueryWrapper.eq("fkouweidalei","饮料");
        peifangQueryWrapper.orderByDesc("FCreateTime");
        List<Peifang> list = peifangService.lambdaQuery()
                .list()
                .subList(offset, pagesize);
        return  AjaxResult.success("ok",list);
    }

/**
     * 条件查询  根基口味名称进行查新
     */
    //条件查询带分页
    @PostMapping("/pageCondition")
    public AjaxResult pageCondition(@RequestBody Peifang peifang, long current, long size) {
        Page<Peifang> peifangPage = new Page<>(current, size);
        QueryWrapper<Peifang> queryWrapper = new QueryWrapper<>();
        //多条件组合查询 可能有可能没有 动态sql->判断条件值是否为空，如果不为空拼接条件
        if (StringUtils.isNotEmpty(peifang.getFkouweimingcheng())) {
            //如果不为空，构造条件
            queryWrapper.like("FShoukongKwmingcheng", peifang.getFkouweimingcheng());
        }
        return AjaxResult.success("ok",peifangService.page(peifangPage, queryWrapper));
    }




    /**
     * 保存
     */
    @PostMapping("/save")
    public AjaxResult add(@RequestBody(required = false) Peifang peifang){
        int insert;
        peifang.setFshoukongbianma("测试lusifer");
        if(ObjectUtil.isNotEmpty(peifang)){
            insert = peifangMapper.insert(peifang);
        }else{
            throw new ServiceException("数据全空");
        }
        return AjaxResult.success("ok",insert);
    }


}

