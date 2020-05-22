<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/5/18
  Time: 14:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>登录</title>
    <script type="text/javascript" src="../../js/jquery-1.11.0.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $("#btn").on("click",function () {
                var show='';
                var flag=true;//判断能否提交

                var name=$("#name").val();
                var pwd=$("#pwd").val();
                if (name==''||name==undefined) {
                    show='账号不能为空';
                    flag=false;
                } else if (pwd==''||pwd==undefined) {
                    show='密码不能为空';
                    flag=false;
                }

                if (show==''&&flag==true) {
                    $("#f").submit();
                } else {
                    alert(show);
                    return;
                }
            });
        });
    </script>
</head>
<body>
<h1>登录</h1>
<p style="color: red;">${errorMsg}</p>
<form:form method="post" action="/doLogin" modelAttribute="user" id="f">
    账号：<form:input path="uName" id="name"/><br>
    密码：<form:password path="password" id="pwd"/><br>
    <input value="登录" type="button" id="btn">
</form:form>
</body>
</html>
