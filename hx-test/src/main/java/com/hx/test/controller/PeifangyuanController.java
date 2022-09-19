package com.hx.test.controller;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.hx.common.core.controller.BaseController;
import com.hx.common.core.domain.AjaxResult;
import com.hx.common.core.page.PageQuery;
import com.hx.common.core.page.TableDataInfo;
import com.hx.common.utils.StringUtils;
import com.hx.test.domain.Peifang;
import com.hx.test.mapper.PeifangMapper;
import com.hx.test.service.PeifangService;
import lombok.extern.slf4j.Slf4j;
import org.apache.poi.ss.formula.functions.T;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
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
@RequestMapping("/open/yuan")
public class PeifangyuanController extends BaseController {
    /**
     * 服务对象
     */
    @Resource
    private PeifangService peifangService;
   /* @Resource
    private PeifangMapper peifangMapper;*/
    @Resource
    private PeifangMapper baseMapper;

    @GetMapping("/listArr")
    public TableDataInfo listArr(Peifang peifang){
        startPage();
        List<Peifang> list = peifangService.lambdaQuery().list();
        return getDataTable(list);
    }
    @GetMapping("/list")
    public TableDataInfo listw(Peifang peifang, PageQuery pageQuery) {
        LambdaQueryWrapper<Peifang> lqw = buildQueryWrapper(peifang);
        List<Peifang> list = baseMapper.selectList(lqw);
        return getDataTable(list);
    }

    private LambdaQueryWrapper<Peifang> buildQueryWrapper(Peifang bo) {
        //Map<String, Object> params = bo.getParams();
        LambdaQueryWrapper<Peifang> lqw = Wrappers.lambdaQuery();
        lqw.like(StringUtils.isNotBlank(bo.getFkouweimingcheng()), Peifang::getFkouweimingcheng, bo.getFkouweimingcheng());
        lqw.eq(StringUtils.isNotBlank(bo.getFid()), Peifang::getFid, bo.getFid());
        //lqw.between(params.get("beginCreateTime") != null && params.get("endCreateTime") != null,
                //Peifang::getCreateTime, params.get("beginCreateTime"), params.get("endCreateTime"));
        return lqw;
    }

    /**
     * 分页条件 查询
     */
    @GetMapping("/page")
    public AjaxResult list(@RequestParam(required = false, defaultValue = "1") int pageNum,
                           @RequestParam(required = false, defaultValue = "10") int pageSize,
                           Peifang p)
    {
        QueryWrapper<Peifang> peifangQueryWrapper = new QueryWrapper<>();
        peifangQueryWrapper.eq("fkouweidalei","饮料");
        peifangQueryWrapper.orderByDesc("FCreateTime");
        List<Peifang> list = peifangService.lambdaQuery()
                .list()
                .subList(pageNum, pageSize);
        return  AjaxResult.success("ok",list);
    }




}

