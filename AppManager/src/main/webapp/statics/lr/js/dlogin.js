$(function () {
    var path = $("#path").val();
    $(".dellogin").click(function () {
        $(".dlzerror").text("");
        $(".dlperror").text("");
        var devCode=$("[name=devCode]").val();
        var devPassword=$("[name=devPassword]").val();
        if(devCode==""||devCode==null){
            $(".dlzerror").text("登录名不能为空");
        }
        if(devPassword==""||devPassword==null){
            $(".dlperror").text("密码不能为空");
        }
        if(devCode!=""&&devCode!=null&&devPassword!=""&&devPassword!=null){
            $.ajax({
                type:"POST",
                url:path+"/user/dologin",
                data:{devCode:devCode,devPassword:devPassword},
                dataType:"json",
                success:function (data) {
                    $(".dlzerror").text("");
                    $(".dlperror").text("");
                    if(data.devCodemessage!=null&&data.devCodemessage!=""){
                        $(".dlzerror").text(data.devCodemessage);
                        $("[name=devCode]").val("");
                    }
                    if(data.devPwdmessage!=null&&data.devPwdmessage!=""){
                        $(".dlperror").text(data.devPwdmessage);
                        $("[name=devPassword]").val("");
                    }
                    if($.isEmptyObject(data)){
                        //此处使用ajax请求后台转到成功页面
                        alert("正确");
                    }
                }
            });
        }
    });
});