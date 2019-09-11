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
<jsp:useBean id="user"  class="cn.afm.pojo.User" scope="request" ></jsp:useBean>
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
    <title>App BMS</title>

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
            <h2>APP信息管理平台</h2>

            <div class="rows">
                <div class="cols">
                   <a href="${pageContext.request.contextPath }/backenduser/login" class="ht">后台管理系统入口</a>
                   <a href="${pageContext.request.contextPath }/user/login" class="kf">开发者平台入口</a>
                </div><!--/.col -->
            </div><!--/.row -->
        </div>
        </div><!--/.sign-content -->
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
