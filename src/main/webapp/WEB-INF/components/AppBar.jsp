<%--
  Created by IntelliJ IDEA.
  User: amtoaer
  Date: 10/25/20
  Time: 11:08 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="org.reat.forum.struct.User" %>
<%
    // 通过判断能否取到session中的值判断是否登陆
    boolean isLogin = (User) session.getAttribute("user") != null;
    User user = (User) session.getAttribute("user");
    String userImg = isLogin ? user.getUavatar() : "data:image/png;base64,/9j/4AAQSkZJRgABAQAAAQABAAD//gA7Q1JFQVRPUjogZ2QtanBlZyB2MS4wICh1c2luZyBJSkcgSlBFRyB2NjIpLCBxdWFsaXR5ID0gOTAK/9sAQwADAgIDAgIDAwMDBAMDBAUIBQUEBAUKBwcGCAwKDAwLCgsLDQ4SEA0OEQ4LCxAWEBETFBUVFQwPFxgWFBgSFBUU/9sAQwEDBAQFBAUJBQUJFA0LDRQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQU/8AAEQgAKAAoAwEiAAIRAQMRAf/EAB8AAAEFAQEBAQEBAAAAAAAAAAABAgMEBQYHCAkKC//EALUQAAIBAwMCBAMFBQQEAAABfQECAwAEEQUSITFBBhNRYQcicRQygZGhCCNCscEVUtHwJDNicoIJChYXGBkaJSYnKCkqNDU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6g4SFhoeIiYqSk5SVlpeYmZqio6Slpqeoqaqys7S1tre4ubrCw8TFxsfIycrS09TV1tfY2drh4uPk5ebn6Onq8fLz9PX29/j5+v/EAB8BAAMBAQEBAQEBAQEAAAAAAAABAgMEBQYHCAkKC//EALURAAIBAgQEAwQHBQQEAAECdwABAgMRBAUhMQYSQVEHYXETIjKBCBRCkaGxwQkjM1LwFWJy0QoWJDThJfEXGBkaJicoKSo1Njc4OTpDREVGR0hJSlNUVVZXWFlaY2RlZmdoaWpzdHV2d3h5eoKDhIWGh4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uLj5OXm5+jp6vLz9PX29/j5+v/aAAwDAQACEQMRAD8A+t6KPxr0D4VeF7fVJrjUbtFmjgYJFGwyu/GSSPYY/OgDhvsFz5PnfZ5vJ6+ZsO386gr6awMY7V5N8VvC9vpklvqVoiwpO5jlRRhd+MggdsgHP0oA8+oo/GigA/CvR/hJ4hgtHudLndYmmcSQljgM2MFfrwMfjXnKIZHVEBZmOAo5JNez+DPh7aaHbR3N7EtxqLDcd4ysXsB6+/5UAdnz6V5Z8XPEMF19n0qB1laF/NmKnIVsEBfryc/hXqXHvXG+NPh7aa5bSXNlEtvqKgsNgwsvsR6+/wCdAHi/4UUroY3ZHBVlOCp4IPpRQB1Xwy05dR8WW5cBlt1afHuOB+RIP4V7hz60UUAHPrRz60UUAeH/ABN05dO8WXBQBUuEWfHucg/qCfxooooA/9k=";
    String userName = isLogin ? user.getUname() : "未登录";
%>
<div class="mdui-appbar mdui-appbar-fixed">
    <div class="mdui-toolbar mdui-color-theme">
        <a href="#" class="mdui-btn mdui-btn-icon" mdui-drawer="{target: '.mdui-drawer'}"><i
                class="mdui-icon material-icons">menu</i></a>
        <span class="mdui-typo-title">demo</span>
        <div class="mdui-toolbar-spacer"></div>
        <img src="<%=userImg%>" class="mdui-chip-icon" mdui-tooltip="{content:'<%=userName%>'}">
        <a href="javascript:;" class="mdui-btn mdui-btn-icon" mdui-menu="{target: '#dropbar'}"><i
                class="mdui-icon material-icons">more_vert</i></a>
        <ul class="mdui-menu mdui-menu-cascade" id="dropbar">
            <%if (isLogin) {%>
            <li class="mdui-menu-item">
                <a href="javascript:;">用户信息</a>
            </li>
            <%} else {%>
            <li class="mdui-menu-item" disabled>
                <a href="javascript:;">未登录</a>
            </li>
            <%}%>
        </ul>
    </div>
</div>