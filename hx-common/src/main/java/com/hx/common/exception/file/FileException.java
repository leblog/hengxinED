package com.hx.common.exception.file;

import com.hx.common.exception.base.BaseException;

/**
 * 文件信息异常类
 * 
 * @author ry
 */
public class FileException extends BaseException
{
    private static final long serialVersionUID = 1L;

    public FileException(String code, Object[] args)
    {
        super("file", code, args, null);
    }

}
