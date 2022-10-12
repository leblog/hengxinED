package com.hx.test.excel;

import com.alibaba.excel.EasyExcel;
import com.alibaba.excel.context.AnalysisContext;
import com.alibaba.excel.event.AnalysisEventListener;
import com.alibaba.excel.util.ListUtils;
import com.alibaba.fastjson.JSON;
import lombok.extern.slf4j.Slf4j;

import java.util.List;
import java.util.Map;

public class ExcelUpdate {

    /** 业务实现对excel中erpid的字段维护
     *  解决什么问题: crm有客户同名,erpid不同,导致派单不知道给哪一个组织机构
     *  crm客户表缺少erp中的组织  在erp导出的数据有erpid参照,
     *  要求把erp导出来的数据对应上crm中的erpid后并更新匹配到的结果到crm表格中
     *
     *  1. 先读取erp中的erpid进行匹配,匹配上的数据进行更新到crm excel 中
     *  双重for循环进行对比内容是用
     *
     */



    /**
     * 不创建对象的读
     */
    public static void main(String[] args) {
        String fileName = "C:\\Users\\RD02\\Desktop\\crm导入客户\\客户对象导出结果_20221011.xlsx";
        // 这里 只要，然后读取第一个sheet 同步读取会自动finish
        EasyExcel.read(fileName, new NoModelDataListener()).sheet().doRead();
    }





}
