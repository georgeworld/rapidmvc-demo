/*
 * Author: George <GeorgeNiceWorld@gmail.com> | <Georgeinfo@163.com>
 * Copyright (C) George (www.georgeinfo.com), All Rights Reserved.
 */
package com.georgeinfo.rapidmvc.beans;

/**
 * 通用通讯协议头
 *
 * @author George <Georgeinfo@163.com>
 */
public class MsgHeader {

    public enum Result {
        SUCCESS(200, "成功"), FAILURE(400, "失败"), EXCEPTION(500, "出现异常"), EMPTY(404, "空内容");
        private final int code;
        private final String cnName;

        private Result(int code, String cnName) {
            this.code = code;
            this.cnName = cnName;
        }

        public int getCode() {
            return code;
        }

        public String getCnName() {
            return cnName;
        }

        public static Result buildByCode(int code) {
            Result[] values = Result.values();
            for (Result r : values) {
                if (r.getCode() == code) {
                    return r;
                }
            }

            return null;
        }

        public static Result buildByEnName(String enName) {
            Result[] values = Result.values();
            for (Result r : values) {
                if (r.name().equals(enName)) {
                    return r;
                }
            }

            return null;
        }

    }
    private int result;
    private String msgContent;

    public MsgHeader() {
    }

    public MsgHeader(int result) {
        this.result = result;
    }

    public MsgHeader(Result result) {
        this(result.getCode());
    }

    public MsgHeader(int result, String msgContent) {
        this.result = result;
        this.msgContent = msgContent;
    }

    public MsgHeader(Result result, String msgContent) {
        this.result = result.getCode();
        this.msgContent = msgContent;
    }

    public int getResult() {
        return result;
    }

    public MsgHeader setResult(int result) {
        this.result = result;
        return this;
    }

    public String getMsgContent() {
        return msgContent;
    }

    public MsgHeader setMsgContent(String msgContent) {
        this.msgContent = msgContent;
        return this;
    }

}
