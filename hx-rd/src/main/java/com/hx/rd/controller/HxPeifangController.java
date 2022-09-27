package com.hx.rd.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
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
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * 调香师Controller
 *
 * @author lusifer
 * @date 2022-09-26
 */
@RestController
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

    @ApiOperation(value = "列表")
    @RequestMapping(value = "/listG", method = RequestMethod.GET)
    public AjaxResult List(
            @RequestParam(required = false) HxPeifang peifang,
            @RequestParam(required = true, defaultValue = "1") int pageNum,
            @RequestParam(required = true, defaultValue = "30") int pageSize) {
        // throws Exception try {
            final QueryWrapper<HxPeifang> wrapper = new QueryWrapper<>();
            if (StringUtils.isNotEmpty(peifang.getFid())) {
                wrapper.lambda().like(HxPeifang::getFid, peifang.getFid());
            }
            if (StringUtils.isNotEmpty(peifang.getFbillno())) {
                wrapper.lambda().like(HxPeifang::getFbillno, peifang.getFbillno());
            }
            if (StringUtils.isNotEmpty(peifang.getFkouweimingcheng())) {
                wrapper.lambda().like(HxPeifang::getFkouweimingcheng, peifang.getFkouweimingcheng());
            }
            final Page<HxPeifang> page = peifangService.page(new Page<>(pageNum, pageSize), wrapper);
            return AjaxResult.success("ok", page);
        /*} catch (Exception e) {
            return AjaxResult.error(500, "失败");
        }*/
    }



    /*@PreAuthorize("hasPermit('')")
    @RequestMapping(value = "/id", method = RequestMethod.POST)
    @ApiOperation(value = "详情", tags = {"详情", "自己填充"})
    public Result  ${table.entityPath}Id(@RequestBody ${entity} ${table.entityPath})
        throws  Exception{
    try {
        return   Result.success(${table.entityPath}Service.find${entity}Byid(${table.entityPath}.getId()), ResultCode.成功.getCode());
    } catch (Exception e) {
        return   Result.error(ResultCode.失败.getMsg(),ResultCode.失败.getCode(),null);
    }
}


//    @PreAuthorize("hasPermit('')")
    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    @ApiOperation(value = "删除", tags = {"删除", "自己填充"})
    public Result delete${entity}Id(@RequestBody ${entity} ${table.entityPath})
        throws  Exception{
    try {
        ${table.entityPath}Service.delete${entity}Byid(${table.entityPath}.getId());
        return Result.success(ResultCode.成功, ResultCode.成功.getCode());

    } catch (Exception e) {
        return   Result.error(ResultCode.失败.getMsg(),ResultCode.失败.getCode(),null);
    }
}



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
