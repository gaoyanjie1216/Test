<%@ page language="java" import="com.gyj.Session.Entity.User" pageEncoding="UTF-8" %>
<%@ page import="java.util.ArrayList" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>My JSP 'index.jsp' starting page</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->
</head>

<body>
当前在线用户人数:${userNumber }<br/>
<%
    ArrayList<User> userList = (ArrayList<User>) request.getServletContext().getAttribute("userList");
    if (userList != null) {
        for (int i = 0; i < userList.size(); i++) {
            User user = (User) userList.get(i);
%>
IP:<%=user.getIp() %>,FirstTime:<%=user.getFirstTime() %>,SessionId:<%=user.getSessionId() %> <br/>
<%
        }
    }
%>
</body>
</html>
