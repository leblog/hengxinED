package com.hx.system.domain.vo;

import com.fasterxml.jackson.dataformat.xml.annotation.JacksonXmlProperty;
import com.fasterxml.jackson.dataformat.xml.annotation.JacksonXmlRootElement;
import lombok.Data;

/**
 * 简单文本请求
 */
@Data
@JacksonXmlRootElement(localName = "xml")
public class WxTxtMsgReqVo {

        @JacksonXmlProperty(localName = "ToUserName")
        private String toUserName;
        @JacksonXmlProperty(localName = "FromUserName")
        private String fromUserName;
        @JacksonXmlProperty(localName = "CreateTime")
        private Long createTime;
        @JacksonXmlProperty(localName = "MsgType")
        private String msgType;
        @JacksonXmlProperty(localName = "Content")
        private String content;
        @JacksonXmlProperty(localName = "MsgId")
        private String msgId;
        @JacksonXmlProperty(localName = "MsgDataId")
        private String msgDataId;
        @JacksonXmlProperty(localName = "Idx")
        private String idx;
}
