<%-- 
    Document   : header-pc
    Created on : 2018-2-1, 9:36:51
    Author     : George <Georgeinfo@163.com>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String contextPath = request.getContextPath();
%>
<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
<!-- Bootstrap core CSS -->
<link href="<%=contextPath%>/resources/bootstrap/css/bootstrap.min.css" 
      integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" 
      crossorigin="anonymous" 
      rel="stylesheet">

<%-- 可选的 Bootstrap 主题文件（一般不用引入） -->
<link rel="stylesheet" 
href="<%=contextPath%>/resources/bootstrap/css/bootstrap-theme.min.css" 
integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" 
crossorigin="anonymous" --%>


<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<link href="<%=contextPath%>/resources/bootstrap/assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
<!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
<script src="<%=contextPath%>/resources/bootstrap/assets/js/ie-emulation-modes-warning.js"></script>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
  <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->


