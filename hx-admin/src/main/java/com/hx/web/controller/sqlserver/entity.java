package com.hx.web.controller.sqlserver;

import com.baomidou.mybatisplus.annotation.TableName;
import com.hx.common.annotation.DataSource;
import lombok.Data;

@Data
@TableName("T_BD_SampleMaterial")
public class entity {
    private String FID;
    private String FNumber;
    private String FDocumentstatus;
    private String FName;
    private String FWarhouseNM;
    private String FDescription;
    private String FDaizhuanma;
    private String FZhengshiBianma;
    private String FZhengshiMingcheng;
}
