<%--
  Created by IntelliJ IDEA.
  User: amtoaer
  Date: 10/25/20
  Time: 11:41 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String pos = request.getParameter("position");
%>
<div class="mdui-drawer">
    <div class="mdui-list">
        <a href="./index.jsp"
           class="mdui-list-item mdui-ripple <% if (pos.equals("1")){%>mdui-list-item-active<%}%>">
            <i class="mdui-list-item-icon mdui-icon material-icons mdui-text-color-blue">home</i>
            <div class="mdui-list-item-content">欢迎</div>
        </a>
        <a href="./login.jsp"
           class="mdui-list-item mdui-ripple <% if (pos.equals("2")){%>mdui-list-item-active<%}%>">
            <i class="mdui-list-item-icon mdui-icon material-icons mdui-text-color-teal-500">account_box</i>
            <div class="mdui-list-item-content">登录</div>
        </a>
        <a href="./register.jsp"
           class="mdui-list-item mdui-ripple <% if (pos.equals("3")){%>mdui-list-item-active<%}%>">
            <i class="mdui-list-item-icon mdui-icon material-icons mdui-text-color-orange-500">assignment_ind</i>
            <div class="mdui-list-item-content">注册</div>
        </a>
        <a href="./about.jsp"
           class="mdui-list-item mdui-ripple <% if (pos.equals("4")){%>mdui-list-item-active<%}%>">
            <i class="mdui-list-item-icon mdui-icon material-icons mdui-text-color-red-a100">description</i>
            <div class="mdui-list-item-content">关于</div>
        </a>
    </div>

