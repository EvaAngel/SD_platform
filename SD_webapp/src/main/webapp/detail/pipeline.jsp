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
    <title>Title</title>
    <link href="../css/index.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="../css/cssReset.css">
    <link rel="stylesheet" type="text/css" href="../css/common.css">
    <link href="../css/location.css" rel="stylesheet">
    <link href="../css/ConditionView/webChart.css" rel="stylesheet">
</head>
<body>
<form class="vote" action="/jenkins.do" method="post">
    <div class="box">
        <div class="locational">
            <p class="locationalName">代码构建配置</p>
        </div>
        <div class="code" >
            <div class="pipeline_structure_name">
                代码URL
            </div>
            <div class="pipeline_structure_content">

                <div class="pipeline_structure_content_1">
                    <div class="pipeline_structure_content_1_l fl">
                        定时查询
                    </div>
                    <div class="pipeline_structure_content_1_l fl">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <select name="timequery">
                            <option value="0">5分钟</option>
                            <option value="1">10分钟</option>
                        </select>
                    </div>
                </div>

                <div class="pipeline_structure_content_2">
                    <div class="pipeline_structure_content_2_l fl">
                        代码获取方式
                    </div>
                    <div class="pipeline_structure_content_2_l fl">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <select name="clonestyle">
                            <option value="0">SVN</option>
                            <option value="1">Git</option>
                        </select>
                    </div>
                </div>

                <div class="pipeline_structure_content_3">
                    <div class="pipeline_structure_content_3_l fl">
                        是否进行动态扫描，若选择否，则仅生成war包
                    </div>
                    <div class="pipeline_structure_content_3_l fl">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <select name="dynscan">
                            <option value="1">是</option>
                            <option value="0">否</option>
                        </select>
                    </div>
                </div>

            </div>
        </div>

        <hr>
        <div class="check">
            <div class="pipeline_structure_name">
                安全配置
            </div>
            <div class="pipeline_structure_content">

                <div class="pipeline_structure_content_4">
                    <div class="pipeline_structure_content_4_l fl">
                        静态扫描规则
                    </div>
                    <div class="pipeline_structure_content_4_r fl">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <select name="stascan">
                            <option value="1">Findbugs</option>
                            <option value="2">Sonar默认规则</option>
                            <option value="3">无</option>
                        </select>
                    </div>
                </div>

                <div class="pipeline_structure_content_5">
                    <div class="pipeline_structure_content_5_l fl">
                        是否检查依赖安全（OWASP dependency check)
                    </div>
                    <div class="pipeline_tructure_content_5_r fl">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <select name="relysecurity">
                            <option value="1">是</option>
                            <option value="2">否</option>
                        </select>
                    </div>
                </div>

            </div>    
        </div>

        <hr>
        <div class="nsfocus">
            <div class="pipeline_structure_name">
                扫描器
            </div>
            <div class="pipeline_structure_content">
                <div class="pipeline_structure_content_6">
                    <div class="pipeline_structure_content_6_l fl">
                        扫描器设置
                    </div>
                    <div class="pipeline_structure_content_6_r fl">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <select name="rsas">
                            <option value="0">无</option>
                            <option value="1">RSAS</option>
                            <option value="2">BVS</option>
                            <option value="3">Both</option>
                        </select>
                    </div>
                </div>
            </div> 
        </div>

        <hr>
        <div class="connect">
            <div class="pipeline_structure_name">
                远程登录
            </div>
            <div class="pipeline_structure_content">
                <div class="pipeline_structure_content_7">
                    <div class="pipeline_structure_content_7_l fl">
                        IP地址
                    </div>
                    <div class="second_structure_content_7_r fl">
                        <input type="text" class="setting-input" value="">
                    </div> 
                </div>

                <div class="pipeline_structure_content_8">
                    <div class="pipeline_structure_content_8_l fl">
                        认证方式
                    </div>
                    <div class="second_structure_content_8_r fl">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <select>
                            <option value="0">SSH</option>
                        </select>
                    </div> 
                </div>

            </div>
        </div>

        
        <button type="submit" value="Submit" class="buttontext_button2">提交</button>
        <button type="reset" value="Reset" class="buttontext_button3">取消</button>

        <!-- <div class="footer">
        <br>
        <div class="buttontext">
        <div class="buttontext_button2"><a href="admin_fifth.jsp">提交</a></div>
        <div class="buttontext_button3"><a href="admin_first.jsp">取消</a></div>
        </div>
        </div> -->
     </div>
</form>
</body>
</html>