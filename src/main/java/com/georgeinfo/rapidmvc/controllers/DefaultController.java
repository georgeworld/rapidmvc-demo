/*
 * Author : George <GeorgeNiceWorld@gmail.com> | <Georgeinfo@163.com>
 * Copyright (C) George (http://www.georgeinfo.com), All Rights Reserved.
 */
package com.georgeinfo.rapidmvc.controllers;

import java.util.HashMap;
import com.georgeinfo.rapidmvc.BasicController;
import com.georgeinfo.rapidmvc.annotation.Get;
import com.georgeinfo.rapidmvc.annotation.Path;
import com.georgeinfo.rapidmvc.annotation.Post;
import static com.georgeinfo.rapidmvc.controllers.UserCenterController.ACCOUNT_SESSION_KEY;
import com.georgeinfo.rapidmvc.result.Result;

/**
 *
 * @author George <Georgeinfo@163.com>
 */
@Path("home/default")
public class DefaultController extends BasicController {

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
    public Result indexPc() throws Exception {
        Object account = ac.getSession().getAttribute(ACCOUNT_SESSION_KEY);
        if (account == null) {
            account = "未输入";
        }
        ac.setAttribute("account", account.toString());
        return rf.view("default-index-pc");
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
