package com.hx.system.domain.vo;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.ToString;

import java.util.Date;

/**
 * @Author: lusifer
 * @Date: 2022-8-17 18:39:11
 * @Description: 日志VO
 */
@Data
@AllArgsConstructor
@ToString
public class LogVO {
    public String title;
    public String method;
    public String requestMethod;
    public String operUrl;
    public String operIp;
    public String operParam;
    public String jsonResult;
    public String operName;
    public String deptName;
    public Date operTime;

}
