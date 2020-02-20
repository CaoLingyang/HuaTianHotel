<%--
  Created by IntelliJ IDEA.
  User: 曹令洋
  Date: 2019/12/4
  Time: 9:38
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>华天酒店</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="apple-touch-icon" href="apple-touch-icon.png">

    <link rel="stylesheet" href="/static/css/bootstrap.min.css">
    <link rel="stylesheet" href="/static/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="/static/css/fontAwesome.css">
    <link rel="stylesheet" href="/static/css/hero-slider.css">
    <link rel="stylesheet" href="/static/css/tooplate-style.css">

    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet">

    <script src="/static/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
</head>

<body>
<div class="header">
    <div class="container">
        <nav class="navbar navbar-inverse" role="navigation">
            <div class="navbar-header">
                <button type="button" id="nav-toggle" class="navbar-toggle" data-toggle="collapse" data-target="#main-nav">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a href="#" class="navbar-brand scroll-top">
                    <div class="logo"></div>
                </a>
            </div>
            <!--/.navbar-header-->
            <div id="main-nav" class="collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li><a href="#" class="scroll-top">主页</a></li>
                    <li><a href="#" class="scroll-link" data-id="about">员工</a></li>
                    <li><a href="#" class="scroll-link" data-id="portfolio">房间</a></li>
                    <li><a href="#" class="scroll-link" data-id="employee">客户信息</a></li>
                    <li><a href="#" class="scroll-link" data-id="blog">公告栏</a></li>
                    <li><a href="#" class="scroll-link" data-id="contact">入住酒店</a></li>
                    <li><a href="/userInfo/register" >注册</a></li>
                </ul>
            </div>
            <!--/.navbar-collapse-->
        </nav>
        <!--/.navbar-->
    </div>
    <!--/.container-->
</div>
<!--/.header-->


<section class="cd-hero">
    <ul class="cd-hero-slider autoplay">
        <!--
            <ul class="cd-hero-slider autoplay"> for slider auto play
            <ul class="cd-hero-slider"> for disabled auto play
        -->
        <li class="selected first-slide">
            <div class="cd-full-width">
                <div class="tm-slide-content-div slide-caption">
                    <span>欢迎</span>
                    <h2>欢迎来到华天酒店官网！</h2>
                    <p>华天酒店官网</p>
                    <div class="primary-button">
                        <a href="#" class="scroll-link" data-id="about">Discover More</a>
                    </div>
                </div>
            </div> <!-- .cd-full-width -->
        </li>

        <li class="second-slide">
            <div class="cd-full-width">
                <div class="tm-slide-content-div slide-caption">
                    <span>酒店官网</span>
                    <h2>功能易懂</h2>
                    <p>这里有一系列功能让你更简单更舒适的入住酒店</p>
                    <div class="primary-button">
                        <a href="#">Read More</a>
                    </div> u
                </div>
            </div> <!-- .cd-full-width -->
        </li>

        <li class="third-slide">
            <div class="cd-full-width">
                <div class="tm-slide-content-div slide-caption">
                    <span>恭候入住</span>
                    <h2>欢迎入住</h2>
                    <p>我们在华天酒店恭欢您的到来</p>
                    <div class="primary-button">
                        <a href="#">View Details</a>
                    </div>
                </div>
            </div> <!-- .cd-full-width -->
        </li>
    </ul> <!-- .cd-hero-slider -->

    <div class="cd-slider-nav">
        <nav>
            <span class="cd-marker item-1"></span>

            <ul>
                <li class="selected"><a href="#0"></a></li>
                <li><a href="#0"></a></li>
                <li><a href="#0"></a></li>
            </ul>
        </nav>
    </div> <!-- .cd-slider-nav -->
</section> <!-- .cd-hero -->



