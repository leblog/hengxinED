package com.hx.system.domain.vo;

import lombok.AllArgsConstructor;
import lombok.Data;

/**
 * @Author: lusifer
 * @Date: 2022/1/13
 * @Description: 负责人VO
 */
@Data
@AllArgsConstructor
public class OwnerVO {
    public String userName;
    public String nickName;
    public Long userId;
}
