<%--
  Created by IntelliJ IDEA.
  User: 曹令洋
  Date: 2019/12/26
  Time: 10:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="section-heading">
                <h4>填写信息</h4>
                <div class="line-dec"></div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <div class="map">
                <img src="/static/img/map.jpg" alt="">
            </div>
        </div>
        <div class="col-md-6">
            <div class="row">
                <form id="contact" action="/index" method="post" class="layui-form-item">
                    <div class="col-md-6" >
                        <fieldset>
                            <input name="username" type="text" class="form-control" id="username" placeholder="Your name..." required  lay-verify="required" autocomplete="off">
                        </fieldset>
                    </div>
                    <div class="col-md-6">
                        <fieldset>
                            <input name="phone" type="text" class="form-control" id="phone" placeholder="Your phone..." required  lay-verify="required" autocomplete="off">
                        </fieldset>
                    </div>
                    <div class="col-md-6">
                        <fieldset>
                            <input name="checkDate" type="text" class="form-control" id="checkDate" placeholder="Your checkDate..." required  lay-verify="required" autocomplete="off">
                        </fieldset>
                    </div>
                    <div class="col-md-6">
                        <fieldset>
                            <input name="Idcard" type="text" class="form-control" id="Idcard" placeholder="Your Idcard..." required  lay-verify="required" autocomplete="off">
                        </fieldset>
                    </div>
                    <div class="col-md-12">
                        <fieldset>
                            <input name="address" type="text" class="form-control" id="address" placeholder="Your address..." required  lay-verify="required" autocomplete="off">
                        </fieldset>
                    </div>
                    <div class="col-md-12">
                        <div class="layui-input-block">
                            <fieldset>
                                <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
                                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                            </fieldset>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>
