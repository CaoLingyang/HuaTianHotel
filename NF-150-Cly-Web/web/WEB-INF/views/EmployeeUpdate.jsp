<%--
  Created by IntelliJ IDEA.
  User: 曹令洋
  Date: 2019/12/16
  Time: 19:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <th>姓名</th>
        <th>性别</th>
        <th>出生日期</th>
        <th>身份证号</th>
        <th>婚姻状况</th>
        <th>民族</th>
        <th>籍贯</th>
        <th>政治面貌</th>
        <th>邮箱</th>
        <th>电话号码</th>
        <th>联系地址</th>
        <th>所属部门</th>
        <th>职称</th>
        <th>职位</th>
        <th>入职日期</th>
        <th>毕业院校</th>
        <th>操作</th>
    </tr>
    <c:forEach items="${emp.list}" var="employee">
        <tr>
            <td>${employee.id}</td>
            <td>${employee.name}</td>
            <td>${employee.gender}</td>
            <td>${employee.birthday}</td>
            <td>${employee.idNumber}</td>
            <td>${employee.maritalStatus}</td>
            <td>${employee.nation}</td>
            <td>${employee.nativePlace}</td>
            <td>${employee.politicsStatus}</td>
            <td>${employee.email}</td>
            <td>${employee.phone}</td>
            <td>${employee.address}</td>
            <td>${employee.department}</td>
            <td>${employee.jodlevelid}</td>
            <td>${employee.position}</td>
            <td>${employee.positionDate}</td>
            <td>${employee.school}</td>
            <td>
                <a type="button"  href="${path}/employee/toEmpEdit?id=${employee.id}" class="btn btn-info btn-sm">
                    <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
                    编辑</a>
            </td>
        </tr>
    </c:forEach>
</table>

<ul class="pagination">
    <li><a href="/employee/empListTwo?pageNum=1">首页</a> </li>
    <li><a href="/employee/empListTwo?pageNum=${emp.prePage}">上一页</a> </li>
    <c:forEach items="${emp.navigatepageNums}" var="p">
        <li><a href="/employee/empListTwo?pageNum=${p}"></a> </li>
    </c:forEach>
    <li><a href="/employee/empListTwo?pageNum=${emp.nextPage}">下一页</a> </li>
    <li><a href="/employee/empListTwo?pageNum=${emp.pages}">尾页</a> </li>
    <li><a href="/index">返回主页</a> </li>
</ul>
</body>
</html>
