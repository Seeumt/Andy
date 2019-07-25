<%@ page import="domain.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1><%=((User)(request.getSession().getAttribute("user"))).getUsername()%>,你终于来了！！！</h1>
     <img src="https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1561375229&di=3edc5d96864317d355ddfaa11c9a8913&src=http://img5.duitang.com/uploads/item/201604/06/20160406130800_4miua.thumb.700_0.jpeg">


</body>
</html>
