<%--
  Created by IntelliJ IDEA.
  User: 曹令洋
  Date: 2019/12/11
  Time: 15:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <script src="/static/js/jquery-3.3.1.min.js"></script>
    <script src="/static/bootstrap/js/bootstrap.js"></script>
    <link href="/static/bootstrap/css/bootstrap.css" type="text/css" rel="stylesheet"/>
</head>
<body>

<table class="table">
    <tr>
        <th>编号</th>
        <th>名字</th>
        <th>电话号码</th>
        <th>地址</th>
        <th>身份证号码</th>
        <th>入住日期</th>
        <th>房间号</th>
    </tr>
    <c:forEach items="${list.list}" var="customer">
        <tr>
            <td>${customer.id}</td>
            <td>${customer.cname}</td>
            <td>${customer.phone}</td>
            <td>${customer.address}</td>
            <td>${customer.idCard}</td>
            <td>${customer.checkDate}</td>
            <td>${customer.roomId}</td>
        </tr>
    </c:forEach>
</table>

<ul class="pagination">
    <li><a href="/customer/CustomerList?pageNum=1">首页</a> </li>
    <li><a href="/customer/CustomerList?pageNum=${list.prePage}">上一页</a> </li>
    <c:forEach items="${list.navigatepageNums}" var="p">
        <li><a href="/customer/CustomerList?pageNum=${p}"></a> </li>
    </c:forEach>
    <li><a href="/customer/CustomerList?pageNum=${list.nextPage}">下一页</a> </li>
    <li><a href="/customer/CustomerList?pageNum=${list.pages}">尾页</a> </li>
    <li><a href="/index">返回主页</a> </li>
</ul>
</body>
</html>
