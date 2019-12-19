<%--
  Created by IntelliJ IDEA.
  User: 曹令洋
  Date: 2019/12/18
  Time: 12:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path=request.getContextPath();
    String basePath=request.getScheme()+"://"
            +request.getServerName()+":"+request.getServerPort()
            +path+"/";
%>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <script src="/static/js/jquery-3.3.1.min.js"></script>
    <script src="/static/bootstrap/js/bootstrap.js"></script>
    <link href="/static/bootstrap/css/bootstrap.css" type="text/css" rel="stylesheet"/>
    <title>修改公告信息</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/index/acc" method="post"  name="update">
    <input value="${update.id}" name="id" type="hidden"/>
    标题:<input type="text" name="headline" value="${update.headline}"><br>
    设计者:<input type="text" name="designer" value="${update.designer}"><br>
    内容:<input type="text" name="content" value="${update.content}"><br>
    发布者:<input type="text" name="promulgator" value="${update.promulgator}"><br>
    发布时间:<input type="text" name="releaseTime" value="${update.releaseTime}"><br>
    <input type="submit" value="确认修改" οnclick="updateInfo()"> </input>
    <a href="/index">返回主页</a>
</form>

<script>
    alert("编号:",${update.id});
    function updateInfo() {
        var form= document.forms[0];
        form.action="<%=basePath%>/UpdateInfo";
        form.method="post";
        form.submit();
    }
</script>
</body>
</html>
