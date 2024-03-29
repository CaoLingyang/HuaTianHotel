<%--
  Created by IntelliJ IDEA.
  User: 曹令洋
  Date: 2019/12/19
  Time: 19:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>沐瑾汐门户网站后台</title>
    <style>
        * {
            padding: 0;
            margin: 0;
        }

        html,
        body {
            width: 100%;
            height: 100%;
        }

        .cms_login {
            width: 100%;
            height: 100%;
            display: flex;
            justify-content: center;
            background-repeat: no-repeat;
            background-image: url(/static/img/3.jpg);
            background-size: 100% 100%;
        }

        .flexCenter {
            text-align: center;
            margin: auto;
        }

        .cms_login_container {
            width: 70%;
            height: 70%;
            display: flex;
            justify-content: center;
        }

        .cms_login_image {
            width: 60%;
            height: 100%;
        }

        .cms_login_from {
            width: 40%;
            height: 100%;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0px 0px 10px #ccc;
        }

        /* .cms_login_container {
            width: 30%;
            height: 70%;
            border: 1px solid red;
        } */

        img {
            width: 100%;
            height: 100%;
        }

        .divBox {
            display: flex;
            justify-content: center;
            width: 80%;
            height: 46px;
            margin-top: 20px;
            margin-left: 10%;
            position: relative;
        }

        .cms_login_logo {
            display: flex;
            justify-content: center;
            width: 80%;
            height: 60px;
            /* border: 1px solid green; */
            margin-left: 10%;
            margin-bottom: 22px;
            margin-top: 25px;
        }

        .cms_login_img {
            width: 44px;
            height: 44px;
            position: absolute;
            top: 1px;
            left: 1px;
        }

        .cms_login_ipt {
            width: 100%;
            outline: none;
            padding-left: 50px;
        }

        .cms_login_ipt60 {
            width: 60%;
            outline: none;
            padding-left: 50px;
        }

        .cms_login_ver {
            width: 30%;
            outline: none;
            margin-left: 8%;
            border: 1px solid #c32c2c;
            background-color: #bd7070;
            line-height: 46px;
            letter-spacing: 4px;
            border-radius: 4px;
            cursor: default;
            color: white;
        }

        .margin_top60 {
            margin-top: 40px;
        }

        .login_btn {
            width: 100%;
            height: 60px;
            letter-spacing: 10px;
            font-size: 24px;
            background-color: green;
            border: none;
            outline: none;
            border-radius: 10px;
            color: white;
        }

        .login_btn:hover {
            background-color: #044468;
            border: none;
            outline: none;
        }
    </style>
    <title>Title</title>
</head>
<body>
<div class="cms_login">
    <div class="cms_login_container flexCenter" style="min-height:390px;">
        <div class="cms_login_image" style="min-width: 380px;">
            <!-- <img src="./leftimg_04.png" alt=""> -->
        </div>
        <div class="cms_login_from" style="min-width: 380px;">
            <form >
                <div class="cms_login_logo"><span style="font-size:24px;">沐槿汐个人后台登录管理</span></div>
                <div class="divBox"> <img class="cms_login_img" src="/static/img/username_mark.png" name="username"> <input
                        class="cms_login_ipt" type="text" placeholder="请输入账号" id="username"></div>
                <div class="divBox"> <img class="cms_login_img" src="/static/img/password_mark.png"><input type="password"
                                                                                                   placeholder="请输入密码" class="cms_login_ipt" id="password" name="password"></div>
                <div class="divBox"> <img class="cms_login_img" src="/static/img/verify_mark.png"><input type="text"
                                                                                                 placeholder="请输入验证码" class="cms_login_ipt60" id="cms_login_ver_ipt">
                    <span class="cms_login_ver" value="6666" id="cms_login_ver">6666</span>
                </div>
                <div class="divBox margin_top60" style="border:none;">
                    <input class="login_btn" type="button" value="登录" name="submit">
                </div>
            </form>
        </div>
    </div>
</div>

<script src="/static/js/jquery-1.12.4.js"></script>
<script>
    // 随机验证码
    var m = parseInt(Math.random(0, 9) * (9999 - 1000) + 1000);
    var n = $(".cms_login_ver").text(m)
    // 原生获取文本内容
    // var n = document.getElementsByClassName("cms_login_ver")[0].innerHTML;
    // console.log(n)
    // 点击按钮判断账户密码
    $(".login_btn").click(function () {
        var username = $("#username").val();
        var password = $("#password").val();
        var ver = $("#cms_login_ver_ipt").val();
        // console.log(typeof username)
        // console.log(ver)
        // 判断用户账户是不是能够转换成number类型，能，是false，不是true
        if (!isNaN(username)&&username=="123456") {
            // alert("用户账户长度" + username.length)
            // 判断用户密码是不是能够转换成number类型，能，是false，不是true
            if (!isNaN(password)&&password=="654321") {
                console.log("用户密码长度" + password.length)
                // 判断用户输入得验证码
                var n = $(".cms_login_ver").text()
                // console.log(ver)
                if (n == ver) {
                    alert("用户登录成功，等待跳转")
                } else {
                    alert("用户验证码输入错误")
                }
            } else {
                alert("用户密码输入错误")
            }
        } else {
            alert("用户账号输入错误")
        }
        console.log(username)
    })

</script>

</body>
</html>
