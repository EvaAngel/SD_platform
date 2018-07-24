<%@ page import="java.util.List" %><%--
Created by IntelliJ IDEA.
User: fuxin
Date: 2018/7/16
Time: 16:26
To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>部门管理</title>
    <link href="../css/location.css" rel="stylesheet">
    <link href="../css/ConditionView/webChart.css" rel="stylesheet">

</head>
<body>
<div class="box">
    <div class="locational">
        <p class="locationalName">项目列表</p>
    </div>
    <div class="fifth_content">
        <c:forEach items="${jenkinsList}" var="jenkins">
            <div class="fifth_content_tr">jenkinsListId:<c:out value="${jenkins.resp}"/></div>
        </c:forEach>
    </div>
</div>
</body>
</html>