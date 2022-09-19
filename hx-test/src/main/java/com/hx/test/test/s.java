package com.hx.test.test;

import com.baomidou.mybatisplus.generator.FastAutoGenerator;
import com.baomidou.mybatisplus.generator.config.DataSourceConfig;
import com.baomidou.mybatisplus.generator.config.OutputFile;
import com.baomidou.mybatisplus.generator.engine.FreemarkerTemplateEngine;

import java.sql.SQLException;
import java.util.Collections;

public class s {


        /**
         * 数据源配置
         */
        private static final DataSourceConfig.Builder DATA_SOURCE_CONFIG = new DataSourceConfig
                .Builder("jdbc:sqlserver://127.0.0.1:1433;SelectMethod=cursor;DatabaseName=vuesqlserver", "sa", "OcP2020123");
        /**
         * 执行 run
         */
        public static void main(String[] args) throws SQLException {
            // 初始化数据库脚本
            //initDataSource(DATA_SOURCE_CONFIG.build());
            FastAutoGenerator.create(DATA_SOURCE_CONFIG)
                    // 全局配置
                    .globalConfig((scanner, builder) -> builder.author(scanner.apply("请输入作者名称")))
                    // 包配置
                    .packageConfig((scanner, builder) -> builder.parent(scanner.apply("请输入包名")))
                    // 策略配置
                    .strategyConfig((scanner, builder) -> builder.addInclude(scanner.apply("请输入表名，多个表名用,隔开")))
                    /*
                        模板引擎配置，默认 Velocity 可选模板引擎 Beetl 或 Freemarker 或 Enjoy
                       .templateEngine(new BeetlTemplateEngine())
                       .templateEngine(new FreemarkerTemplateEngine())
                       .templateEngine(new EnjoyTemplateEngine())
                     */
                    .execute();
        }

    private static void initDataSource(DataSourceConfig build) {
    }


}
