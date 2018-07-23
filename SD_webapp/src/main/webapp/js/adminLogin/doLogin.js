$(function(){
    $(document).keydown(function(event){
        if(event.keyCode==13){
            $("#submit_button").click();
        }
    });
})


function dologin() {
    var username = $("#username").val();
    var password = $("#password").val();

    // if(username == "" && username == null && password == "" && password == null){
    //     alert("用户名密码不能为空");
    // }else if(password.length != 6){
    //     alert("请输入6位密码！");
    // }
    $.ajax({
        url: '../servlet/admin/adminDoLogin',//地址
        type: 'post',
        data: {"username": username,"password":password},
        success: function (data) {
            if(data.loginFlag == "true"){
                window.location.href='../admin/Manager.jsp';
            }else {
                alert("用户名或密码错误！");
            }

        }

    });
}