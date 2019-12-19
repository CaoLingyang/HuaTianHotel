<%--
  Created by IntelliJ IDEA.
  User: 曹令洋
  Date: 2019/12/9
  Time: 12:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="box">
    <h1> <p style="text-align: center">注册信息</p></h1><br><br>
    <form method="post" action="/addRoom" class="layui-form-item">
        <div class="layui-form-item">
            <label class="layui-form-label">类型</label>
            <div class="layui-input-block">
                <input type="text" name="type" required  lay-verify="required" placeholder="请输入类型" autocomplete="off" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">价格</label>
            <div class="layui-input-block">
                <input type="text" name="money" required  lay-verify="required" placeholder="请输入价格" autocomplete="off" class="layui-input">
            </div>
        </div>

<%--        <div class="layui-form-item">--%>
<%--            <label class="layui-form-label">确认密码:</label>--%>
<%--            <div class="layui-input-block">--%>
<%--                <input type="text" name="repassword" required  lay-verify="required" placeholder="请确认密码" autocomplete="off" class="layui-input">--%>
<%--            </div>--%>
<%--        </div>--%>

        <div class="layui-form-item">
            <label class="layui-form-label">手机:</label>
            <div class="layui-input-block">
                <input type="text" name="remark" required  lay-verify="required" placeholder="备注" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
            </div>
        </div>
    </form>
</div>
</body>
</html>
