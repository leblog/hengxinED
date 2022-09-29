package com.hx.rd.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;

import cn.hutool.core.util.ObjectUtil;
import cn.hutool.core.util.StrUtil;
import cn.hutool.json.JSONUtil;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.hx.common.annotation.Log;
import com.hx.common.core.controller.BaseController;
import com.hx.common.core.domain.AjaxResult;
import com.hx.common.core.page.TableDataInfo;
import com.hx.common.enums.BusinessType;
import com.hx.common.utils.StringUtils;
import com.hx.common.utils.poi.ExcelUtil;
import com.hx.rd.domain.HxPeifang;
import com.hx.rd.service.HxPeifangService;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

/**
 * 调香师Controller
 *
 * @author lusifer
 * @date 2022-09-26
 */
@RestController
@Slf4j
@RequestMapping("/open/peifang")
public class HxPeifangController extends BaseController {
    @Autowired
    private HxPeifangService peifangService;

    /**
     * @param peifang 查询对象
     * @param pageNum   页数
     * @param pageSize  条数
     * @return
     */

    @ApiOperation(value = "列表")//
    @RequestMapping(value = "/listG", method = RequestMethod.GET)
    public Page List(
            @RequestParam(required = true, defaultValue = "1") int pageNum,
            @RequestParam(required = true, defaultValue = "30") int pageSize,
            HxPeifang peifang)
    {
            final QueryWrapper<HxPeifang> wrapper = new QueryWrapper<>();
            if (StrUtil.isNotBlank(peifang.getFid())) {
                wrapper.lambda().eq(HxPeifang::getFid, peifang.getFid());
            }else if (StrUtil.isNotBlank(peifang.getFbillno())) {
                wrapper.lambda().like(HxPeifang::getFbillno, peifang.getFbillno());
            }else if (StrUtil.isNotBlank(peifang.getFkouweimingcheng())) {
                wrapper.lambda().like(HxPeifang::getFkouweimingcheng, peifang.getFkouweimingcheng());
            }
            final Page<HxPeifang> page = peifangService.page(new Page<>(pageNum, pageSize), wrapper);
            log.info("数据1 page:{}",page);
        return page;
    }


    /**
     * 根据ID 查询
     */
    @RequestMapping(value = "/id", method = RequestMethod.GET)
    @ApiOperation(value = "详情")
    public Page  selectById(
            @RequestParam(required = true, defaultValue = "1") int pageNum,
            @RequestParam(required = true, defaultValue = "5") int pageSize,
            @RequestParam(required = true) String fid){
        QueryWrapper<HxPeifang> wrapper = new QueryWrapper<>();
        if (StrUtil.isNotBlank(fid)) {
            wrapper.lambda().eq(HxPeifang::getFid, fid);
        }
        final Page<HxPeifang> page = peifangService.page(new Page<>(pageNum, pageSize), wrapper);
        return page;
    }

    /**
     * 根据ID 删除  逻辑删除
     */
    @RequestMapping(method = RequestMethod.DELETE)
    @ApiOperation(value = "根据ID 删除")
    public AjaxResult  delById(HxPeifang peifang){
        QueryWrapper<HxPeifang> wrapper = new QueryWrapper<>();
        if (StrUtil.isNotBlank(peifang.getFid())) {
            wrapper.lambda().eq(HxPeifang::getFid, peifang.getFid());
        }
        wrapper.lambda().eq(HxPeifang::getFisdeleted, -1);
        peifang.setFisdeleted(-1);
        boolean update = peifangService.update(peifang, wrapper);
        return AjaxResult.success("ok",update);
    }

    /**
     * 保存 / 修改 TableId 注解存在更新记录，否插入一条记录
     */
    @RequestMapping(method = RequestMethod.POST)
    @ApiOperation(value = "添加一个配方")
    public AjaxResult  save(@RequestBody HxPeifang peifang){
        boolean save = peifangService.save(peifang);
        return AjaxResult.success("ok",save);
    }

    /**
     * 修改
     */
    @RequestMapping(method = RequestMethod.PUT)
    @ApiOperation(value = "更新一个配方")
    public AjaxResult  update(@RequestBody HxPeifang peifang){
        UpdateWrapper<HxPeifang> wrapper = new UpdateWrapper<>();
        wrapper.lambda().eq(HxPeifang::getFid,peifang.getFid());
        //boolean update = peifangService.update(peifang, wrapper);
        boolean update = peifangService.update(wrapper);
        return AjaxResult.success("ok",update);
    }



    /*





//    @PreAuthorize("hasPermit('')")
    @RequestMapping(value = "/update", method = RequestMethod.POST)
    @ApiOperation(value = "更新", tags = {"更新/单个", "自己填充"})
    public Result update${entity}Id(@RequestBody ${entity} ${table.entityPath})
        throws  Exception{
    try {
        ${table.entityPath}Service.update${entity}Byid(${table.entityPath});
        return Result.success(ResultCode.成功, ResultCode.成功.getCode());
    } catch (Exception e) {
        return   Result.error(ResultCode.失败.getMsg(),ResultCode.失败.getCode(),null);
    }
}


    @RequestMapping(value = "/add", method = RequestMethod.POST)
    @ApiOperation(value = "添加-单个", tags = {"添加-单个", "自己填充"})
    public Result add${entity}Id(@RequestBody ${entity} ${table.entityPath})
        throws  Exception{
    try {
        ${table.entityPath}Service.add${entity}(${table.entityPath});
        return Result.success(ResultCode.成功, ResultCode.成功.getCode());
    } catch (Exception e) {
        return   Result.error(ResultCode.失败.getMsg(),ResultCode.失败.getCode(),null);
    }
}


    @RequestMapping(value = "/addBatch", method = RequestMethod.POST)
    @ApiOperation(value = "添加-多个", tags = {"添加-多个", "自己填充"})
    public Result add${entity}Batch(@RequestBody List<${entity}> ${table.entityPath})
        throws  Exception{
    try {
        ${table.entityPath}Service.add${entity}Batch(${table.entityPath});
        return Result.success(ResultCode.成功, ResultCode.成功.getCode());
    } catch (Exception e) {
        return   Result.error(ResultCode.失败.getMsg(),ResultCode.失败.getCode(),null);
    }
}
*/

}
