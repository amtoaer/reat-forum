<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="shortcut icon" href="./favicon.ico">
<!doctype html>
<html lang="zh-cmn-Hans">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no"/>
    <meta name="renderer" content="webkit"/>
    <meta name="force-rendering" content="webkit"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>

    <!-- MDUI CSS -->
    <link rel="stylesheet" href="./css/mdui.min.css"/>
    <title>demo</title>
</head>

<body class="mdui-appbar-with-toolbar mdui-drawer-body-left">
<header class="mdui-theme-primary-indigo mdui-theme-accent-pink">
    <jsp:include page="/WEB-INF/components/AppBar.jsp"></jsp:include>
    <jsp:include page="/WEB-INF/components/SideBar.jsp">
        <jsp:param name="position" value="4"/>
    </jsp:include>
</header>
<main>
    <div class="mdui-container">
        <div class="mdui-typo">
            <h3>介绍</h3>
            <p>该网站由<a href="https://github.com/amtoaer">amtoaer</a>（计1802刘文兴）开发，代码托管于<code><a
                    href="https://github.com/amtoaer/reat-forum">GitHub</a></code>。</p>
            <h3>依赖</h3>
            <p>选用<a href="https://www.mdui.org/">MDUI</a>作为前端组件库，使用了其中的文本框、列表、应用栏等组件。</p>
            <h3>兼容性</h3>
            <p>摘自MDUI官网：</p>
            <div class="mdui-table-fluid">
                <table class="mdui-table">
                    <tbody>
                    <tr>
                        <td>Chrome</td>
                        <td rowspan="5" class="mdui-text-color-green mdui-color-green-50"
                            style="font-weight: 500;font-size: 18px;">✔ Last Two Versions
                        </td>
                    </tr>
                    <tr>
                        <td>Firefox</td>
                    </tr>
                    <tr>
                        <td>Safari</td>
                    </tr>
                    <tr>
                        <td>Opera</td>
                    </tr>
                    <tr>
                        <td>Edge</td>
                    </tr>
                    <tr>
                        <td>IE</td>
                        <td class="mdui-text-color-green mdui-color-green-50" style="font-weight: 500;font-size: 18px;">
                            ✔ 11+
                        </td>
                    </tr>
                    <tr>
                        <td>Android Browser</td>
                        <td class="mdui-text-color-green mdui-color-green-50" style="font-weight: 500;font-size: 18px;">
                            ✔ 4.4+
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <h3>参考</h3>
            <ul>
                <li><a href="https://www.mdui.org/docs/">MDUI官方文档</a></li>
                <li><a href="https://www.runoob.com/jquery/jquery-events.html">JQuery事件</a></li>
            </ul>
        </div>
    </div>
</main>
<footer>
    <!-- MDUI JavaScript -->
    <script src="./js/mdui.min.js"></script>
</footer>
</body>

</html>