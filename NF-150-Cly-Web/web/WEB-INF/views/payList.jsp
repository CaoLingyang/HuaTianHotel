<%--
  Created by IntelliJ IDEA.
  User: 曹令洋
  Date: 2019/12/22
  Time: 19:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <script src="/static/js/jquery-3.3.1.min.js"></script>
    <script src="/static/bootstrap/js/bootstrap.js"></script>
    <link href="/static/bootstrap/css/bootstrap.css" type="text/css" rel="stylesheet"/>
    <title>Title</title>
</head>
<body>
<table class="table">
    <tr>
        <th>编号</th>
        <th>房间编号</th>
        <th>支付日期</th>
        <th>应缴费用</th>
    </tr>
    <c:forEach items="${list.list}" var="pay">
        <tr>
            <td>${pay.id}</td>
            <td>${pay.roomId}</td>
            <td>${pay.payDate}</td>
            <td>${pay.money}</td>
        </tr>
    </c:forEach>
</table>

<ul class="pagination">
    <li><a href="/pay/payList?pageNum=1">首页</a> </li>
    <li><a href="/pay/payList?pageNum=${room.prePage}">上一页</a> </li>
    <c:forEach items="${payList.navigatepageNums}" var="p">
        <li><a href="/pay/payList?pageNum=${p}"></a> </li>
    </c:forEach>
    <li><a href="/pay/payList?pageNum=${room.nextPage}">下一页</a> </li>
    <li><a href="/pay/payList?pageNum=${room.pages}">尾页</a> </li>
    <li><a href="/administradorIndex">返回主页</a> </li>
</ul>
</body>
</html>
