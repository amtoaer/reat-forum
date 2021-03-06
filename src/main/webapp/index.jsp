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
        <jsp:param name="position" value="1"/>
    </jsp:include>
</header>
<main>
    <div class="mdui-container">
        <div class="mdui-typo">
            <h3>欢迎访问</h3>
            <p>该网站是一个论坛系统demo。整体使用div进行组织，通过<a href="https://www.mdui.org">MDUI</a>提供的各种<code>css</code>类进行美化和布局。</p>
            <p>目前网站还不完善，只有欢迎、登录、注册和关于页面，可通过点击侧边栏的列表元素进行页面跳转，后端暂未进行开发。</p>
            <p>其中欢迎与关于页面主要由<code>html</code>标签构成，用于展示一些说明信息。</p>
            <p>登陆、注册界面包含一个表单，通过<code>JavaScript</code>进行简单的合理性验证，合理性验证通过后才允许与后端交互。</p>
            <p>
                <mark>因当前还未实现后端，暂且使用<code>alert</code>测试验证是否通过。</mark>
            </p>
        </div>
    </div>
</main>
<footer>
    <!-- MDUI JavaScript -->
    <script src="./js/mdui.min.js"></script>
</footer>
</body>

</html>