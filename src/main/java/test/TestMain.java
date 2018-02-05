/*
 * Author : George <GeorgeNiceWorld@gmail.com> | <Georgeinfo@163.com>
 * Copyright (C) George (http://www.georgeinfo.com), All Rights Reserved.
 */
package test;

import java.lang.reflect.Field;

/**
 * 测试类
 * @author George <Georgeinfo@163.com>
 */
public class TestMain {
   public Integer iii;
    /**
     * @param args 命令行参数
     */
    public static void main(String[] args) throws NoSuchFieldException {
        TestMain tm = new TestMain();
        Field f = tm.getClass().getDeclaredField("iii"); //.getField("iii");
        
        
        System.out.println(f.getType() == Integer.class);
    }       
    
}
