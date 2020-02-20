<%--
  Created by IntelliJ IDEA.
  User: 曹令洋
  Date: 2019/12/5
  Time: 8:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <script src="/static/js/jquery-3.3.1.min.js"></script>
    <script src="/static/bootstrap/js/bootstrap.js"></script>
    <link href="/static/bootstrap/css/bootstrap.css" type="text/css" rel="stylesheet"/>
    <title>添加员工</title>
</head>
<body>

<form action="${pageContext.request.contextPath}/employee/addEmpInfo" method="post"  name="addEmployee">
    <table id="table">

        用户名:<input type="text" name="name" ><br>
        性别:<input type="text" name="gender" ><br>
        出生日期:<input type="text" name="birthday" ><br>
        身份证号码:<input type="text" name="idNumber" ><br>
        婚姻状况:<input type="text" name="maritalStatus" ><br>
        民族:<input type="text" name="nation"><br>
        籍贯:<input type="text" name="nativePlace" ><br>
        政治面貌:<input type="text" name="politicsStatus" ><br>
        邮箱:<input type="text" name="email" ><br>
        手机号码:<input type="text" name="phone" ><br>
        地址:<input type="text" name="address"><br>
        部门:<input type="text" name="department" ><br>
        职称:<input type="text" name="jodlevelid" ><br>
        职位:<input type="text" name="position" ><br>
        入职日期:<input type="text" name="positionDate" ><br>
        毕业学校:<input type="text" name="school" ><br>
        <input type="submit" value="确认添加" > </input>
    </table>
    </form>
</body>
</html>
