/*
 * Author: George <GeorgeNiceWorld@gmail.com> | <Georgeinfo@163.com>
 * Copyright (C) George (www.georgeinfo.com), All Rights Reserved.
 */
package com.georgeinfo.rapidmvc.beans;

/**
 * 通用报文内容
 *
 * @author George <Georgeinfo@163.com>
 */
public class Message<T> {

    private MsgHeader header;
    private T data;

    public Message() {
    }

    public Message(MsgHeader header) {
        this.header = header;
    }

    public Message(MsgHeader header, T data) {
        this.header = header;
        this.data = data;
    }

    public MsgHeader getHeader() {
        return header;
    }

    public Message<T> setHeader(MsgHeader header) {
        this.header = header;
        return this;
    }

    public T getData() {
        return data;
    }

    public Message<T> setData(T data) {
        this.data = data;
        return this;
    }

}
