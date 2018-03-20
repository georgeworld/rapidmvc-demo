<%-- 
    Document   : default-index
    Created on : 2018-1-28, 16:30:27
    Author     : George <Georgeinfo@163.com>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String contextPath = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="en" style="height: 100%;">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
        <title>WeUI</title>
        <jsp:include page="/common/resource.jsp">
            <jsp:param name="active" value="login" />
        </jsp:include>
        <style type="text/css">
            .blod-topic{
                font-weight: bold;
            }
        </style>
    </head>
    <body style="height: 100%;">
        <div class="container" style="height: 100%">
            <div class="weui-tab">
                <div class="weui-tab__panel">
                    <!-- 第一个tab页面内容 开始 -->
                    <!-- 幻灯片 开始 -->
                    <div class="swiper-container" data-pagination='.swiper-pagination' style="height:200px;">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide"><img src="<%=contextPath%>/resources/img/swiper_1.jpg" alt=""></div>
                            <div class="swiper-slide"><img src="<%=contextPath%>/resources/img/swiper_2.jpg" alt=""></div>
                        </div>
                    </div>
                    <!-- 幻灯片 结束 -->

                    <!-- 顶部tab bar 开始 -->
                    <div class="weui-tab" style="height: auto;">
                        <div class="weui-navbar">
                            <a class="weui-navbar__item weui-bar__item--on" href="#tab1" onclick="switchTabColor(this);">
                                极简
                            </a>
                            <a class="weui-navbar__item" href="#tab2" onclick="switchTabColor(this);">
                                框架
                            </a>
                        </div>
                        <div class="weui-tab__bd">
                            <div id="tab1" class="weui-tab__bd-item weui-tab__bd-item--active">
                                <!-- 第一个tab的内容 开始 -->
                                <article class="weui-article">
                                    <h1 style="border-bottom: dotted 1px #666666; text-align: center; padding-bottom: 12px;">
                                        当前登录者：<span style="color:blue;">${account}</span>
                                    </h1>
                                    <section>
                                        <h2 class="title" style="font-weight:bold">&GT;&GT;关于老乔</h2>
                                        <section>
                                            <p style="text-indent: 26px; color: gray;">
                                                老乔(George)，互联网软件开发工程师，从事软件行业超过十年时间，主持开发过多个互联网平台和软件系统，利用业余时间，研发过多个工具类库和框架，近年对互联网产品设计也开始很感兴趣，并有自己的一些见解。
                                            </p>
                                        </section>
                                        <h2 class="title" style="font-weight:bold">&GT;&GT;关于Rapid MVC</h2>
                                        <section>
                                            <p style="text-indent: 26px; color: gray;">
                                                Rapid MVC框架，是老乔当年为了给朋友讲解Web MVC的原理，而利用周末的两天时间，开发出来的一个极简MVC框架，包括精简的IOC(DI)功能，感兴趣的朋友，也可以用来作为微型项目的技术框架。
                                            </p>
                                        </section>
                                    </section>
                                </article>

                                <a href="<%=contextPath%>/home/user-center/login" class="weui-btn weui-btn_disabled weui-btn_default">退出</a>
                                <!-- 第一个tab的内容 结束 -->
                            </div>
                            <div id="tab2" class="weui-tab__bd-item">

                                <div class="weui-grids">
                                    <a href="javascript:;" class="weui-grid">
                                        <div class="weui-grid__icon">
                                            <img src="<%=contextPath%>/resources/img/icon/icons_img_19.png" alt="">
                                        </div>
                                        <p class="weui-grid__label">
                                            RapidMVC
                                        </p>
                                    </a>
                                    <a href="javascript:;" class="weui-grid">
                                        <div class="weui-grid__icon">
                                            <img src="<%=contextPath%>/resources/img/icon/icons_img_25.png" alt="">
                                        </div>
                                        <p class="weui-grid__label">
                                            Web
                                        </p>
                                    </a>

                                    <a href="javascript:;" class="weui-grid">
                                        <div class="weui-grid__icon">
                                            <img src="<%=contextPath%>/resources/img/icon/icons_img_59.png" alt="">
                                        </div>
                                        <p class="weui-grid__label">
                                            框
                                        </p>
                                    </a>

                                    <a href="javascript:;" class="weui-grid">
                                        <div class="weui-grid__icon">
                                            <img src="<%=contextPath%>/resources/img/icon/icons_img_55.png" alt="">
                                        </div>
                                        <p class="weui-grid__label">
                                            架
                                        </p>
                                    </a>

                                    <a href="javascript:;" class="weui-grid">
                                        <div class="weui-grid__icon">
                                            <img src="<%=contextPath%>/resources/img/icon/icons_img_85.png" alt="">
                                        </div>
                                        <p class="weui-grid__label">
                                            极
                                        </p>
                                    </a>
                                    <a href="javascript:;" class="weui-grid">
                                        <div class="weui-grid__icon">
                                            <img src="<%=contextPath%>/resources/img/icon/icons_img_89.png" alt="">
                                        </div>
                                        <p class="weui-grid__label">
                                            简
                                        </p>
                                    </a>

                                    <a href="javascript:;" class="weui-grid">
                                        <div class="weui-grid__icon">
                                            <img src="<%=contextPath%>/resources/img/icon/icons_img_21.png" alt="">
                                        </div>
                                        <p class="weui-grid__label">
                                            学
                                        </p>
                                    </a>

                                    <a href="javascript:;" class="weui-grid">
                                        <div class="weui-grid__icon">
                                            <img src="<%=contextPath%>/resources/img/icon/icons_img_23.png" alt="">
                                        </div>
                                        <p class="weui-grid__label">
                                            习
                                        </p>
                                    </a>
                                    <a href="javascript:;" class="weui-grid">
                                        <div class="weui-grid__icon">
                                            <img src="<%=contextPath%>/resources/img/icon/icons_img_29.png" alt="">
                                        </div>
                                        <p class="weui-grid__label" onclick="window.location.href='<%=contextPath%>/home/user-center/login';">
                                            用
                                        </p>
                                    </a>
                                </div>


                                <a href="javascript:doJsonTest();" class="weui-btn weui-btn_primary">
                                    服务端返回Json演示
                                </a>
                                <a href="<%=contextPath%>/home/user-center/login" class="weui-btn weui-btn_disabled weui-btn_default">退出</a>
                            </div>
                        </div>
                    </div>
                    <!-- 顶部tab bar 结束 -->

                    <!-- 第一个tab页面内容 结束 -->
                </div>

                <div class="weui-tabbar">
                    <a href="javascript:;" class="weui-tabbar__item weui-bar__item_on">
                        <img src="<%=contextPath%>/resources/img/icon/icons_img_113.png" alt="" class="weui-tabbar__icon">
                        <p class="weui-tabbar__label">微信</p>
                    </a>
                    <a href="javascript:;" class="weui-tabbar__item">
                        <img src="<%=contextPath%>/resources/img/icon/icons_img_109.png" alt="" class="weui-tabbar__icon">
                        <p class="weui-tabbar__label">通讯录</p>
                    </a>
                    <a href="javascript:;" class="weui-tabbar__item">
                        <img src="<%=contextPath%>/resources/img/icon/icons_img_145.png" alt="" class="weui-tabbar__icon">
                        <p class="weui-tabbar__label">发现</p>
                    </a>
                    <a href="javascript:;" class="weui-tabbar__item">
                        <img src="<%=contextPath%>/resources/img/icon/icons_img_79.png" alt="" class="weui-tabbar__icon">
                        <p class="weui-tabbar__label">我</p>
                    </a>
                </div>
            </div>
        </div>
        <jsp:include page="/common/footer.jsp">
            <jsp:param name="active" value="login" />
        </jsp:include>

        <script>
            $(function () {
                var mySwiper = new Swiper('.swiper-container', {
                    autoplay: 3000,
                    speed: 300,
                    spaceBetween: 100,
                    paginationClickable: true
                });

                //mySwiper.slideNext();

                //设置当前选中的tab字体颜色为红色
                $(".weui-bar__item--on").css("color", "red");
            });

            //切换tab菜单颜色
            function switchTabColor(item) {
                $(".weui-navbar__item").each(function () {
                    $(this).css("color", "black");
                });

                $(item).css("color", "red");
            }

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