<%--
  Created by IntelliJ IDEA.
  User: fuxin
  Date: 2018/7/16
  Time: 16:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录页面</title>
    <link rel="stylesheet" type="text/css" href="../css/cssReset.css">
    <link rel="stylesheet" type="text/css" href="../css/index.css">
</head>
<body>
<body>
<div class="login">
    <div class="login_head">
        <div class="login_head_logo"></div>
        <div class="login_head_font">安全开发自动化平台</div>
    </div>
    <div class="login_content">
        <form class="" action="/isLogin.do" method="post">
            <table align="center">
                <tr>
                    <td><input class="login_content_first" type="text" name="username"></td>
                </tr>
                <tr>
                    <td><input class="login_content_first" type="password" name="password"></td>
                </tr>
                <tr>
                    <td><input class="login_content_second" type="submit" name="" value="登录"></td>
                </tr>
            </table>
        </form>
    </div>
    <div class="bottom"></div>
</div>
</body>
</body>
</html>
