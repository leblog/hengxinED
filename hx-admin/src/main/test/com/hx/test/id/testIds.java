package com.hx.test.id;

import com.hx.common.utils.uuid.Seq;
import com.hx.common.utils.uuid.SeqRD;
import lombok.extern.slf4j.Slf4j;

@Slf4j
public class testIds {

    //测试id
    public static void main(String[] args) {
        for (int i = 0; i < 10000; i++) {
            log.info("id1:{}", SeqRD.getId());
        }

        log.info("id2:{}",Seq.getId());

    }
}
