<%--
  Created by IntelliJ IDEA.
  User: amtoaer
  Date: 10/27/20
  Time: 12:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="org.reat.forum.struct.Post"
         import="java.util.List" %>
<%
    List<Post> list = (List<Post>) request.getAttribute("list");
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%for (Post item : list) {%>
<%=item.getPid()%>
<%=item.getPtitle()%>
<%=item.getPdate()%>
<%=item.getPcomment()%>
<%}%>
</body>
</html>
