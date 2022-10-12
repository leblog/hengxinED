package com.hx.test.excel;

import cn.hutool.core.date.DateUtil;
import cn.hutool.core.util.StrUtil;
import com.alibaba.excel.EasyExcel;
import com.alibaba.excel.annotation.write.style.ColumnWidth;
import com.alibaba.excel.context.AnalysisContext;
import com.alibaba.excel.event.AnalysisEventListener;
import com.alibaba.excel.util.ListUtils;
import lombok.extern.slf4j.Slf4j;

import java.util.Date;
import java.util.List;
import java.util.Map;

@Slf4j
public class NoModelDataListener extends AnalysisEventListener<Map<Integer, String>> {
    /**
     * 每隔5条存储数据库，实际使用中可以100条，然后清理list ，方便内存回收
     */
    private static final int BATCH_COUNT = 10000;
    private List<Map<Integer, String>> cachedDataList = ListUtils.newArrayListWithExpectedSize(BATCH_COUNT);

    @Override
    public void invoke(Map<Integer, String> data, AnalysisContext context) {
        //log.info("解析到一条数据====>客戶名:{}        erpId:{},",JSON.toJSONString(data.get(1)), JSON.toJSONString(data.get(2)));
        cachedDataList.add(data);
        if (cachedDataList.size() >= BATCH_COUNT) {
            cachedDataList = ListUtils.newArrayListWithExpectedSize(BATCH_COUNT);
        }
    }

    @Override
    public void doAfterAllAnalysed(AnalysisContext context) {
        noModelWrite();
        log.info("所有数据解析完成！");
    }


    /**
     * 不创建对象的写
     */
    public void noModelWrite() {
        // 写法1
        String fileName = "C:\\Users\\RD02\\Desktop\\crm导入客户\\客户对象导出结果_1.xlsx";
        EasyExcel.write(fileName).head(Custmer.class).sheet("模板").doWrite(dataListNot());
    }

    private List<List<String>> head() {
        List<List<String>> list = ListUtils.newArrayList();

        List<String> head0 = ListUtils.newArrayList();
        head0.add("客户" + DateUtil.format(new Date(),"yyyy-MM-dd HH:mm:ss"));
        List<String> head1 = ListUtils.newArrayList();
        head1.add("客户编码" + DateUtil.format(new Date(),"yyyy-MM-dd HH:mm:ss"));
        List<String> head2 = ListUtils.newArrayList();
        head2.add("负责人" + DateUtil.format(new Date(),"yyyy-MM-dd HH:mm:ss"));
        list.add(head0);
        list.add(head1);
        list.add(head2);
        return list;
    }

    private List<List<Object>> dataList() {
        log.info("全部数据:{}",cachedDataList.size());
        List<List<Object>> list = ListUtils.newArrayList();
        for (int i = 0; i < cachedDataList.size(); i++) {
            log.info("明细数据: 客户={},客户编码={},负责人={}",cachedDataList.get(i).get(1),cachedDataList.get(i).get(2),cachedDataList.get(i).get(13));
            List<Object> data = ListUtils.newArrayList();
            data.add(cachedDataList.get(i).get(1));
            data.add(cachedDataList.get(i).get(2));
            data.add(cachedDataList.get(i).get(13));
            list.add(data);
        }
        //调试
        return list;
    }


    // 编码不为空的客户
    private List<List<Object>> dataListNot() {
        log.info("全部数据:{}",cachedDataList.size());
        List<List<Object>> list = ListUtils.newArrayList();
        for (int i = 0; i < cachedDataList.size(); i++) {
            //log.info("明细数据: 客户={},客户编码={},负责人={}",cachedDataList.get(i).get(1),cachedDataList.get(i).get(2),cachedDataList.get(i).get(13));
            if(StrUtil.isNotBlank(cachedDataList.get(i).get(2))){
                List<Object> data = ListUtils.newArrayList();
                data.add(cachedDataList.get(i).get(1));
                data.add(cachedDataList.get(i).get(2));
                data.add(cachedDataList.get(i).get(13));
                list.add(data);
            }
        }

        //调试
        return list;
    }






}
