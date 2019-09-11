<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/9/8 0008
  Time: 21:15
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
<section class="signin">
    <div class="container">

        <div class="sign-content">
            <h2>开发者平台</h2>

            <div class="row">
                <div class="col-sm-12">
                    <div class="signin-form">
                        <form action="" method="post">
                            <div class="form-group">
                                <label for="signin_form">账户</label>
                                <input class="form-control" name="devCode" id="signin_form" placeholder="请输入账号" value="${devCode}"/>
                                <span class="dlzerror" style="color: #ff0000">${devCodemessage}</span>
                            </div><!--/.form-group -->
                            <div class="form-group">
                                <label for="signin_form">密码</label>
                                <input type="password" class="form-control" name="devPassword" id="signin_form" placeholder="请输入密码" value="${devPwd}"/>
                                <span class="dlperror" style="color: #ff0000">${devPwdmessage}</span>
                            </div><!--/.form-group -->
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="signin-password">
                                        <div class="awesome-checkbox-list">
                                            <ul class="unstyled centered">

                                                <li>
                                                    <input class="styled-checkbox issavepwd" id="styled-checkbox-2" type="checkbox" value="value2">
                                                    <label for="styled-checkbox-2">记住密码</label>
                                                </li>

                                                <li>
                                                    <a href="${pageContext.request.contextPath }/user/enter">返回入口</a>
                                                </li>

                                            </ul>
                                        </div><!--/.awesome-checkbox-list -->
                                    </div><!--/.signin-password -->
                                </div><!--/.col -->
                            </div><!--/.row -->
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="signin-footer">
                                        <button type="button" class="btn signin_btn dellogin" data-toggle="modal" data-target=".signin_modal">
                                            登录
                                        </button>
                                        <p>
                                            还没有开发者账号?
                                            <a href="${pageContext.request.contextPath }/user/regist">去注册</a>
                                        </p>
                                    </div><!--/.signin-footer -->
                                </div><!--/.col-->
                            </div>
                        </form><!--/form -->
                    </div><!--/.signin-form -->
                </div><!--/.col -->
            </div><!--/.row -->

            <%--<div class="row">--%>
                <%--<div class="col-sm-12">--%>
                    <%--<div class="signin-password">--%>
                        <%--<div class="awesome-checkbox-list">--%>
                            <%--<ul class="unstyled centered">--%>

                                <%--<li>--%>
                                    <%--<input class="styled-checkbox" id="styled-checkbox-2" type="checkbox" value="value2">--%>
                                    <%--<label for="styled-checkbox-2">记住密码</label>--%>
                                <%--</li>--%>

                                <%--<li>--%>
                                    <%--<a href="#">忘记密码?</a>--%>
                                <%--</li>--%>

                            <%--</ul>--%>
                        <%--</div><!--/.awesome-checkbox-list -->--%>
                    <%--</div><!--/.signin-password -->--%>
                <%--</div><!--/.col -->--%>
            <%--</div><!--/.row -->--%>

            <%--<div class="row">--%>
                <%--<div class="col-sm-12">--%>
                    <%--<div class="signin-footer">--%>
                        <%--<button type="button" class="btn signin_btn dellogin" data-toggle="modal" data-target=".signin_modal">--%>
                            <%--登录--%>
                        <%--</button>--%>
                        <%--<p>--%>
                            <%--还没有开发者账号?--%>
                            <%--<a href="signup.html">去注册</a>--%>
                        <%--</p>--%>
                    <%--</div><!--/.signin-footer -->--%>
                <%--</div><!--/.col-->--%>
            <%--</div><!--/.row -->--%>

        </div><!--/.sign-content -->

        <!-- modal part start -->
        <%--<div class="modal fade signin_modal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">--%>
            <%--<div class="modal-dialog modal-lg" role="document">--%>
                <%--<div class="modal-content">--%>
                    <%--<div class="sign-content">--%>

                        <%--<div class="modal-header">--%>
                            <%--<h2>sign in</h2>--%>
                        <%--</div><!--/.modal-header -->--%>

                        <%--<div class="modal-body">--%>
                            <%--<div class="signin-form">--%>
                                <%--<div class=" ">--%>
                                    <%--<div class=" ">--%>
                                        <%--<form action="signin.html">--%>
                                            <%--<div class="form-group">--%>
                                                <%--<label for="signin_form">Email</label>--%>
                                                <%--<input type="email" class="form-control" id="signin_form" placeholder="enter your email here">--%>
                                            <%--</div><!--/.form-group -->--%>
                                            <%--<div class="form-group">--%>
                                                <%--<label for="signin_form">password</label>--%>
                                                <%--<input type="password" class="form-control" id="signin_form" placeholder="Password">--%>
                                            <%--</div><!--/.form-group -->--%>
                                        <%--</form><!--/form -->--%>
                                    <%--</div><!--/.col -->--%>
                                <%--</div><!--/.row -->--%>

                            <%--</div><!--/.signin-form -->--%>

                            <%--<div class="signin-modal-password">--%>
                                <%--<div class="awesome-checkbox-list">--%>
                                    <%--<ul class="unstyled centered">--%>

                                        <%--<li>--%>
                                            <%--<input class="styled-checkbox" id="styled-checkbox-3" type="checkbox" value="value3">--%>
                                            <%--<label for="styled-checkbox-3">remember password</label>--%>
                                        <%--</li>--%>

                                        <%--<li>--%>
                                            <%--<a href="signin.html">Forgot email or password ?</a>--%>
                                        <%--</li>--%>

                                    <%--</ul>--%>
                                <%--</div><!--/.awesome-checkbox-list -->--%>
                            <%--</div><!--/.signin-modal-password -->--%>

                            <%--<div class="signin-footer">--%>
                                <%--<button type="button" class="btn signin_btn" data-toggle="modal" data-target=".signin_modal">--%>
                                    <%--sign in--%>
                                <%--</button>--%>
                                <%--<p>--%>
                                    <%--Don’t have an Account ?--%>
                                    <%--<a href="signup.html">register</a>--%>
                                <%--</p>--%>
                            <%--</div><!--/.signin-footer -->--%>
                        <%--</div><!--/.modal-body -->--%>

                    <%--</div><!--/.sign-content -->--%>
                <%--</div><!--/.modal-content -->--%>
            <%--</div><!--/.modal-dialog -->--%>
        <%--</div><!--/.modal -->--%>
        <%--<!-- modal part end -->--%>
    <%--</div><!--/.container -->--%>

</section><!--/.signin -->

<!-- signin end -->

<!--footer copyright start -->
<footer class="footer-copyright">
    <div id="scroll-Top">
        <i class="fa fa-angle-double-up return-to-top" id="scroll-top" data-toggle="tooltip" data-placement="top" title="" data-original-title="Back to Top" aria-hidden="true"></i>
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

<script src="/statics/lr/js/dlogin.js"></script>
</body>
</html>
