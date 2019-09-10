$(function () {
    var codefalg=false;
    var nameflag=false;
    var emailflag=false;
    var pwdflag=false;
    var repwdflag=false;
    var isaccpflag=false;
    var path=$("#path").val();
    $(".regist").attr("disabled","true");
    var time1=setInterval(function () {
        isaccpflag=$(".isaccp").prop("checked");
    },0);
    var time2=setInterval(function () {
        if(codefalg&&nameflag&&emailflag&&pwdflag&&repwdflag&&isaccpflag){
            $(".regist").removeAttr("disabled");
        }else{
            $(".regist").attr("disabled","true");
        }
    },0);
    //注册账户框失焦
    $("[name=devCode]").blur(function () {
        var devCode=$.trim($(this).val());
        if(devCode==""){
            $(".dr1").text("账号不能为空").css("color","#ff0000");
            codefalg=false;
        }else{
            $.get(path+"/user/isexistscode",{devCode:devCode},CallBack1,"JSON");
            function CallBack1(data) {
                if(data==true){
                    $(".dr1").text("该账号已存在").css("color","#ff0000");
                    $("[name=devCode]").val("");
                    codefalg=false;
                }else{
                    $(".dr1").text("");
                    codefalg=true;
                }
            }
        }
    });

    //昵称框失焦
    $("[name=devName]").blur(function () {
        var devName=$.trim($(this).val());
        if(devName==""){
            $(".dr2").text("昵称不能为空").css("color","#ff0000");
            nameflag=false;
        }else{
            $(".dr2").text("");
            nameflag=true;
        }
    });

    //邮箱框失焦
    $("[name=devEmail]").blur(function () {
        var devEmail=$.trim($(this).val());
        var reg=/^[A-Za-z\d]+([-_.][A-Za-z\d]+)*@([A-Za-z\d]+[-.])+[A-Za-z\d]{2,4}$/;
        var flag=reg.test(devEmail);
        if(devEmail==""){
            $(".dr3").text("邮箱不能为空").css("color","#ff0000");
            emailflag=false;
        }else if(!flag){
            $(".dr3").text("邮箱格式错误").css("color","#ff0000");
            $("[name=devEmail]").val("");
            emailflag=false;
        }else{
            $.get(path+"/user/isexistsemail",{devEmail:devEmail},CallBack2,"JSON");
            function CallBack2(data) {
                if(data==true){
                    $(".dr3").text("该邮箱已存在").css("color","#ff0000");
                    $("[name=devEmail]").val("");
                    emailflag=false;
                }else{
                    $(".dr3").text("")
                    emailflag=true;
                }
            }
        }
    });
    
    //密码框失焦
    $("[name=devPassword]").blur(function () {
        var devPassword=$.trim($(this).val());
        var reg=/^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,10}$/;
        var flag=reg.test(devPassword);
        if(devPassword==""){
            $(".dr4").text("密码不能为空").css("color","#ff0000");
            pwdflag=false;
        }else if(!flag){
            $(".dr4").text("密码由长度为6-10的数字和字母组成").css("color","#ff0000");
            $("[name=devPassword]").val("");
            pwdflag=false;
        }else{
            $(".dr4").text("");
            pwdflag=true;
        }
    });

    //确认密码框失焦
    $("[name=repwd]").blur(function () {
        var repwd=$.trim($(this).val());
        if(repwd==""){
            $(".repwd").text("请再次输入密码");
            repwdflag=false;
        }else if(repwd!=$.trim($("[name=devPassword]").val())){
            $(".repwd").text("两次输入的密码不一致");
            $.trim($(this).val(""));
            repwdflag=false;
        }else{
            $(".repwd").text("");
            repwdflag=true;
        }
    });
});