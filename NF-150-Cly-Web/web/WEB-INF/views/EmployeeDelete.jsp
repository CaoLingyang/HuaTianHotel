<%--
  Created by IntelliJ IDEA.
  User: 曹令洋
  Date: 2019/12/12
  Time: 19:23
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
<table id="table">
    <tr>
        <th>编号</th>
        <th>名字</th>
        <th>性别</th>
        <th>出生日期</th>
        <th>身份证号码</th>
        <th>婚姻状况</th>
        <th>民族</th>
        <th>籍贯</th>
        <th>政治面貌</th>
        <th>邮箱</th>
        <th>电话号码</th>
        <th>地址</th>
        <th>部门</th>
        <th>职位</th>
        <th>未知</th>
        <th>入职日期</th>
        <th>学校</th>
        <th>辞退</th>
    </tr>
    <c:forEach items="${delete.list}" var="Emplist">
        <tr >
            <td>${Emplist.id}</td>
            <td>${Emplist.name}</td>
            <td>${Emplist.gender}</td>
            <td>${Emplist.birthday}</td>
            <td>${Emplist.idNumber}</td>
            <td>${Emplist.maritalStatus}</td>
            <td>${Emplist.nation}</td>
            <td>${Emplist.nativePlace}</td>
            <td>${Emplist.politicsStatus}</td>
            <td>${Emplist.email}</td>
            <td>${Emplist.phone}</td>
            <td>${Emplist.address}</td>
            <td>${Emplist.department}</td>
            <td>${Emplist.jodlevelid}</td>
            <td>${Emplist.position}</td>
            <td>${Emplist.positionDate}</td>
            <td>${Emplist.school}</td>
            <td><a href="/employee/deleteById?id=${Emplist.id}">删除</a> </td>
        </tr>
    </c:forEach>
</table>
<ul class="pagination">
    <li><a href="/employee/empDelete?pageNum=1">首页</a> </li>
    <li><a href="/employee/empDelete?pageNum=${delete.prePage}">上一页</a> </li>
    <c:forEach items="${list.navigatepageNums}" var="p">
        <li><a href="/employee/empDelete?pageNum=${p}"></a> </li>
    </c:forEach>
    <li><a href="/employee/empDelete?pageNum=${delete.nextPage}">下一页</a> </li>
    <li><a href="/employee/empDelete?pageNum=${delete.pages}">尾页</a> </li>
    <li><a href="/index">返回主页</a> </li>
</ul>
</body>
</html>