<div id="about" class="page-section">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="section-heading">
                    <h4>员工(Employee)</h4>
                    <div class="line-dec"></div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3 col-sm-6 col-xs-12">
                <div class="service-item first-service">
                    <div class="icon"></div>
                    <h4><a href="/employee/add">我要入职</a> </h4>
                    <p>I Want To Join Your Company. Please Give Me A Chance</p>
                </div>
            </div>
            <div class="col-md-3 col-sm-6 col-xs-12">
                <div class="service-item second-service">
                    <div class="icon"></div>
                    <h4><a href="/employee/empList">我司员工</a> </h4>
                    <p>The excellent staff of our company make progress and grow together</p>
                </div>
            </div>
            <div class="col-md-3 col-sm-6 col-xs-12">
                <div class="service-item third-service">
                    <div class="icon"></div>
                    <h4><a href="/employee/empListTwo">修改员工信息</a> </h4>
                    <p>Modify employee information We have an obligation to ensure that employee information is correct</p>
                </div>
            </div>
            <div class="col-md-3 col-sm-6 col-xs-12">
                <div class="service-item fourth-service">
                    <div class="icon"></div>
                    <h4><a href="/employee/empDelete">辞退员工</a> </h4>
                    <p>Employees should be punished for
                        their wrongdoing</p>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="tlinks">Collect from <a href="#" >网页模板</a></div>

<div id="what-we-do">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="left-text">
                    <h4>人性化的服务才能使我们酒店更加美好<br>欢迎加入我们酒店</h4>
                    <p>来到我们酒店就是我们酒店的荣幸，我们应该尽自己的力量让客户满意，不后悔入住我们的酒店<br><br>选择我们酒店就是相信我们，加油！我们华天酒店是最棒的！</p>
                    <ul>
                        <li>
                            <div class="white-button">
                                <a href="#" class="scroll-link" data-id="portfolio">房间详情</a>
                            </div>
                        </li>
                        <li>
                            <div class="primary-butto>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       n">
                                <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=2563875559&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:2563875559:52" alt="联系我们" title="联系我们"/>联系我们</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-md-6">.
                <div class="right-image">
                    <img src="/static/img/what-we-do-right-image.png" alt="">
                </div>
            </div>
        </div>
    </div>
</div>


<div id="portfolio" class="page-section">
    <div class="content-wrapper">
        <div class="inner-container container">
            <div class="row">
                <div class="col-md-12">
                    <div class="section-heading">
                        <h4>房间详情</h4>
                        <div class="line-dec"></div>
                    </div>
                </div>
            </div>
            <div class="projects-holder-3">
                <div class="filter-categories">
                    <ul class="project-filter">
                        <li class="filter" data-filter="all"><span>所有房间</span></li>
                        <li class="filter" data-filter="nature"><span>单人间</span></li>
                        <li class="filter" data-filter="workspace"><span>双人间</span></li>
                        <li class="filter" data-filter="city"><span>商务单间</span></li>
                        <li class="filter" data-filter="technology"><span>商务双间</span></li>
                        <li><a href="/room/roomList">房间详情</a> </li>
<%--                        <li class="filler" data-filter="executivesuite"><span>行政套房</span></li>--%>
<%--                        <li class="filler" data-filter="largemeetingroom "><span>会议室（小）</span></li>--%>
<%--                        <li class="filler" data-filter="smallconferenceroom"><span>会议室（大）</span></li>--%>
                    </ul>
                </div>
                <div class="projects-holder">
                    <div class="row">
                        <div class="col-md-3 col-sm-6 project-item mix nature">
                            <div class="thumb">
                                <div class="image">
                                    <img src="/static/img/test1-small.jpg">
                                </div>
                                <div class="hover-effect">
                                    <a href="/static/img/test1.jpg" data-lightbox="image-1"><i class="fa fa-search"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 project-item mix executivesuite">
                            <div class="thumb">
                                <div class="image">
                                    <img src="/static/img/test2-small.jpg">
                                </div>
                                <div class="hover-effect">
                                    <a href="/static/img/test2.jpg" data-lightbox="image-1"><i class="fa fa-search"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 project-item mix workspace">
                            <div class="thumb">
                                <div class="image">
                                    <img src="/static/img/test3-small.jpg">
                                </div>
                                <div class="hover-effect">
                                    <a href="/static/img/test3.jpg" data-lightbox="image-1"><i class="fa fa-search"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 project-item mix technology">
                            <div class="thumb">
                                <div class="image">
                                    <img src="/static/img/test4-small.jpg">
                                </div>
                                <div class="hover-effect">
                                    <a href="/static/img/test4.jpg" data-lightbox="image-1"><i class="fa fa-search"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 project-item mix city">
                            <div class="thumb">
                                <div class="image">
                                    <img src="/static/img/test5-small.jpg">
                                </div>
                                <div class="hover-effect">
                                    <a href="/static/img/test5.jpg" data-lightbox="image-1"><i class="fa fa-search"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 project-item mix nature">
                            <div class="thumb">
                                <div class="image">
                                    <img src="/static/img/test6-small.jpg">
                                </div>
                                <div class="hover-effect">
                                    <a href="/static/img/test6.jpg" data-lightbox="image-1"><i class="fa fa-search"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 project-item mix technology">
                            <div class="thumb">
                                <div class="image">
                                    <img src="/static/img/test7-small.jpg">
                                </div>
                                <div class="hover-effect">
                                    <a href="/static/img/test7.jpg" data-lightbox="image-1"><i class="fa fa-search"></i></a>
                                </div>
                            </div>
                        </div>
