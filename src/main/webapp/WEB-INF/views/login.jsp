<%-- 
    Document   : index
    Created on : 2015-6-23, 22:07:46
    Author     : George <Georgeinfo@163.com>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String contextPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=yes">
        <title>RapidMVC演示项目--用户登录</title>

        <jsp:include page="/common/resource.jsp">
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

            <div class="weui-panel weui-panel_access" style="width:80%; margin-left: auto; margin-right: auto; margin-top: 60px; border-radius:8%;">
                <div class="weui-panel__hd">用户登录</div>
                <div class="weui-panel__bd">

                    <div style="text-align: center;margin-top: 12px;"> 
                        <a href="http://www.georgeinfo.com" target="_blank" style="color:blue;">老乔在探索</a>
                    </div>
                    <form method="POST" action="<%=contextPath%>/home/user-center/signin" id="login_form" onsubmit="return doLogin();">
                        <div class="weui-cells weui-cells_form">
                            <div class="weui-cell">
                                <div class="weui-cell__hd"><label class="weui-label">用户名</label></div>
                                <div class="weui-cell__bd">
                                    <input class="weui-input" name="account" id="account" type="text" placeholder="不输入也没关系">
                                </div>
                            </div>
                            <div class="weui-cell">
                                <div class="weui-cell__hd"><label class="weui-label" style="letter-spacing: 15px;">密码</label></div>
                                <div class="weui-cell__bd">
                                    <input class="weui-input" name="password" id="password" type="password" placeholder="反正是测试页面">
                                </div>
                            </div>

                            <div class="weui-btn-area" style="display: flex; flex-direction: row; align-items: center; justify-content: center;">
                                <div style="flex:1; text-align: center;">

                                    <a class="weui-btn weui-btn_mini weui-btn_primary" href="javascript:doSubmit();" id="showTooltips">登录后台</a>
                                    <button type="submit" name="login_btn" id="login_btn" style="display: none;">登录</button>
                                </div>
                                <div style="flex:1; text-align: center;">

                                    <a class="weui-btn weui-btn_mini weui-btn_warn" href="<%=contextPath%>/home/default/index" id="showTooltips">直接进入</a>
                                </div>
                            </div>
                        </div>   
                    </form>

                </div>
                <div class="weui-panel__ft">
                    <a href="<%=contextPath%>" class="weui-cell weui-cell_access weui-cell_link">
                        <div class="weui-cell__bd">
                            回首页
                        </div>
                        <span class="weui-cell__ft"></span>
                    </a>    
                    <a href="http://weibo.com/georgeworld" class="weui-cell weui-cell_access weui-cell_link">
                        <div class="weui-cell__bd">
                            老乔的微博
                        </div>
                        <span class="weui-cell__ft"></span>
                    </a>    
                </div>
            </div>

            <!-- 主体内容 结束 -->
        </div>
        <jsp:include page="/common/footer.jsp">
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
                //$("#main-container").css("width", "360px");
            }


            /** 用户登录请求 */
            function doJQAjax(account, password) {
                $.ajax({
                    type: "POST",
                    //contentType: 'application/json', //如果加上这句，后台需要从http body中获取json字符串，手动处理参数
                    url: '<%=contextPath%>/home/user-center/signin',
                    data: {account: account, password: password,loginType:"mobile"},
                    dataType: "json",
                    success: function (data) {
                        if (data.header.result === 200) {
                            window.location.href = "<%=contextPath%>/home/default/index";
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
            
            function doLogin(){
                doSubmit();
                return false;
            }
        </script>
    </body>
</html>
