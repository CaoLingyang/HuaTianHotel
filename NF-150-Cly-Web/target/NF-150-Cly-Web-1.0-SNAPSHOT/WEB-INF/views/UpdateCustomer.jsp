<%--
  Created by IntelliJ IDEA.
  User: 曹令洋
  Date: 2019/12/13
  Time: 10:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
    String path=request.getContextPath();
    String basePath=request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
   <h1>修改用户信息</h1>
<form action="${pageContext.request.contextPath}/customer/CustomerListThree" method="post" name="CustomerForm" >
    <input value="${customer.id}" name="id" type="hidden"/>
    用户名:<input type="text" name="cname" value="${customer.cname}"><br>
    电话号码:<input type="text" name="phone" value="${customer.phone}"><br>
    地址:<input type="text" name="address" value="${customer.address}"><br>
    身份证号码:<input type="text" name="idCard" value="${customer.idCard}"><br>
    入住日期:<input type="text" name="checkDate" value="${customer.checkDate}"><br>
    房间号:<input type="text" name="roomId" value="${customer.roomId}"><br>
    <input type="submit" value="确认修改" οnclick="updateCustomer()"> </input>
</form>
<script>
    alert(${customer.id});
    function updateCustomer(){
        var form = document.forms[0];
        form.action = "<%=basePath%>/updateCustomer";
        form.method = "post";
        form.submit();
    }
</script>

</body>
</html>
