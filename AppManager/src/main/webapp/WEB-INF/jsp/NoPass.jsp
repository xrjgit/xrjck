<%--
  Created by IntelliJ IDEA.
  User: 小胖
  Date: 2019/9/9
  Time: 20:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Home</title>
    <!-- Bootstrap Styles-->
    <link href="/statics/assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FontAwesome Styles-->
    <link href="/statics/assets/css/font-awesome.css" rel="stylesheet" />
    <!-- Morris Chart Styles-->
    <link href="/statics/assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
    <!-- Custom Styles-->
    <link href="/statics/assets/css/custom-styles.css" rel="stylesheet" />
    <link rel="stylesheet" href="/statics/lr/css/style.css">
    <!-- Google Fonts-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
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
                    <a href="#"><i class="fa fa-sitemap"></i> APP账户管理<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse in" aria-expanded="true" style="">
                        <li class="success">
                            <a href="">待定</a>
                        </li>
                        <li class="success">
                            <a href="#">待定</a>
                        </li>
                    </ul>
                </li>
                <li class="active">
                    <a href="#"><i class="fa fa-desktop"></i> APP应用管理<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse in" aria-expanded="true" style="">
                        <li class="success">
                            <a href="#">APP维护</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </nav>
    <div id="page-wrapper">
        <div id="page-inner">
            <div class="sideName">
                <div class="tdName">
                    新增APP版本信息<i class="fa fa-user fa-fw"></i>测试账户001
                </div>
                <div>
                    <div class="info" id="zx">
                        历史版本信息
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <!-- Advanced Tables -->
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <div class="table-responsive">
                                        <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                            <thead>
                                            <tr>
                                                <th>软件名称</th>
                                                <th>版本号</th>
                                                <th>版本大小(单位:M)</th>
                                                <th>发布状态</th>
                                                <th>APK文件下载</th>
                                                <th>查看更新时间</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr class="odd gradeX">
                                                <td>Trident</td>
                                                <td>Internet Explorer 4.0</td>
                                                <td>Win 95+</td>
                                                <td>4</td>
                                                <td>X</td>
                                                <td>X</td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <!--End Advanced Tables -->
                        </div>
                    </div>
                    <div class="info" id="zx1">
                        新增版本信息
                    </div>
                    <div>
                        <form action="" method="post" class="formName">
                            <table class="tables">
                                <tr>
                                    <td><label for="oName" style="font-weight: normal;">版本号</label></td>
                                    <td><span>*</span></td>
                                    <td><input type="text" name="" class="inputs" id="oName"/></td>
                                </tr>
                                <tr>
                                    <td><label for="yName" style="font-weight: normal;">版本大小</label></td>
                                    <td><span>*</span></td>
                                    <td><input type="text" name="" class="inputs" id="yName"/></td>
                                </tr>
                                <tr>
                                    <td><label for="zName" style="font-weight: normal;">发布状态</label></td>
                                    <td><span>*</span></td>
                                    <td><input type="text" name="" class="inputs" id="zName"/></td>
                                </tr>
                                <tr>
                                    <td><label for="jName" style="font-weight: normal;">应用简介</label></td>
                                    <td><span>*</span></td>
                                    <td><input type="text" name="" class="inputs" id="jName"/></td>
                                </tr>
                                <tr>
                                    <td><label for="kName" style="font-weight: normal;">apk文件</label></td>
                                    <td><span>*</span></td>
                                    <td><input type="text" name="" class="inputs" id="kName"/></td>
                                </tr>
                            </table>
                        </form>
                    </div>
                    <div class="formName">
                        <a href="" class="ah1" style="margin-left: 160px;">保存</a>
                        <a href="" class="ah2" style="background: #2EA7EB;margin-left: 30px;">返回</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="/statics/assets/js/jquery-1.10.2.js"></script>
<!-- Bootstrap Js -->
<script src="/statics/assets/js/bootstrap.min.js"></script>

<!-- Metis Menu Js -->
<script src="/statics/assets/js/jquery.metisMenu.js"></script>
<!-- Morris Chart Js -->
<script src="/statics/assets/js/morris/raphael-2.1.0.min.js"></script>
<script src="/statics/assets/js/morris/morris.js"></script>
<script src="/statics/assets/js/easypiechart.js"></script>
<script src="/statics/assets/js/easypiechart-data.js"></script>
<!-- Custom Js -->
<script src="/statics/assets/js/custom-scripts.js"></script>

</body>

</html>
