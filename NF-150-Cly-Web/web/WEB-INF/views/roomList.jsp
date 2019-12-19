<%--
  Created by IntelliJ IDEA.
  User: 曹令洋
  Date: 2019/12/19
  Time: 9:46
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
        <th>房间编号</th>
        <th>房间类型</th>
        <th>房间(日)价格</th>
        <th>备注</th>
        <th>房间数量</th>
    </tr>
    <c:forEach items="${room.list}" var="room">
        <tr>
            <td>${room.roomid}</td>
            <td>${room.type}</td>
            <td>${room.money}</td>
            <td>${room.remark}</td>
            <td>${room.restroom}</td>
        </tr>
    </c:forEach>
</table>

<ul class="pagination">
    <li><a href="/room/roomList?pageNum=1">首页</a> </li>
    <li><a href="/room/roomList?pageNum=${room.prePage}">上一页</a> </li>
    <c:forEach items="${room.navigatepageNums}" var="p">
        <li><a href="/room/roomList?pageNum=${p}"></a> </li>
    </c:forEach>
    <li><a href="/room/roomList?pageNum=${room.nextPage}">下一页</a> </li>
    <li><a href="/room/roomList?pageNum=${room.pages}">尾页</a> </li>
    <li><a href="/index">返回主页</a> </li>
</ul>
</body>
</html>
