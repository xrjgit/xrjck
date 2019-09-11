<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/9/8 0008
  Time: 22:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="fm" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <!-- meta data -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!--font-family-->
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&amp;subset=devanagari,latin-ext" rel="stylesheet">

    <!-- title of site -->
    <title>开发者平台</title>

    <!-- For favicon png -->
    <link rel="shortcut icon" type="image/icon" href="/statics/lr/logo/favicon.png"/>

    <!--font-awesome.min.css-->
    <link rel="stylesheet" href="/statics/lr/css/font-awesome.min.css">

    <!--animate.css-->
    <link rel="stylesheet" href="/statics/lr/css/animate.css">

    <!--bootstrap.min.css-->
    <link rel="stylesheet" href="/statics/lr/css/bootstrap.min.css">

    <!-- bootsnav -->
    <link rel="stylesheet" href="/statics/lr/css/bootsnav.css" >

    <!--style.css-->
    <link rel="stylesheet" href="/statics/lr/css/style.css">

    <!--responsive.css-->
    <link rel="stylesheet" href="/statics/lr/css/responsive.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->

    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
<!--[if lte IE 9]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
<![endif]-->

<!-- signin end -->
<section class="signin signup">
    <div class="container">

        <div class="sign-content">
            <h2>开发者注册</h2>

            <div class="row">
                <div class="col-sm-12">
                    <div class="signin-form">
                        <fm:form method="post" modelAttribute="user">
                                <div class="form-col">
                                    <div class="form-group">
                                        <label for="signin_form">登录名</label>
                                        <fm:input path="devCode" class="form-control" id="signin_form" placeholder="请输入登录名" value="${user.devCode}"/>
                                        <span class="dr1"><fm:errors path="devCode" cssStyle="color: #ff0000"/>${devcodeerror}</span>
                                    </div><!--/.form-group -->
                                </div><!--/.form-col -->
                                <div class="form-col1">
                                    <div class="form-group">
                                        <label for="signin_form">昵称</label>
                                        <fm:input path="devName" class="form-control" id="signin_form" placeholder="请输入昵称" value="${user.devName}"/>
                                        <span class="dr2"><fm:errors path="devName" cssStyle="color: #ff0000"/></span>
                                    </div><!--/.form-group -->
                                </div><!--/.form-col1 -->
                            <div class="form-group" style="clear: both">
                                <label for="signin_form">邮箱</label>
                                <fm:input path="devEmail" class="form-control" id="signin_form" placeholder="请输入邮箱" value="${user.devEmail}"/>
                                <span class="dr3" style="color: #ff0000"><fm:errors path="devEmail" cssStyle="color: #ff0000"/>${devemailerror}</span>
                            </div><!--/.form-group -->
                            <div class="form-group">
                                <label for="signin_form">密码</label>
                                <fm:password path="devPassword" class="form-control" id="signin_form" placeholder="请输入密码" value="${user.devPassword}"/>
                                <span class="dr4"><fm:errors path="devPassword" cssStyle="color: #ff0000"/></span>
                            </div><!--/.form-group -->
                            <div class="form-group">
                                <label for="signin_form">确认密码</label>
                                <input type="password" name="repwd" class="form-control" id="signin_form" placeholder="请再次输入密码" value="${repwd}">
                                <span class="repwd" style="color: #ff0000">${devrepwderror}</span>
                            </div><!--/.form-group -->

                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="signin-password">
                                        <div class="awesome-checkbox-list">
                                            <ul class="unstyled centered">
                                                <li>
                                                    <input class="styled-checkbox isaccp" id="styled-checkbox-2" type="checkbox" value="true">
                                                    <label for="styled-checkbox-2">接受我们的条款</label>
                                                </li>
                                            </ul>
                                        </div><!--/.awesome-checkbox-list -->
                                    </div><!--/.signin-password -->
                                </div><!--/.col -->
                            </div><!--/.row -->

                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="signin-footer">
                                        <button type="submit" class="btn signin_btn regist" data-toggle="modal" data-target=".signin_modal">
                                            注册
                                        </button>
                                        <p>
                                            已有账号?
                                            <a href="${pageContext.request.contextPath }/user/login">去登陆</a>
                                        </p>
                                    </div><!--/.signin-footer -->
                                </div><!--/.col-->
                            </div><!--/.row -->
                        </fm:form><!--/form -->
                    </div><!--/.signin-form -->
                </div><!--/.col -->
            </div><!--/.row -->
        </div><!--/.sign-content -->

        <!-- modal part start -->
        <!--<div class="modal fade signin_modal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">-->
        <!--<div class="modal-dialog modal-lg" role="document">-->
        <!--<div class="modal-content">-->
        <!--<div class="sign-content">-->

        <!--<div class="modal-header">-->
        <!--<h2>sign up</h2>-->
        <!--</div>&lt;!&ndash;/.modal-header &ndash;&gt;-->
        <!---->
        <!--<div class="modal-body">-->
        <!--<div class="signin-form">-->
        <!--<div class=" ">-->
        <!--<div class=" ">-->
        <!--<form action="signin.html">-->
        <!--<div class="form-col">-->
        <!--<div class="form-group">-->
        <!--<label for="signin_form">first name</label>-->
        <!--<input type="text" class="form-control" id="signin_form" placeholder="first name">-->
        <!--</div>&lt;!&ndash;/.form-group &ndash;&gt;-->
        <!--</div>&lt;!&ndash;/.form-col &ndash;&gt;-->
        <!--<div class="form-col1">-->
        <!--<div class="form-group">-->
        <!--<label for="signin_form">last name</label>-->
        <!--<input type="text" class="form-control" id="signin_form" placeholder="last name">-->
        <!--</div>&lt;!&ndash;/.form-group &ndash;&gt;-->
        <!--</div>&lt;!&ndash;/.form-col1 &ndash;&gt;-->
        <!--<div class="form-group">-->
        <!--<label for="signin_form">Email</label>-->
        <!--<input type="email" class="form-control" id="signin_form" placeholder="enter your email here">-->
        <!--</div>&lt;!&ndash;/.form-group &ndash;&gt;-->
        <!--<div class="form-group">-->
        <!--<label for="signin_form">password</label>-->
        <!--<input type="password" class="form-control" id="signin_form" placeholder="Password">-->
        <!--</div>&lt;!&ndash;/.form-group &ndash;&gt;-->
        <!--<div class="form-group">-->
        <!--<label for="signin_form">retype password</label>-->
        <!--<input type="password" class="form-control" id="signin_form" placeholder="Retype Password">-->
        <!--</div>&lt;!&ndash;/.form-group &ndash;&gt;-->
        <!--</form>&lt;!&ndash;/form &ndash;&gt;-->
        <!--</div>&lt;!&ndash;/.col &ndash;&gt;-->
        <!--</div>&lt;!&ndash;/.row &ndash;&gt;-->

        <!--</div>&lt;!&ndash;/.signin-form &ndash;&gt;-->

        <!--<div class="signin-password">-->
        <!--<div class="awesome-checkbox-list">-->
        <!--<ul class="unstyled centered">-->

        <!--<li>-->
        <!--<input class="styled-checkbox" id="styled-checkbox-3" type="checkbox" value="value3">-->
        <!--<label for="styled-checkbox-3">accept our terms & condition</label>-->
        <!--</li>-->

        <!--<li></li>-->

        <!--</ul>-->
        <!--</div>&lt;!&ndash;/.awesome-checkbox-list &ndash;&gt;-->
        <!--</div>&lt;!&ndash;/.signin-password &ndash;&gt;-->

        <!--<div class="signin-footer">-->
        <!--<button type="button" class="btn signin_btn" data-toggle="modal" data-target=".signin_modal">-->
        <!--sign up-->
        <!--</button>-->
        <!--<p>-->
        <!--already member ?-->
        <!--<a href="signin.html">sign in</a>-->
        <!--</p>-->
        <!--</div>&lt;!&ndash;/.signin-footer &ndash;&gt;-->
        <!--</div>&lt;!&ndash;/.modal-body &ndash;&gt;-->

        <!--</div>&lt;!&ndash;/.sign-content &ndash;&gt;-->
        <!--</div>&lt;!&ndash;/.modal-content &ndash;&gt;-->
        <!--</div>&lt;!&ndash;/.modal-dialog &ndash;&gt;-->
        <!--</div>&lt;!&ndash;/.modal &ndash;&gt;-->
        <!--&lt;!&ndash; modal part end &ndash;&gt;-->
        <!--</div>&lt;!&ndash;/.container &ndash;&gt;-->

</section><!--/.signin -->

<!-- signin end -->

<!--footer copyright start -->
<footer class="footer-copyright">
    <div id="scroll-Top3">
        <i class="fa fa-angle-double-up return-to-top" id="scroll-top3" data-toggle="tooltip" data-placement="top" title="" data-original-title="Back to Top" aria-hidden="true"></i>
    </div><!--/.scroll-Top-->
    <input type="hidden" id="path" name="path" value="${pageContext.request.contextPath }"/>
</footer><!--/.hm-footer-copyright-->
<!--footer copyright  end -->


<!-- Include all js compiled plugins (below), or include individual files as needed -->

<script src="/statics/lr/js/jquery.js"></script>

<!--modernizr.min.js-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js"></script>

<!--bootstrap.min.js-->
<script src="/statics/lr/js/bootstrap.min.js"></script>

<!-- bootsnav js -->
<script src="/statics/lr/js/bootsnav.js"></script>

<!-- jquery.sticky.js -->
<script src="/statics/lr/js/jquery.sticky.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>


<!--Custom JS-->
<script src="/statics/lr/js/custom.js"></script>

<script src="/statics/lr/js/devregist.js"></script>

</body>
</html>
