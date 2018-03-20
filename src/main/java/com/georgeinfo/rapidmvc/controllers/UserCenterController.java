/*
 * Author : George <GeorgeNiceWorld@gmail.com> | <Georgeinfo@163.com>
 * Copyright (C) George (http://www.georgeinfo.com), All Rights Reserved.
 */
package com.georgeinfo.rapidmvc.controllers;

import java.io.IOException;
import java.util.HashMap;

import com.georgeinfo.base.util.encrypt.EncTool;
import com.georgeinfo.base.util.logger.GeorgeLogger;
import com.georgeinfo.rapidmvc.BasicController;
import com.georgeinfo.rapidmvc.annotation.Get;
import com.georgeinfo.rapidmvc.annotation.Param;
import com.georgeinfo.rapidmvc.annotation.Path;
import com.georgeinfo.rapidmvc.annotation.Post;
import com.georgeinfo.rapidmvc.result.Result;
import com.georgeinfo.rapidmvc.beans.Message;
import com.georgeinfo.rapidmvc.beans.MsgHeader;
import gbt.config.GeorgeLoggerFactory;

import javax.servlet.http.HttpServletRequest;

/**
 * @author George <Georgeinfo@163.com>
 */
@Path("home/user-center")
public class UserCenterController extends BasicController {

    private static final GeorgeLogger LOG = GeorgeLoggerFactory.getLogger(UserCenterController.class);

    public static final String ACCOUNT_SESSION_KEY = "account";

    @Get
    @Post
    public Result login() throws Exception {
        return rf.view("login");
    }

    @Get
    @Post
    public Result loginPc() throws Exception {
        return rf.view("login-pc");
    }

    @Get
    @Post
    public Result logout() {
        ac.getSession().removeAttribute(ACCOUNT_SESSION_KEY);
        return rf.redirect(ac.getRequest().getContextPath());
    }

    /**
     * 登录验证 （控制器方法的返回值，可以是void）
     * 跳转this.getResponse().sendRedirect("index")：（此时，控制器方法返回void）：
     */
    @Get
    @Post
    public Result signin() throws IOException {
//        InputStream is = ac.getRequest().getInputStream();
//        String content = IoTool.inputStream2String(is);
//        LOG.debug("## 接收到的http body内容是："+content);

        String account = ac.getRequest().getParameter("account");
        String password = ac.getParameter("password");
        String encPassword = EncTool.getMD5SHA(password);
        LOG.debug("## 加密后的密码是：" + encPassword);
        String loginType = ac.getRequest().getParameter("loginType");

        if (account == null || account.trim().isEmpty()) {
            account = "未登录";
        }
        ac.getSession().setAttribute(ACCOUNT_SESSION_KEY, account);

        Message msg = new Message();
        msg.setHeader(new MsgHeader(200, "登录成功"));

        if (loginType != null && loginType.trim().equals("pc")) {
            msg.setData("pc");
        } else {
            msg.setData("mobile");
        }

        return rf.json(msg);
    }

    @Get
    @Post
    public Result index() throws Exception {
        Object account = ac.getSession().getAttribute(ACCOUNT_SESSION_KEY);
        if (account == null) {
            account = "未输入";
        }
        ac.setAttribute("account", account.toString());
        return rf.view("default-index");
    }

    /**
     * 下面这个控制器方法的例子，同时演示URI参数注入、HttpServletRequest内置对象注入，返回json数据，
     * 以及使用ac方式接受http参数这几个主要的功能。
     **/
    @Get("json-test/{userName}")
    @Post("json-test/{userName}")
    public Result jsonTest(@Param("userName") String userName,
                           @Param("request") HttpServletRequest reqeust) {
        //使用reqeust接受参数
        String studio = getRequest().getParameter("studio");

        //使用ac方式接受参数
        String website = ac.getParameter("website");

        HashMap<String, String> data = new HashMap<String, String>();
        data.put("用户名", userName);
        data.put("工作室", studio);
        data.put("网址", website);

        Message msg = new Message();
        msg.setHeader(new MsgHeader(200, "处理成功"));
        msg.setData(data);

        return rf.json(msg);
    }

}
