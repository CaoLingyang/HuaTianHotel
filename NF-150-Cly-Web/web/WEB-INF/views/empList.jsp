<%--
  Created by IntelliJ IDEA.
  User: 曹令洋
  Date: 2019/12/5
  Time: 19:38
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
    <c:forEach items="${list.list}" var="Emplist">
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
        </tr>
    </c:forEach>
</table>
<form action="${pageContext.request.contextPath}/employee/getAllByName"
      method="post">
    <div class="col-md-4 data1">
        <input type="text" class="form-control" name="name"
               placeholder="name" value="">
    </div>
    <button type="submit" class="btn bg-maroon">搜索</button>

</form>
<ul class="pagination">
    <li><a href="/employee/empList?pageNum=1">首页</a> </li>
    <li><a href="/employee/empList?pageNum=${list.prePage}">上一页</a> </li>
    <c:forEach items="${list.navigatepageNums}" var="p">
        <li><a href="/employee/empList?pageNum=${p}"></a> </li>
    </c:forEach>
    <li><a href="/employee/empList?pageNum=${list.nextPage}">下一页</a> </li>
    <li><a href="/employee/empList?pageNum=${list.pages}">尾页</a> </li>
    <li><a href="/index">返回主页</a> </li>
</ul>

</body>
</html>
