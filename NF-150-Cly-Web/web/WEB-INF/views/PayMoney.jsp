<%--
  Created by IntelliJ IDEA.
  User: 曹令洋
  Date: 2019/12/20
  Time: 15:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <script src="/static/js/jquery-3.3.1.min.js"></script>
    <script src="/static/bootstrap/js/bootstrap.js"></script>
    <link href="/static/bootstrap/css/bootstrap.css" type="text/css" rel="stylesheet"/>
    <title>Title</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/pay/addPayInfo" method="post" name="PayMoney" >
    <table id="table">
        房间编号:<input type="text" name="roomid"/><br>
        入住日期:<input type="text" name="payDate"><br>
        应缴费用:<input type="text" name="money">
    </table>
</form>
</body>
</html>
