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
            <h4 class="sH4">
                APP&nbsp;&nbsp;信息管理维护<i class="fa fa-user fa-fw"></i>&nbsp;&nbsp;
                测试用户001-您可以通过搜索或者其他的筛选项对APP的信息进行维护、删除等管理操作。^_^
            </h4>
            <div class="form-name">
                <form method="post" action="">
                    <ul>
                        <li>
                            <div>软件名称</div>
                            <div><input type="text" name="rname" class="rname"/></div>
                        </li>
                        <li>
                            <div>APP状态</div>
                            <div><select class="select"><option value=""></option></select></div>
                        </li>
                        <li>
                            <div>所属平台</div>
                            <div><select class="select"><option value=""></option></select></div>
                        </li>
                        <li>
                            <div>一级分类</div>
                            <div><select class="select"><option value=""></option></select></div>
                        </li>
                        <li>
                            <div>二级分类</div>
                            <div><select class="select"><option value=""></option></select></div>
                        </li>
                        <li>
                            <div>三级分类</div>
                            <div><select class="select"><option value=""></option></select></div>
                        </li>
                        <li>
                            <div><input type="submit" class="btn btn-success"/></div>
                        </li>
                    </ul>
                </form>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <!-- Advanced Tables -->
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="table-responsive">
                                <a href="#" class="btn btn-primary" style="margin-bottom: 10px;">新增APP基础信息</a>
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                    <tr>
                                        <th>软件名称</th>
                                        <th>APK名称</th>
                                        <th>软件大小(单位:M)</th>
                                        <th>所属平台</th>
                                        <th>所属分类(一级分类、二级分类、三级分类)</th>
                                        <th>状态</th>
                                        <th>下载次数</th>
                                        <th>最新版本号</th>
                                        <th>操作</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr class="odd gradeX">
                                        <td>Trident</td>
                                        <td>Internet Explorer 4.0</td>
                                        <td>Win 95+</td>
                                        <td class="center">4</td>
                                        <td class="center">X</td>
                                        <td class="center">X</td>
                                        <td class="center">X</td>
                                        <td class="center">X</td>
                                        <td class="center">
                                            <select class="selects">
                                                <option value="" selected>点击操作</option>
                                                <option value="">下架</option>
                                                <option value="">新增版本</option>
                                                <option value="">修改版本</option>
                                                <option value="">修改</option>
                                                <option value="">查看</option>
                                                <option value="">删除</option>
                                            </select>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>

                        </div>
                    </div>
                    <!--End Advanced Tables -->
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
