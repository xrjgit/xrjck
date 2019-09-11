$(function () {
    var path=$("#path").val();
    $(".appcx").hide();
    $(".appwh").click(function () {
        $(".hy").hide();
        $(".appcx").show();
        //获取app状态信息
        $.ajax({
            type:"GET",
            url:path+"/app/getStatusList",
            dataType:"JSON",
            success:function (data) {
                $(".apptatus").empty().append("<option value='0'>请选择</option>");
                for(var i=0;i<data.length;i++){
                    $(".apptatus").append("<option value='"+data[i].id+"'>"+data[i].valueName+"</option>");
                }
            }
        });

        //获取app平台信息
        $.ajax({
            type:"GET",
            url:path+"/app/getFlatformList",
            dataType:"JSON",
            success:function (data) {
                $(".flatform").empty().append("<option value='0'>请选择</option>");
                for(var i=0;i<data.length;i++){
                    $(".flatform").append("<option value='"+data[i].id+"'>"+data[i].valueName+"</option>");
                }
            }
        });

        //获取一级分类信息
        $.ajax({
            type:"GET",
            url:path+"/app/getAppCate",
            dataType:"JSON",
            success:function (data) {
                $(".cate1").empty().append("<option value='0'>请选择</option>");
                for(var i=0;i<data.length;i++){
                    $(".cate1").append("<option value='"+data[i].id+"'>"+data[i].categoryName+"</option>");
                }
            }
        });
        
        //一级分类下拉框的change事件
        $(".cate1").bind("change",function () {
            if($(this).val()==0){
                $(".cate2,.cate3").empty().append("<option value='0'>请选择</option>");
            }else{
                $.ajax({
                    type:"GET",
                    url:path+"/app/getAppCate",
                    data:{parentId:$(this).val()},
                    dataType:"JSON",
                    success:function (data){
                        $(".cate2").empty().append("<option value='0'>请选择</option>");
                        for(var i=0;i<data.length;i++){
                            $(".cate2").append("<option value='"+data[i].id+"'>"+data[i].categoryName+"</option>");
                        }
                    }
                });
            }
        });

        //二级分类下拉框change事件
        $(".cate2").bind("change",function () {
            if($(this).val()==0){
                $(".cate3").empty().append("<option value='0'>请选择</option>");
            }else{
                $.ajax({
                    type:"GET",
                    url:path+"/app/getAppCate",
                    data:{parentId:$(this).val()},
                    dataType:"JSON",
                    success:function (data){
                        $(".cate3").empty().append("<option value='0'>请选择</option>");
                        for(var i=0;i<data.length;i++){
                            $(".cate3").append("<option value='"+data[i].id+"'>"+data[i].categoryName+"</option>");
                        }
                    }
                });
            }
        });
    });
});