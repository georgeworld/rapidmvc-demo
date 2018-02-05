/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import java.net.URLEncoder;

/**
 * 编码测试类
 */
public class EncodingTest {

    public static void main(String[] args) throws Exception {
        String name = "你好";
        System.out.println(URLEncoder.encode(name, "GBK"));
    }
}
