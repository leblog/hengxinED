/*
package com.hx.test.test;
import com.baomidou.mybatisplus.annotation.DbType;
import com.baomidou.mybatisplus.core.toolkit.StringPool;
import com.baomidou.mybatisplus.generator.AutoGenerator;
//import com.baomidou.mybatisplus.generator.InjectionConfig;
import com.baomidou.mybatisplus.generator.config.*;
import com.baomidou.mybatisplus.generator.config.po.TableInfo;
import com.baomidou.mybatisplus.generator.config.rules.NamingStrategy;
import com.baomidou.mybatisplus.generator.engine.FreemarkerTemplateEngine;

import java.util.ArrayList;
import java.util.List;
public class Generator {

        //数据库配置四要素
        private static String driverName = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
        private static String url = "jdbc:sqlserver://xxx";
        private static String username = "xxx";
        private static String password = "xxx";


        public static void main(String[] args) {
            // 代码生成器
            final AutoGenerator mpg = new AutoGenerator();
            // 全局配置
            final GlobalConfig gc = new GlobalConfig();
            String projectPath = System.getProperty("user.dir");
            gc.setOutputDir(projectPath + "/src/main/java");

            gc.setAuthor("wjl");
            gc.setOpen(true);
            gc.setServiceName("%sService");
            gc.setServiceImplName("%sServiceImpl");
            gc.setMapperName("%sMapper");
            gc.setXmlName("%sMapper");

            gc.setFileOverride(true);
            gc.setSwagger2(true);
//        gc.setActiveRecord(true);
//        gc.setIdType(IdType.ID_WORKER);//设置id的生成策略默认算法
//        gc.setDateType(DateType.ONLY_DATE);//设置日期生成策略
            mpg.setGlobalConfig(gc);

            // 数据源配置
            DataSourceConfig dsc = new DataSourceConfig();
            dsc.setUrl(url);
            dsc.setDriverName(driverName);
            dsc.setUsername(username);
            dsc.setPassword(password);
            dsc.setDbType(DbType.SQL_SERVER);
            mpg.setDataSource(dsc);

            //包配置
            PackageConfig pc = new PackageConfig();
//        pc.setModuleName("aaa");
            pc.setParent("com.zjars.hxmes.storage");
            pc.setEntity("entity.minor");
            pc.setService("service.minor");
            pc.setServiceImpl("service.minor.impl");
            pc.setMapper("mapper.minor");
            pc.setController(null);
//        pc.setController("controller");
            mpg.setPackageInfo(pc);


            // 自定义配置
            InjectionConfig cfg = new InjectionConfig() {
                @Override
                public void initMap() {
                    // to do nothing
                }
            };
            List<FileOutConfig> focList = new ArrayList<>();
            focList.add(new FileOutConfig("/templates/mapper.xml.ftl") {
                @Override
                public String outputFile(TableInfo tableInfo) {
                    // 自定义输入文件名称
                    return projectPath + "/src/main/resources/mapper/minor"
                            + "/" + tableInfo.getEntityName() + "Mapper" + StringPool.DOT_XML;
                }
            });
            cfg.setFileOutConfigList(focList);
            mpg.setCfg(cfg);
            mpg.setTemplate(new TemplateConfig().setXml(null).setController(null));

            // 策略配置
            StrategyConfig strategy = new StrategyConfig();
//        strategy.setTablePrefix("t_");
            strategy.setNaming(NamingStrategy.underline_to_camel);
            strategy.setColumnNaming(NamingStrategy.underline_to_camel);
            strategy.setEntityLombokModel(true);
            // 设置逻辑删除键（这个是逻辑删除的操作）
            strategy.setLogicDeleteFieldName("deleted");
            // 指定生成的bean的数据库表名（如果全部生成，这里要注释掉）
            strategy.setInclude("Inventory","Inventoryclass","ComputationUnit",
                    "CurrentStock","Warehouse","rdrecord11","rdrecords11");
            //strategy.setSuperEntityColumns("id");
            // 驼峰转连字符
//        strategy.setControllerMappingHyphenStyle(true);
            strategy.setRestControllerStyle(true);
            mpg.setStrategy(strategy);
            // 选择 freemarker 引擎需要指定如下加，注意 pom 依赖必须有！
            mpg.setTemplateEngine(new FreemarkerTemplateEngine());
            mpg.execute();
        }
}
*/
