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
            <div class="forName">
                <div class="tdName">
                    修改APP基础信息<i class="fa fa-user fa-fw"></i>测试账户001
                </div>
                <div>
                    <form action="" method="post" class="formName">
                        <table class="tables">
                            <tr>
                                <td><label for="ruanName" style="font-weight: normal;">软件名称</label></td>
                                <td><span>*</span></td>
                                <td><input type="text" name="" class="inputs" id="ruanName" placeholder="请输入软件名称"/></td>
                            </tr>
                            <tr>
                                <td><label for="kName" style="font-weight: normal;">APK名称</label></td>
                                <td><span>*</span></td>
                                <td><input type="text" name="" class="inputs" id="kName" placeholder="前请输入APK名称"/></td>
                            </tr>
                            <tr>
                                <td><label for="oName" style="font-weight: normal;">支持ROM</label></td>
                                <td><span>*</span></td>
                                <td><input type="text" name="" class="inputs" id="oName" placeholder="请输入支持的ROM"/></td>
                            </tr>
                            <tr>
                                <td><label for="yName" style="font-weight: normal;">界面语言</label></td>
                                <td><span>*</span></td>
                                <td><input type="text" name="" class="inputs" id="yName" placeholder="请输入软件支持的界面语言"/></td>
                            </tr>
                            <tr>
                                <td><label for="dName" style="font-weight: normal;">软件大小</label></td>
                                <td><span>*</span></td>
                                <td><input type="text" name="" class="inputs" id="dName" placeholder="请输入软件大小，单位为Mb"/></td>
                            </tr>
                            <tr>
                                <td><label for="cName" style="font-weight: normal;">下载次数</label></td>
                                <td><span>*</span></td>
                                <td><input type="text" name="" class="inputs" id="cName" placeholder="请输入下载次数"/></td>
                            </tr>
                            <tr>
                                <td><label for="pName" style="font-weight: normal;">所属平台</label></td>
                                <td><span>*</span></td>
                                <td>
                                    <select class="inputs" id="pName">
                                        <option value="">--请选择--</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td><label for="nName" style="font-weight: normal;">一级分类</label></td>
                                <td><span>*</span></td>
                                <td>
                                    <select class="inputs" id="nName">
                                        <option value="">--请选择--</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td><label for="wName" style="font-weight: normal;">二级分类</label></td>
                                <td><span>*</span></td>
                                <td>
                                    <select class="inputs" id="wName">
                                        <option value="">--请选择--</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td><label for="rName" style="font-weight: normal;">三级分类</label></td>
                                <td><span>*</span></td>
                                <td>
                                    <select class="inputs" id="rName">
                                        <option value="">--请选择--</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td><label for="zName" style="font-weight: normal;">APP状态</label></td>
                                <td><span>*</span></td>
                                <td><input type="text" name="" class="inputs" id="zName"/></td>
                            </tr>
                            <tr>
                                <td><label for="jName" style="font-weight: normal;">应用简介</label></td>
                                <td><span>*</span></td>
                                <td><input type="text" name="" class="inputs" id="jName" placeholder="请输入本软件的相关介绍信息"/></td>
                            </tr>
                            <tr>
                                <td><label style="font-weight: normal;">LOGO图片</label></td>
                                <td><span>*</span></td>
                                <td><img src="/statics/assets/img/img-1.jpg"><a href="" class="delete" style="color: #0f0f0f;border: 0px;">删除</a></td>
                            </tr>
                        </table>
                        <a href="" class="ah1" id="ah1">保存</a>
                        <a href="" class="ah3" id="ah3">返回</a>
                    </form>
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