<%--                        <div class="col-md-3 col-sm-6 project-item mix workspace">--%>
<%--                            <div class="thumb">--%>
<%--                                <div class="image">--%>
<%--                                    <img src="/static/img/test8-small.jpg">--%>
<%--                                </div>--%>
<%--                                <div class="hover-effect">--%>
<%--                                    <a href="/static/img/test8.jpg" data-lightbox="image-1"><i class="fa fa-search"></i></a>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="col-md-3 col-sm-6 project-item mix city">--%>
<%--                            <div class="thumb">--%>
<%--                                <div class="image">--%>
<%--                                    <img src="/static/img/test9-small.jpg">--%>
<%--                                </div>--%>
<%--                                <div class="hover-effect">--%>
<%--                                    <a href="/static/img/test9.jpg" data-lightbox="image-1"><i class="fa fa-search"></i></a>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="col-md-3 col-sm-6 project-item mix executivesuite">--%>
<%--                            <div class="thumb">--%>
<%--                                <div class="image">--%>
<%--                                    <img src="/static/img/test1-small.jpg">--%>
<%--                                </div>--%>
<%--                                <div class="hover-effect">--%>
<%--                                    <a href="/static/img/test1.jpg" data-lightbox="image-1"><i class="fa fa-search"></i></a>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>



<div id="blog" class="page-section">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="section-heading">
                    <h4>公告栏</h4>
                    <div class="line-dec"></div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <div class="blog-item b1">
                    <div class="thumb">
                        <img src="/static/img/blog_01.jpg" alt="">
                        <div class="text-content">
                            <table>
                                <tr>
                                    <th>编号:</th>
                                    <th>标题:</th>
                                    <th>发布者:</th>
                                    <th>发布时间:</th>
                                    <th>设计者:</th>
                                    <th>发布内容:</th>
                                    <td>操作:</td>
                                </tr>
                                <c:forEach items="${announcements.list}" var="ann">
                                    <tr>
                                        <td>${ann.id}</td>
                                        <td>${ann.headline}</td>
                                        <td>${ann.promulgator}</td>
                                        <td>${ann.releaseTime}</td>
                                        <td>${ann.designer}</td>
                                        <td>${ann.content}</td>
                                        <a type="button"  href="${path}/index/toUpdateById?id=${ann.id}" class="btn btn-info btn-sm">
                                            <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
                                            编辑</a>
                                    </tr>
                                </c:forEach>
                            </table>
