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
    if (isMobile == false) {
        response.sendRedirect("index_pc.jsp");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=yes">
        <title>RapidMVC 演示项目</title>

        <jsp:include page="common/resource.jsp">
            <jsp:param name="active" value="login" />
        </jsp:include>

        <style type="text/css">
            body{
                background-color: #85d8ce;
                background-repeat: repeat-x;
                background-image: url(<%=contextPath%>/resources/img/bg.png);
            }
            #formDivStyle{
                line-height: 66px;
            }
        </style>


    </head>
    <body>
    <body style="height: 100%;">
        <div class="container" style="height: 100%">
            <h1 style="margin-left: auto; margin-right: auto; text-align: center;color: white;">RapidMVC 演示项目</h1>
            <h3 style="margin-left: auto; margin-right: auto; text-align: center;color: white;">手机页面(Mobile Only)</h3>

            <!-- 主体内容 开始 -->
            <div class="weui-panel weui-panel_access">
                <div class="weui-panel__hd">天涯何处无芳草，何必独恋一枝花？</div>
                <div class="weui-panel__bd">
                    <a href="javascript:gotoLoginPage();" class="weui-media-box weui-media-box_appmsg">
                        <div class="weui-media-box__hd">
                            <img class="weui-media-box__thumb" src="<%=contextPath%>/resources/img/rapidmvc/George.png" alt="关于老乔">
                        </div>
                        <div class="weui-media-box__bd">
                            <h4 class="weui-media-box__title">关于老乔</h4>
                            <p class="weui-media-box__desc" 
                               title="从事软件和互联网行业超过十年，主持研发过多个软件系统，对软件及互联网平台的研发和运营，有一些自己的见解。">
                                从事软件和互联网行业超过十年，主持研发过多个软件系统，对软件及互联网平台的研发和运营，有一些自己的见解。
                            </p>
                        </div>
                    </a>
                    <a href="javascript:gotoLoginPage();" class="weui-media-box weui-media-box_appmsg">
                        <div class="weui-media-box__hd">
                            <img class="weui-media-box__thumb" src="<%=contextPath%>/resources/img/rapidmvc/RapidMVC.png" alt="关于RapidMVC">
                        </div>
                        <div class="weui-media-box__bd">
                            <h4 class="weui-media-box__title">关于RapidMVC</h4>
                            <p class="weui-media-box__desc" 
                               title="当年老乔为了给同学们讲解Web MVC框架的基本原理，而利用周末时间，专门开发的一个极简小框架，可以用来了解WEB MVC的基本原理，也可以作为一些小型系统的技术框架来使用。">
                                当年老乔为了给同学们讲解Web MVC框架的基本原理，而利用周末时间，专门开发的一个极简小框架，可以用来了解WEB MVC的基本原理，也可以作为一些小型系统的技术框架来使用。
                            </p>
                        </div>
                    </a>
                </div>
                <div class="weui-panel__ft">
                    <a href="home/user-center/login" class="weui-cell weui-cell_access weui-cell_link">
                        <div class="weui-cell__bd">用户登录</div>
                        <span class="weui-cell__ft"></span>
                    </a>    
                </div>
            </div>

            <!-- 主体内容 结束 -->
        </div>
        <jsp:include page="common/footer.jsp">
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
            if (flag === true) {
                window.location.href = "index_pc.jsp";
            }
            
            function gotoLoginPage(){
                window.location.href="home/user-center/login";
            }
        </script>
    </body>
</html>
