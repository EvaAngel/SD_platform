<%--
Created by IntelliJ IDEA.
User: fuxin
Date: 2018/7/16
Time: 16:26
To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>部门管理</title>
    <link href="../css/location.css" rel="stylesheet">
    <link href="../css/ConditionView/webChart.css" rel="stylesheet">
    <script type="text/javascript">
        function chart1(obj)
        {
          obj.style.backgroundColor = "Highlight";
        }
    </script>
</head>
<body>
<div class="box">

    <div class="locational">
        <p class="locationalName">新建项目</p>
    </div>
    
    <div class="Show">
      <div class="box_projectname">
        <span class="box_projectname_l">项目名称</span>
        <span><input class="box_projectname_r" type="text" name="project_name"></span>
    </div>
        <div id="chartBackground">

            <div id="chart1" onclick="chart1(this)">
               <div class="chart1_l">
                   
               </div>
               <div class="chart1_r">
                   <div class="chart1_r_t">
                       构建一个Java的软件项目
                   </div>
                   <div class="chart1_r_b">
                       基于Maven/Grdadle来构建你的Java体系风格的项目
                   </div>
               </div>
            </div>
            <div id="chart2">
              <div class="chart2_l">
                   
               </div>
               <div class="chart2_r" onclick="chart1(this)">
                   <div class="chart2_r_t">
                       构建一个Pipeline的软件项目
                   </div>
                   <div class="chart2_r_b">
                       基于流水线体系来构建你的项目
                   </div>
               </div>
            </div>
            <div id="chart3">
                 <div class="chart3_l">
                   
               </div>
               <div class="chart3_r">
                   <div class="chart3_r_t">
                       构建一个Php的软件项目
                   </div>
                   <div class="chart3_r_b">
                       基于Php来构建你的项目
                   </div>
               </div> 
            </div>
            <br>
            <div id="chart4">
                <div class="chart4_l">
                   
               </div>
               <div class="chart4_r">
                   <div class="chart4_r_t">
                       构建一个Python的软件项目
                   </div>
                   <div class="chart4_r_b">
                       基于Python2来构建你的项目
                   </div>
               </div> 
            </div>
            <div id="chart5">
                <div class="chart5_l">
                   
               </div>
               <div class="chart5_r">
                   <div class="chart5_r_t">
                       构建一个Golang的软件项目
                   </div>
                   <div class="chart5_r_b">
                       基于Golang来构建你的项目
                   </div>
               </div> 
            </div>
            <div id="chart6">
                <div class="chart6_l">
                   
               </div>
               <div class="chart6_r">
                   <div class="chart6_r_t">
                       构建一个Packer的软件项目
                   </div>
                   <div class="chart6_r_b">
                       使用Packer来创建包含你的应用的ECS镜像
                   </div>
               </div> 
            </div>
            <br>
            <div id="chart7">
                <div class="chart7_l">
                   
               </div>
               <div class="chart7_r">
                   <div class="chart7_r_t">
                       构建一个自由风格的软件项目
                   </div>
                   <div class="chart7_r_b">
                       本功能将会结合任何SCM和任何构建系统来构建你的项目，甚至可以构建软件以外的系统
                   </div>
               </div> 
            </div>
        </div>
    </div>
<div class="footer">
    <br>
    <div class="buttontext">
    <div class="buttontext_button1"><a>上一步</a></div>
    <div class="buttontext_button2"><a href="pipeline.jsp">下一步</a></div>
    <div class="buttontext_button3"><a href="admin_first.jsp">取消</a></div>
    </div>
</div>
</div>

</body>
</html>