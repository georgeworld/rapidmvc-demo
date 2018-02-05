<%-- 
    Document   : index
    Created on : 2015-6-23, 22:07:46
    Author     : George <Georgeinfo@163.com>
--%>

<%@page import="com.georgeinfo.rapidmvc.utils.BrowserUtils"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String contextPath = request.getContextPath();

    boolean isMobile = BrowserUtils.isMobile(request.getHeader("User-Agent"));
    if (isMobile == true) {
        response.sendRedirect(contextPath + "/home/user-center/login");
    }
%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>RapidMVC PC版用户登录</title>
        <jsp:include page="/common/header-pc.jsp">
            <jsp:param name="active" value="login" />
        </jsp:include>
        <!-- Custom styles for this template -->
        <link href="<%=contextPath%>/resources/bootstrap/custom/cover.css" rel="stylesheet">
        <link rel="stylesheet" href="<%=contextPath%>/resources/css/login-pc-style.css">
    </head>
    <body>
        <div class="container">
            <form method="POST" action="<%=contextPath%>/home/user-center/signin" id="login_form" onsubmit="return doLogin();">
                <div class="form row" style=" border-radius:10%;">
                    <h3 class="form-title" style="text-align: center;">用户登录</h3>
                    <div class="form-horizontal col-md-offset-3" id="login_form">
                        <div class="col-md-9">
                            <div class="form-group">
                                <i class="fa fa-user fa-lg"></i>
                                <input class="form-control required" type="text" placeholder="用户名" 
                                       value="admin" 
                                       id="account" name="account" autofocus="autofocus" maxlength="20"/>
                            </div>
                            <div class="form-group">
                                <i class="fa fa-lock fa-lg"></i>
                                <input class="form-control required" type="password" placeholder="密码" 
                                       value="123456" 
                                       id="password" name="password" maxlength="8"/>
                            </div>
                            <div class="form-group">
                                用户名和密码可以随便输，也可以不输入，直接登录。
                                <%-- label class="checkbox">
                                    <input type="checkbox" name="remember" value="1"/>记住我
                                </label --%>
                            </div>
                            <div class="form-group col-md-offset-9">
                                <button type="button" class="btn btn-success pull-right" name="submit" onclick="doSubmit();">登录</button>
                                <button type="submit" name="login_btn" id="login_btn" style="display: none;">登录</button>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>

        <!-- 底部导航 开始 -->
        <nav class="navbar navbar-default navbar-fixed-bottom" style="text-align:center; opacity:0.5;">
            <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <%-- div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">导航头</a>
                </div --%>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav" style="display: inline-block;float: none;">
                        <li class="active"><a href="#">老乔微博 <span class="sr-only">(current)</span></a></li>
                        <li><a href="#">老乔工作室</a></li>
                        <li><a href="#">Github</a></li>
                            <%-- li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">下拉菜单 <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">Action</a></li>
                                    <li><a href="#">Another action</a></li>
                                    <li><a href="#">Something else here</a></li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="#">Separated link</a></li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="#">One more separated link</a></li>
                                </ul>
                            </li --%>
                    </ul>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>
        <!-- 底部导航 结束 -->

        <jsp:include page="/common/footer-pc.jsp">
            <jsp:param name="active" value="login" />
        </jsp:include>
        <script type="text/javascript">
            /** 用户登录请求 */
            function doJQAjax(account, password) {
                $.ajax({
                    type: "POST",
                    //contentType: 'application/json', //如果加上这句，后台需要从http body中获取json字符串，手动处理参数
                    url: '<%=contextPath%>/home/user-center/signin',
                    data: {account: account, password: password, loginType: "pc"},
                    dataType: "json",
                    success: function (data) {
                        if (data.header.result === 200) {
                            window.location.href = "<%=contextPath%>/home/default/index-pc";
                        } else {
                            alert(data.header.msgContent);
                        }
                    },
                    error: function (XMLHttpRequest, textStatus, errorThrown) {
                        //只有调试阶段，才放开错误提示
                        alert("失败");
                    }
                });
            }

            function doSubmit() {
                doJQAjax($("#account").val(), $("#password").val());
//                $('#login_form').submit();
            }

            function doLogin() {
                doSubmit();
                return false;
            }
        </script>
    </body>
</html>