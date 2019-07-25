<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>登录页面</title>

    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>


    <style>
        body{
            background:radial-gradient(ellipse at center,#2d9b95 0%,#0e1329 100%);
            height:100%;
            text-align: center;
            width: 100%;
            padding-top: 150px;
            float: right;
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

<form action="/Andy/loginServlet" method="post" >

    <div class="container" class="row">
        <h3 style="color: #ffffff;">登录</h3>
        <div>
            <tr>&nbsp</tr>
        </div>
        <div class="form-group">
            <label for="username"></label>
            <input type="text" class="form-control" id="username" style="width: 250px" placeholder="用户名" name="username">
        </div>
        <div class="form-group">
            <label for="password"></label>
            <input type="password" class="form-control" id="password" style="width: 250px" placeholder="密码" name="password">
        </div>
        <div class="form-group">
            <label for="checkCode"></label>
            <input type="text" name="checkCode" class="form-control" id="checkCode" style="width: 250px"
                   placeholder="验证码">
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



<div><%=request.getAttribute("cc_error") == null ? "" : request.getAttribute("cc_error")%></div>
    <div><%=request.getAttribute("login_error") == null ? "" : request.getAttribute("login_error") %></div>

</body>
<script>
    window.onload = function(){
        document.getElementById("img").onclick = function(){
            this.src="/Andy/checkCodeServlet?time="+new Date().getTime();
        }
    }


</script>
</html>
