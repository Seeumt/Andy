<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login</title>


    <script>
        window.onload = function(){
            document.getElementById("img").onclick = function(){
                this.src="/Andy/checkCodeServlet?time="+new Date().getTime();
            }
        }
    </script>
<%--    <style>--%>
<%--        div{--%>
<%--            color: red;--%>
<%--        }--%>

<%--    </style>--%>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
        <title>登录页面</title>

        <!-- Bootstrap -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
        <script src="js/jquery-3.2.1.min.js"></script>
        <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
        <script src="js/bootstrap.min.js"></script>

        <style>
            body{
                height:100%;
                text-align: center;
                width: 100%;
                padding-top: 150px;
                float: right;
                background-image: url("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1561300226852&di=3db91a75d7ce7cb3df780fc51feaa0ab&imgtype=0&src=http%3A%2F%2Fali3.rabbitpre.com%2Fc1437ef5-2993-4622-beda-d8c95752db76.jpg");
                background-repeat: repeat;
                background-size: 100% 100%;
            }
            input{
                text-align: center;
            }
            #whole{
                text-align: center;
                vertical-align:bottom;
            }
            #username,#password,#checkCode{
                margin:0 auto;
            }

        </style>

</head>
<body>

<form action="/Andy/loginServlet" method="post">
    <div class="container" class="row" >
        <h3>登录</h3>
        <div id="whole">
            <tr>&nbsp</tr>
        </div>
        <div  class="form-group">
            <label for="username"></label>
            <input type="text" class="form-control" id="username" style="width: 250px" placeholder="用户名">
        </div>
        <div class="form-group">
            <label for="password"></label>
            <input type="password" class="form-control" id="password" style="width: 250px" placeholder="密码">
        </div>
        <div class="form-group">
            <label for="checkCode"></label>
            <input type="text" name="checkCode" class="form-control" id="checkCode" style="width: 250px" placeholder="验证码">
        </div>
        <div>
            <img id="img" src="/Andy/checkCodeServlet" width="100" height="80">
        </div>
        <div>
            <tr>&nbsp</tr>
        </div>
        <div>
            <button type="submit" class="btn btn-default btn-lg">登录</button>
        </div>
        <div>
            <tr>&nbsp</tr>
        </div>
    </div>



</form>


<%--<div><%=request.getAttribute("cc_error") == null ? "" : request.getSession().getAttribute("cc_error")%></div>--%>
<%--    <div><%=request.getAttribute("login_error") == null ? "" : request.getSession().getAttribute("login_error") %></div>--%>

</body>
</html>
