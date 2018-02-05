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
import com.georgeinfo.rapidmvc.annotation.Path;
import com.georgeinfo.rapidmvc.annotation.Post;
import com.georgeinfo.rapidmvc.result.Result;
import com.georgeinfo.rapidmvc.beans.Message;
import com.georgeinfo.rapidmvc.beans.MsgHeader;
import gbt.config.GeorgeLoggerFactory;

/**
 *
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

    @Get
    @Post
    public Result jsonTest() {
        HashMap<String, String> m = new HashMap<String, String>();
        m.put("a", "111");
        m.put("b", "222");

        return rf.json(m);
    }

}
