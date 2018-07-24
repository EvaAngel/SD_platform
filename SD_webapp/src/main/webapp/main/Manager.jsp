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
    <meta charset="UTF-8">
    <title>管理员页面</title>
</head>
<link href="../css/ManagerMain.css" rel="stylesheet">
<link href="../css/menu.css" rel="stylesheet">
<link href="../css/confirmBox.css" rel="stylesheet">
<link href="../css/skipFrom.css" rel="stylesheet">

<body>
<div class="box">
    <!--系统header-->
    <div class="header">
        <p class="systemName"></p>
        <p class="userMenu">
            <label class="rightOp">欢迎:</label>
            <label class="rightOp">&nbsp;用户&nbsp;</label>
            |<label class="rightOp confirmBox"><a href="detail/changePwd.jsp">&nbsp;&nbsp;修改密码</a></label>
            |<label class="rightOp confirmBox"><a href="#">&nbsp;&nbsp;退出登陆</a></label>
        </p>
    </div>
    <div class="content">
        <!--左侧导航栏-->

        <div class="menu">
            <ul>
                <li class="nLi on">
                    <ul class="sub">
                        <li><a href="../detail/welcome.html" target="floater">CodePipeline</a></li>
                        <li><a href="../detail/admin_first.jsp" target="floater">概览</a></li>
                        <li><a href="../detail/admin_fifth.jsp" target="floater">任务历史</a></li>
                        <li><a href="../detail/admin_first.jsp" target="floater">用户证书</a></li>
                        <li><a href="../detail/admin_first.jsp" target="floater">帮助文档</a></li>
                    </ul>
                </li>
            </ul>
        </div>

        <div class="RightShow">
            <iframe name="floater" id="floater" src="../detail/welcome.html" frameborder="no" marginwidth="0" marginheight="0" allowtransparency="yes"></iframe>
        </div>
    </div>
</div>
<!--遮光板-->
<div id="pan"></div>

<div id="confirmBox">
    <p class="conformTitle">是否确认退出</p>
    <p class="confirmContent"><input type="submit" value="确认" onclick="logout();" class="confirmbtn"/><input type="button" value="取消" class="canclebtn"/></p>
</div>

<script type="text/javascript" src="../js/ManagerPage/jquery-2.1.0.js" ></script>
<script type="text/javascript" src="../js/ManagerPage/skipFrom.js" ></script>
<script src="js/adminLogout/doLogout.js" ></script>
</body>
</html>
