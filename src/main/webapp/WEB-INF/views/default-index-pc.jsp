<%-- 
    Document   : default-index
    Created on : 2018-1-28, 16:30:27
    Author     : George <Georgeinfo@163.com>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%
    String contextPath = request.getContextPath();
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
    <link rel="icon" href="../../favicon.ico">

    <title>RapidMVC 演示系统</title>
    <jsp:include page="/common/header-pc.jsp">
        <jsp:param name="active" value="login"/>
    </jsp:include>
    <!-- Custom styles for this template -->
    <link href="<%=contextPath%>/resources/css/dashboard.css" rel="stylesheet">
</head>

<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                    aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">RapidMVC 演示项目</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="http://www.georgeinfo.com" target="_blank">老乔工作室</a></li>
                <li><a href="https://weibo.com/georgeworld">微博</a></li>
                <li><a href="https://github.com/georgeworld">github</a></li>
                <li><a href="<%=contextPath%>/home/user-center/logout">退出</a></li>
            </ul>
            <form class="navbar-form navbar-right" action="http://www.georgeinfo.com">
                <input type="text" class="form-control" placeholder="Search...">
            </form>
        </div>
    </div>
</nav>

<div class="container-fluid">
    <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
            <ul class="nav nav-sidebar">
                <li class="active"><a href="#">这里是 <span class="sr-only">(current)</span></a></li>
                <li><a href="#">RapidMVC</a></li>
                <li><a href="#">框架演示项目</a></li>
                <li><a href="#">如果你想学习</a></li>
            </ul>
            <ul class="nav nav-sidebar">
                <li><a href="#">Web MVC 知识</a></li>
                <li><a href="#">可以关注RapidMVC</a></li>
                <li><a href="#">一个专门为了讲解</a></li>
                <li><a href="#">Web MVC基础知识</a></li>
                <li><a href="#">而创立的极简框架</a></li>
            </ul>
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
            <h1 class="page-header">RapidMVC 演示系统PC版</h1>

            <!-- 轮播图 开始 -->
            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox">
                    <div class="item active">
                        <img src="<%=contextPath%>/resources/img/banner/1.png" alt="...">
                        <div class="carousel-caption">
                            &nbsp;
                        </div>
                    </div>
                    <div class="item">
                        <img src="<%=contextPath%>/resources/img/banner/2.png" alt="...">
                        <div class="carousel-caption" style="color:black;">
                            www.hihuacheng.com
                        </div>
                    </div>
                    <div class="item">
                        <img src="<%=contextPath%>/resources/img/banner/3.png" alt="...">
                        <div class="carousel-caption" style="color:black;">
                            weibo.com/georgeworld
                        </div>
                    </div>
                </div>

                <!-- Controls -->
                <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
            <!-- 轮播图 结束 -->

            <h2 class="sub-header">Section title</h2>
            <div class="table-responsive">
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th>#</th>
                        <th>Header</th>
                        <th>Header</th>
                        <th>Header</th>
                        <th>Header</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td colspan="5" style="text-align: center;">
                            <button class="btn btn-success" name="jsonTest"
                                    id="jsonTest" onclick="doJsonTest();">
                                服务端返回Json数据演示
                            </button>
                        </td>

                    </tr>
                    <tr>
                        <td>1,002</td>
                        <td>amet</td>
                        <td>consectetur</td>
                        <td>adipiscing</td>
                        <td>elit</td>
                    </tr>
                    <tr>
                        <td>1,003</td>
                        <td>Integer</td>
                        <td>nec</td>
                        <td>odio</td>
                        <td>Praesent</td>
                    </tr>
                    <tr>
                        <td>1,003</td>
                        <td>libero</td>
                        <td>Sed</td>
                        <td>cursus</td>
                        <td>ante</td>
                    </tr>
                    <tr>
                        <td>1,004</td>
                        <td>dapibus</td>
                        <td>diam</td>
                        <td>Sed</td>
                        <td>nisi</td>
                    </tr>
                    <tr>
                        <td>1,005</td>
                        <td>Nulla</td>
                        <td>quis</td>
                        <td>sem</td>
                        <td>at</td>
                    </tr>
                    <tr>
                        <td>1,006</td>
                        <td>nibh</td>
                        <td>elementum</td>
                        <td>imperdiet</td>
                        <td>Duis</td>
                    </tr>
                    <tr>
                        <td>1,007</td>
                        <td>sagittis</td>
                        <td>ipsum</td>
                        <td>Praesent</td>
                        <td>mauris</td>
                    </tr>
                    <tr>
                        <td>1,008</td>
                        <td>Fusce</td>
                        <td>nec</td>
                        <td>tellus</td>
                        <td>sed</td>
                    </tr>
                    <tr>
                        <td>1,009</td>
                        <td>augue</td>
                        <td>semper</td>
                        <td>porta</td>
                        <td>Mauris</td>
                    </tr>
                    <tr>
                        <td>1,010</td>
                        <td>massa</td>
                        <td>Vestibulum</td>
                        <td>lacinia</td>
                        <td>arcu</td>
                    </tr>
                    <tr>
                        <td>1,011</td>
                        <td>eget</td>
                        <td>nulla</td>
                        <td>Class</td>
                        <td>aptent</td>
                    </tr>
                    <tr>
                        <td>1,012</td>
                        <td>taciti</td>
                        <td>sociosqu</td>
                        <td>ad</td>
                        <td>litora</td>
                    </tr>
                    <tr>
                        <td>1,013</td>
                        <td>torquent</td>
                        <td>per</td>
                        <td>conubia</td>
                        <td>nostra</td>
                    </tr>
                    <tr>
                        <td>1,014</td>
                        <td>per</td>
                        <td>inceptos</td>
                        <td>himenaeos</td>
                        <td>Curabitur</td>
                    </tr>
                    <tr>
                        <td>1,015</td>
                        <td>sodales</td>
                        <td>ligula</td>
                        <td>in</td>
                        <td>libero</td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<jsp:include page="/common/footer-pc.jsp">
    <jsp:param name="active" value="login"/>
</jsp:include>

<script type="text/javascript">
    function doJsonTest() {
        $.ajax({
            type: "POST",
            //contentType: 'application/json', //如果加上这句，后台需要从http body中获取json字符串，手动处理参数
            url: '<%=contextPath%>/home/user-center/json-test/George',
            data: {studio: "老乔软件工作室", website: "www.georgeinfo.com"},
            dataType: "json",
            success: function (msg) {
                if (msg.header.result === 200) {
                    window.alert("用户："
                        +msg.data["用户名"]
                        +"\n工作室："+msg.data["工作室"]
                        +"\n网址："+msg.data["网址"]);
                } else {
                    alert(msg.header.msgContent);
                }
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                //只有调试阶段，才放开错误提示
                alert("失败");
            }
        });
    }
</script>
</body>
</html>
