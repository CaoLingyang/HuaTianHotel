<%--
  Created by IntelliJ IDEA.
  User: 曹令洋
  Date: 2019/12/16
  Time: 19:20
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
    <title>修改员工信息</title>
</head>
<body>
      <form action="${pageContext.request.contextPath}/employee/empEdit" method="post"  name="EmployeeForm">
        <input value="${emp.id}" name="id" type="hidden"/>
          用户名:<input type="text" name="name" value="${emp.name}"><br>
          性别:<input type="text" name="gender" value="${emp.gender}"><br>
          出生日期:<input type="text" name="birthday" value="${emp.birthday}"><br>
          身份证号码:<input type="text" name="idNumber" value="${emp.idNumber}"><br>
          婚姻状况:<input type="text" name="maritalStatus" value="${emp.maritalStatus}"><br>
          民族:<input type="text" name="nation" value="${emp.nation}"><br>
          籍贯:<input type="text" name="nativePlace" value="${emp.nativePlace}"><br>
          政治面貌:<input type="text" name="politicsStatus" value="${emp.politicsStatus}"><br>
          邮箱:<input type="text" name="email" value="${emp.email}"><br>
          手机号码:<input type="text" name="phone" value="${emp.phone}"><br>
          地址:<input type="text" name="address" value="${emp.address}"><br>
          部门:<input type="text" name="department" value="${emp.department}"><br>
          职称:<input type="text" name="jodlevelid" value="${emp.jodlevelid}"><br>
          职位:<input type="text" name="position" value="${emp.position}"><br>
          入职日期:<input type="text" name="positionDate" value="${emp.positionDate}"><br>
          毕业学校:<input type="text" name="school" value="${emp.school}"><br>
          <input type="submit" value="确认修改" οnclick="updateEmployee()"> </input>
      </form>

<script>
    alert(${emp.id});
    function updateEmployee() {
       var form= document.forms[0];
       form.action="<%=basePath%>/updateEmployee";
       form.method="post";
       form.submit();
    }
</script>
</body>
</html>
