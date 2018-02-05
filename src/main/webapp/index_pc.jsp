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
    if (isMobile) {
        response.sendRedirect("index.jsp");
    }
%>
<!DOCTYPE html>
<html lang="zh-CN">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="favicon.ico">

        <title>RapidMVC 演示项目</title>

        <jsp:include page="common/header-pc.jsp">
            <jsp:param name="active" value="login" />
        </jsp:include>
        <!-- Custom styles for this template -->
        <link href="<%=contextPath%>/resources/bootstrap/custom/cover.css" rel="stylesheet">
        <style type="text/css">
            body {
                height: 100%;
                background-color: #85d8ce;
                background-repeat: repeat-x;
                background-image: url(<%=contextPath%>/resources/img/bg.png);
            }
        </style>
    </head>

    <body>

        <div class="site-wrapper">

            <div class="site-wrapper-inner">

                <div class="cover-container">

                    <div class="masthead clearfix">
                        <div class="inner">
                            <h3 class="masthead-brand">RapidMVC</h3>
                            <nav>
                                <ul class="nav masthead-nav">
                                    <li class="active"><a href="https://weibo.com/georgeworld">微博</a></li>
                                    <li><a href="https://github.com/georgeworld/rapidmvc">Github</a></li>
                                    <li><a href="javascript:aboutMe();">联系</a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>

                    <div class="inner cover">
                        <h1 class="cover-heading">RapidMVC演示项目</h1>
                        <p class="lead" style="text-indent:50px; line-height: 36px; text-align: left;">
                            Rapid MVC 是一个极简web mvc框架，包括内置的极简版IOC(DI)功能，实现了常规的Web请求与处理，跟主流的开源MVC框架比起来（比如Spring MVC），
                            并没有什么优势（除了体积小，依赖少之外），Rapid MVC的设计目的，是老乔当初为了给朋友们讲解MVC的原理，让伙伴们了解标准的Web MVC架构，而利用两天周末时间，设计的一款教学的，简易的WEB框架，
                            开源出来，也是希望那些想了解MVC架构的同学，有一个简单的、完整的学习示例。
                        </p>
                        <p class="lead" style="text-indent:50px; line-height: 36px; text-align: left;">
                            RapidMVC也应用到一些微型项目上，作为精简Web框架来使用，欢迎有志青年参与这个项目。
                        </p>
                        <p class="lead">
                            <a href="home/user-center/login-pc" class="btn btn-lg btn-default">用户登录</a>
                        </p>
                    </div>

                    <div class="mastfoot">
                        <div class="inner">
                            <p>Copyright © 2008-2018 <a href="http://www.georgeinfo.com">George info tech studio</a>, All Rights Reserved.</p>
                        </div>
                    </div>

                </div>

            </div>

        </div>

        <jsp:include page="common/footer-pc.jsp">
            <jsp:param name="active" value="login" />
        </jsp:include>
        <script type = "text/javascript" >
            /** 判断当前终端浏览器是否是PC浏览器 */
            function isPC() {
                var userAgentInfo = navigator.userAgent;
                var Agents = ["Android", "iPhone",
                    "SymbianOS", "Windows Phone",
                    "iPad", "iPod"];
                var flag = true;
                for (var v = 0; v < Agents.length; v++) {
                    if (userAgentInfo.indexOf(Agents[v]) > 0) {
                        flag = false;
                        break;
                    }
                }
                return flag;
            }

            var flag = isPC(); //true为PC端，false为手机端
            if (flag === false) {
                window.location.href = "index.jsp";
            }

            function aboutMe() {
                alert("georgeworld@qq.com");
            }
        </script>
    </body>
</html>