<%--                            <h4>爱护房间,给大家营造一个舒适的居住环境</h4>--%>
<%--                            <span>发布: <em>华天酒店</em>  /  时间: <em>2019 12 11</em>  /  设计者: <em>客服小天</em></span>--%>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="blog-item second-blog b2">
                    <div class="thumb">
                        <img src="/static/img/blog_02.jpg" alt="">
                        <div class="text-content">
                            <h4>诚邀 &amp; 有3-5年工作经验的厨师来我们酒店工作哦</h4>
                            <span>发布: <em>华天酒店</em>  /  时间: <em>2019-10-15至2019-11-15</em>  /  设计者: <em>客服小天</em></span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="blog-item b3">
                    <div class="thumb">
                        <img src="/static/img/blog_03.jpg" alt="">
                        <div class="text-content">
                            <h4>著名设计师周杰先生来我们酒店设计房间，期待他的表现哦！</h4>
                            <span>发布: <em>华天酒店</em>  /  时间: <em>2019-12-10</em>  /  设计者: <em>客服小华</em></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="pop">
                    <span>✖</span>
                    <p>今宵伴君何处去?<br><br>尽来华天大酒店，答案都在不言中</p>
                </div>
                <div class="pop2">
                    <span>✖</span>
                    <p>欢迎您来应聘我们酒店，我们在这恭候您的到来。<br><br>天生我材必有用，来我酒店显真功</p>
                </div>
                <div class="pop3">
                    <span>✖</span>
                    <p>周杰大师可是房间设计的一把手哦，让我期待他的表现吧<br><br>欢迎大家来试试哦。</p>
                </div>
            </div>
        </div>
    </div>
</div>

<div id="employee" class="page-section">
    <div class="employee">
        <div class="row">
                <div class="col-md-12">
                    <div class="section-heading">
                        <h4>客户信息</h4>
                        <div class="line-dec"></div>
                    </div>
                </div>
            <div class="col-md-3 col-sm-6 col-xs-12">
                <div class="fact-item">
                    <div class="counter" data-count="100">0</div>
                    <span><a href="/customer/CustomerList">查看客户信息</a> </span>
                </div>
            </div>
            <div class="col-md-3 col-sm-6 col-xs-12">
                <div class="fact-item">
                    <div class="counter" data-count="214">0</div>
                    <span><a href="/customer/CustomerListTwo">删除客户信息</a> </span>
                </div>
            </div>
            <div class="col-md-3 col-sm-6 col-xs-12">
                <div class="fact-item">
                    <div class="counter" data-count="118">0</div>
                    <span><a href="/customer/CustomerListThree">修改客户信息</a></span>
                </div>
            </div>
            <div class="col-md-3 col-sm-6 col-xs-12">
                <div class="fact-item">
                    <div class="counter" data-count="16">0</div>
                    <span>Total Awards</span>
                </div>
            </div>
        </div>
    </div>
</div>


<div id="contact" class="page-section">

</div>


<footer>
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="copyright-text">
                    <p>Copyright &copy; 2019 Company Name

                        - Design: <a href="#/view/2089-meteor" target="_parent">YangYang</a>.More Templates <a href="#" target="_blank" title="华天酒店">华天酒店</a> - Collect from <a href="#" title="网页模板" target="_blank">酒店页面</a></p>
                </div>
            </div>
            <div class="col-md-6">
                <div class="social-icons">
                    <ul>
                        <li>
                            <a href="#"><i class="fa fa-facebook"></i></a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-linkedin"></i></a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-rss"></i></a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-dribbble"></i></a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</footer>


<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="/static/js/vendor/jquery-1.11.2.min.js"><\/script>')</script>

<script src="/static/js/vendor/bootstrap.min.js"></script>

<script src="/static/js/plugins.js"></script>
<script src="/static/js/main.js"></script>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js" type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready(function() {
        // navigation click actions
        $('.scroll-link').on('click', function(event){
            event.preventDefault();
            var sectionID = $(this).attr("data-id");
            scrollToID('#' + sectionID, 750);
        });
        // scroll to top action
        $('.scroll-top').on('click', function(event) {
            event.preventDefault();
            $('html, body').animate({scrollTop:0}, 'slow');
        });
        // mobile nav toggle
        $('#nav-toggle').on('click', function (event) {
            event.preventDefault();
            $('#main-nav').toggleClass("open");
        });
    });
    // scroll function
    function scrollToID(id, speed){
        var offSet = 50;
        var targetOffset = $(id).offset().top - offSet;
        var mainNav = $('#main-nav');
        $('html,body').animate({scrollTop:targetOffset}, speed);
        if (mainNav.hasClass("open")) {
            mainNav.css("height", "1px").removeClass("in").addClass("collapse");
            mainNav.removeClass("open");
        }
    }
    if (typeof console === "undefined") {
        console = {
            log: function() { }
        };
    }
</script>
</body>
</html>