/*
 * Author : George <GeorgeNiceWorld@gmail.com> | <Georgeinfo@163.com>
 * Copyright (C) George (http://www.georgeinfo.com), All Rights Reserved.
 */
package test;

import com.georgeinfo.base.util.encrypt.EncTool;

/**
 *
 * @author George <Georgeinfo@163.com>
 */
public class PasswordCreator {

    /**
     * @param args 命令行参数
     */
    public static void main(String[] args) {
        makePassword();
    }

    public static void makePassword() {
        System.out.println(EncTool.getMD5SHA("rh112233sms"));
    }

}
