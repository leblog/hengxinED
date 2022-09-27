package gen;

import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.generator.FastAutoGenerator;
import com.baomidou.mybatisplus.generator.config.DataSourceConfig;
import com.baomidou.mybatisplus.generator.config.OutputFile;
import com.baomidou.mybatisplus.generator.config.rules.DateType;
import com.baomidou.mybatisplus.generator.config.rules.NamingStrategy;
import com.baomidou.mybatisplus.generator.engine.FreemarkerTemplateEngine;
import com.baomidou.mybatisplus.generator.fill.Column;

import java.util.Collections;

public class gen3 {

    public static void main(String[] args) {


        // 最开始是配置数据源，postgresql还得指定架构，这里我就指定了用test架构
        FastAutoGenerator.create("jdbc:sqlserver://localhost:1433;DatabaseName=vuesqlserver2", "sa", "OcP2020123")
        //FastAutoGenerator.create(new DataSourceConfig.Builder("jdbc:sqlserver://localhost:1433/vuesqlserver", "sa", "OcP2020123"))
                // 全局配置
                .globalConfig(builder -> {
                    builder.author("lusifer") // 设置作者
                            .enableSwagger() // 开启 swagger 模式（根据数据库的注释等生成swagger的注解，真的牛）
                            .fileOverride() // 覆盖已生成文件
                            .outputDir("C://work//code//demo//20220530172420//HX//hx-demo//src//main//java") // 指定输出目录
                            .disableOpenDir() // 生成后不打开资源管理器
                            .dateType(DateType.ONLY_DATE) // 时间类型
                            .commentDate("yyyy-MM-dd hh:mm:ss"); // 时间格式
                })
                // 包配置，也就是生成哪些文件夹
                .packageConfig(builder -> {
                    builder.parent("com.hx.demo") // 设置父包名 也就是生成在输出目录的 com/yangsf下
                            .pathInfo(Collections.singletonMap(OutputFile.xml, "C://work//code//demo//20220530172420//HX//hx-demo//src//main//resources//mapper")) // 设置mapperXml生成路径
                            //.moduleName("mybatisplus") // 设置父包模块名 也就是代码放在com/yangsf/mybatisplus下
                            /*.
                            .service("service") // 接下来的几个都是包名，也就是对应的代码的存放目录
                            .entity("entity")
                            .mapper("mapper")
                            .controller("controller")
                            .xml("mapper")
                            .other("utils");*/
                            //.disable(TemplateType.ENTITY)
                            .entity("domain")
                            .service("service")
                            .serviceImpl("serviceImpl")
                            .mapper("mapper")
                            .xml("xml")
                            .controller("controller")
                            .build();
                })
                // 策略配置
                .strategyConfig(builder -> {
                    builder.addInclude("T_SAL_Txsqd") // 这里填数据库表名，可以填多个，用’,‘隔开
                            .addTablePrefix("T_SAL_") // 忽略前缀
                            // mapper（dao）层的配置
                            .mapperBuilder()
                            .formatMapperFileName("%sMapper") // 生成的文件名都叫xxxmapper（根据表名）
                            .enableMapperAnnotation()   //开启@mapper注解
                            .superClass(BaseMapper.class) // 继承BaseMapper类
                            .formatXmlFileName("%sMapper")   // 生成对应的xml都叫xxxmapper
                            // service层配置
                            .serviceBuilder()
                            .formatServiceFileName("%sService")
                            .formatServiceImplFileName("%sServiceImpl")
                            // 实体类配置
                            .entityBuilder()
                            .idType(IdType.AUTO) // 主键的策略，我选的是自增
                            .enableLombok() //开启 Lombok
                            .disableSerialVersionUID()  //不实现 Serializable 接口，不生产 SerialVersionUID
                            .logicDeleteColumnName("deleted")   //逻辑删除字段名
                            .naming(NamingStrategy.underline_to_camel)  //数据库表映射到实体的命名策略：下划线转驼峰命
                            .columnNaming(NamingStrategy.underline_to_camel)    //数据库表字段映射到实体的命名策略：下划线转驼峰命
                            /*.addTableFills(
                                    new Column("create_time", FieldFill.INSERT),
                                    new Column("modify_time", FieldFill.INSERT_UPDATE)
                            ) */  //添加表字段填充，"create_time"字段自动填充为插入时间，"modify_time"字段自动填充为插入修改时间，到时候需要编写具体的代码实现
                            .enableTableFieldAnnotation()     // 开启生成字段注解
                            // controller层配置
                            .controllerBuilder()
                            .formatFileName("%sController") //格式化 Controller 类文件名称，%s进行匹配表名，如 UserController
                            .enableRestStyle();  //开启生成 @RestController 控制器
                })
                // 模板引擎配置 ，默认是Velocity
                .templateEngine(new FreemarkerTemplateEngine())
                .execute(); // 执行
    }

}
