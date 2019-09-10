<%--
  Created by IntelliJ IDEA.
  User: 小胖
  Date: 2019/9/9
  Time: 20:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Home</title>
    <!-- Bootstrap Styles-->
    <link href="/statics/assets/css/bootstrap.css" rel="stylesheet"/>
    <!-- FontAwesome Styles-->
    <link href="/statics/assets/css/font-awesome.css" rel="stylesheet"/>
    <!-- Morris Chart Styles-->
    <link href="/statics/assets/js/morris/morris-0.4.3.min.css" rel="stylesheet"/>
    <!-- Custom Styles-->
    <link href="/statics/assets/css/custom-styles.css" rel="stylesheet"/>
    <!-- Google Fonts-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'/>
</head>

<body>
<div id="wrapper">
    <nav class="navbar navbar-default top-navbar" role="navigation">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="ManagerShow.jsp"><i class="fa fa-comments"></i> <strong>APP BMS </strong></a>
        </div>

        <ul class="nav navbar-top-links navbar-right">
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                    <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                </a>
                <ul class="dropdown-menu dropdown-user">
                    <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
                    </li>
                    <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                    </li>
                    <li class="divider"></li>
                    <li><a href="#"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                    </li>
                </ul>
                <!-- /.dropdown-user -->
            </li>
            <!-- /.dropdown -->
        </ul>
    </nav>
    <!--/. NAV TOP  -->
    <nav class="navbar-default navbar-side" role="navigation">
        <div id="sideNav" href=""><i class="fa fa-caret-right"></i></div>
        <div class="sidebar-collapse">
            <ul class="nav" id="main-menu">
                <li class="active">
                    <a href="#"><i class="fa fa-sitemap"></i> APP管理<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse in" aria-expanded="true" style="">
                        <li class="success">
                            <a href="${pageContext.request.contextPath}/AppManager/WEB-INF/jsp/examine.jsp">APP审核</a>
                        </li>
                        <li class="success">
                            <a href="#">广告推广</a>
                        </li>
                    </ul>
                </li>
                <li class="active">
                    <a href="#"><i class="fa fa-desktop"></i> 用户管理<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse in" aria-expanded="true" style="">
                        <li class="success">
                            <a href="#">待定</a>
                        </li>
                        <li class="success">
                            <a href="#">待定</a>
                        </li>
                    </ul>
                </li>
                <li class="active">
                    <a href="#"><i class="fa fa-qrcode"></i> 基础数据维护<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse in" aria-expanded="true" style="">
                        <li class="success">
                            <a href="#">待定</a>
                        </li>
                        <li class="success">
                            <a href="#">待定</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </nav>
    <!-- /. NAV SIDE  -->
    <div id="page-wrapper">
        <div id="page-inner">
            <div>
                <h4 style="margin-left: 30px;">欢迎你：系统管理员<span style="font-weight: bold">|角色：超级管理员!</span></h4>
            </div>
        </div><!--/.row-->
    </div>
    <!-- /. PAGE INNER  -->
</div>
<!-- /. PAGE WRAPPER  -->
</div>
<!-- /. WRAPPER  -->
<!-- JS Scripts-->
<!-- jQuery Js -->
<script src="/statics/assets/js/jquery-1.10.2.js"></script>
<!-- Bootstrap Js -->
<script src="/statics/assets/js/bootstrap.min.js"></script>

<!-- Metis Menu Js -->
<script src="/statics/assets/js/jquery.metisMenu.js"></script>
<!-- Morris Chart Js -->
<script src="/statics/assets/js/morris/raphael-2.1.0.min.js"></script>
<script src="/statics/assets/js/morris/morris.js"></script>


<script src="/statics/assets/js/easypiechart.js"></script>
<!--<script src="assets/js/easypiechart-data.js"></script>-->


<!-- Custom Js -->
<script src="/statics/assets/js/custom-scripts.js"></script>

</body>

</html>
