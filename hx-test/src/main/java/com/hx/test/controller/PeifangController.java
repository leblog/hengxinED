package com.hx.test.controller;

import cn.hutool.json.JSONUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.hx.test.domain.Peifang;
import com.hx.test.service.PeifangService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;


/**
 * (PPeifang)表控制层
 *
 * @author lusifer
 * @since 2022-09-16 17:18:00
 */
@Slf4j
@RestController
@RequestMapping("/open/jar")
public class PeifangController  {
    /**
     * 服务对象
     */
    @Resource
    private PeifangService peifangService;

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
     * 分页 查询
     */
    @GetMapping("/page")
    public String list(Peifang p)
    {
        List<Peifang> list = peifangService.lambdaQuery().list().subList(1, 10);
        return JSONUtil.formatJsonStr(String.valueOf(list));
    }

    /**
     * 条件查询  根基口味名称进行查新
     */
    @GetMapping("/queryList")
    public String queryList(@RequestBody  Peifang p)
    {
        QueryWrapper<Object> wrapper = new QueryWrapper<>();
        log.info("我是对象{},",p);
        log.info("我是对象======{},",p.getFkouweimingcheng());
        QueryWrapper<Object> eq = wrapper.eq("fkouweimingcheng", "草莓甜甜圈");
        return JSONUtil.formatJsonStr(String.valueOf(eq));
    }



}

