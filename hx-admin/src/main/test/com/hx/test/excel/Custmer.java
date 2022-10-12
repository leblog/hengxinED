package com.hx.test.excel;

import com.alibaba.excel.annotation.ExcelProperty;
import com.alibaba.excel.annotation.write.style.ColumnWidth;
import com.alibaba.excel.annotation.write.style.ContentRowHeight;
import com.alibaba.excel.annotation.write.style.HeadRowHeight;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;

/**
 * 创建对象用于excel批量读写的操作
 */
@Getter
@Setter
@EqualsAndHashCode
@ContentRowHeight(20)
@HeadRowHeight(30)
@ColumnWidth(25)
public class Custmer {
    @ColumnWidth(50)
    @ExcelProperty("客户")
    private String string1;
    @ColumnWidth(20)
    @ExcelProperty("客户编码")
    private String string2;
    /**
     * 宽度为20
     */
    @ColumnWidth(20)
    @ExcelProperty("客户负责人")
    private String string3;
}
