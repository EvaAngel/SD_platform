$(function(){
	
//	点击piclist中的某张图片
    $(".skipbtn").click(function(){
//  	获取当前点击的图片下标
//      点击瞬间遮光板淡出,详情图片淡出
        $("#pan").fadeIn(600);
        $("#showTable").fadeIn(600);
    });
    $(".canclebtn").click(function(){
//  	获取当前点击的图片下标
//      点击瞬间遮光板淡出,详情图片淡出
        $("#pan").fadeOut(600);
        $("#showTable").fadeOut(600);
    });
})


$(function(){

//	点击piclist中的某张图片
    $(".dropbtn").click(function(e){
        var d = $(this).parent().parent().prev().html();
        $("#delid").val(d);
//  	获取当前点击的图片下标
//      点击瞬间遮光板淡出,详情图片淡出
        $("#pan").fadeIn(600);
        $("#dropTable").fadeIn(600);
    });
    $(".canclebtn").click(function(){
//  	获取当前点击的图片下标
//      点击瞬间遮光板淡出,详情图片淡出
        $("#pan").fadeOut(600);
        $("#dropTable").fadeOut(600);
    });
})



$(function(){

//	点击piclist中的某张图片
    $("a[class='skipbtn']").click(function(){
//  	获取当前点击的图片下标
//      点击瞬间遮光板淡出,详情图片淡出
        $("#pan").fadeIn(600);
        $("#confirmBox").fadeIn(600);
    });
    $(".canclebtn").click(function(){
//  	获取当前点击的图片下标
//      点击瞬间遮光板淡出,详情图片淡出
        $("#pan").fadeOut(600);
        $("#confirmBox").fadeOut(600);
    });
})

    $(function(){

//	点击piclist中的某张图片
        $(".confirmBox").click(function(){
//  	获取当前点击的图片下标
//      点击瞬间遮光板淡出,详情图片淡出
            $("#pan").fadeIn(600);
            $("#confirmBox").fadeIn(600);
        });
        $(".canclebtn").click(function(){
//  	获取当前点击的图片下标
//      点击瞬间遮光板淡出,详情图片淡出
            $("#pan").fadeOut(600);
            $("#confirmBox").fadeOut(600);
        });
    })


$(function(){

//	点击piclist中的某张图片
    $(".modibtn").click(function(){
//  	获取当前点击的图片下标
//      点击瞬间遮光板淡出,详情图片淡出
        $("#pan").fadeIn(600);
        $("#modiTable").fadeIn(600);
    });
    $(".canclebtn").click(function(){
//  	获取当前点击的图片下标
//      点击瞬间遮光板淡出,详情图片淡出
        $("#pan").fadeOut(600);
        $("#modiTable").fadeOut(600);
    });
})

$(function(){

//	点击piclist中的某张图片
    $(".modibtn").click(function(e){
        var t = $(this).parent().parent().prev().html();
        $("#id").val(t);
//  	获取当前点击的图片下标
//      点击瞬间遮光板淡出,详情图片淡出
        $("#pan").fadeIn(600);
        $("#modiTable").fadeIn(600);
    });
    $(".canclebtn").click(function(){
//  	获取当前点击的图片下标
//      点击瞬间遮光板淡出,详情图片淡出
        $("#pan").fadeOut(600);
        $("#modiTable").fadeOut(600);
    });
})


$(function(){

//
    $(".closeoropenBox").click(function(){
//  	获取当前点击的图片下标
        if($(this).children("span").html() == "关停"){
            $("#closeBox .closeBoxTitle").attr("id","close");
            $("#closeBox .closeBoxTitle").html("是否确认关停");
            $("#pan").fadeIn(600);
            $("#closeBox").fadeIn(600);
        }else if($(this).children("span").html() == "启动"){
            $("#closeBox .closeBoxTitle").attr("id","open");
            $("#closeBox .closeBoxTitle").html("是否确认启动");
            $("#pan").fadeIn(600);
            $("#closeBox").fadeIn(600);
        }

//      点击瞬间遮光板淡出,详情图片淡出

    });
    $(".canclebtn").click(function(){
//  	获取当前点击的图片下标
//      点击瞬间遮光板淡出,详情图片淡出
        $("#pan").fadeOut(600);
        $("#modiTable").fadeOut(600);
        $("#closeBox").fadeOut(600);
    });
})




function SearchDetailAjax(qNum){
    $.ajax({
        url: 'servlet/doAjaxQuestion',//地址
        type: 'post',
        data: {"qNum": qNum},
        async:false,
        success: function (data) {

        }
    })
    $("#ConditionDetail h1").html(qNum);
}


$(function(){
    $("#pan").click(function(){
//  	获取当前点击的图片下标
//      点击瞬间遮光板淡出,详情图片淡出
        $("#pan").fadeOut(600);
        $("#ConditionDetail").fadeOut(600);
        $("#modiTable").fadeOut(600);
        $("#confirmBox").fadeOut(600);
        $("#closeBox").fadeOut(600);
        $("#showTable").fadeOut(600);
    });
})