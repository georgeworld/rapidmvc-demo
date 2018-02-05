/*
 * Author : George <GeorgeNiceWorld@gmail.com> | <Georgeinfo@163.com>
 * Copyright (C) George (http://www.georgeinfo.com), All Rights Reserved.
 */
package com.georgeinfo.rapidmvc.beans;

/**
 *
 *客户端发送来的json
 */
public class PackBean {
    
    private String tel;
    
    private String content;
    
    private String spCode;

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getSpCode() {
        return spCode;
    }

    public void setSpCode(String spCode) {
        this.spCode = spCode;
    }

    @Override
    public String toString() {
        return "PackBean{" + "tel=" + tel + ", concent=" + content + ", spCode=" + spCode + '}';
    }
    
    
    
}
