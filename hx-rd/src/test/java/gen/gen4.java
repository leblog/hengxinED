package gen;

import com.baomidou.mybatisplus.generator.FastAutoGenerator;
import com.baomidou.mybatisplus.generator.config.OutputFile;
import com.baomidou.mybatisplus.generator.engine.FreemarkerTemplateEngine;

import java.util.Collections;
public class gen4 {
    public static void main(String[] args) {
        FastAutoGenerator.create("jdbc:sqlserver://localhost:1433;DatabaseName=vuesqlserver", "sa", "OcP2020123")
                .globalConfig(builder -> {//全局配置
                    builder.author("吉吉国王") // 设置作者
                            //.enableSwagger() // 开启 swagger 模式
                            .fileOverride() // 覆盖已生成文件
                            .outputDir("C://demo-library"); // 指定输出目录
                })
                .packageConfig(builder -> {//包配置
                    builder.parent("com.hh") // 设置父包名
                            .moduleName("demo") // 设置父包模块名
                            .pathInfo(Collections.singletonMap(OutputFile.xml, "C://demo-library"));// 设置mapperXml生成路径

                })
                .strategyConfig(builder -> {//策略配置
                    builder.addInclude("T_SAL_Txsqd") // 设置需要生成的表名
                            .addTablePrefix("T_SAL_"); // 设置过滤表前缀
                })
                .templateEngine(new FreemarkerTemplateEngine()) // 使用Freemarker 引擎模板，默认的是Velocity引擎模板
                .execute();

    }
}
