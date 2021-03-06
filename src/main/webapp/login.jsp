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
        <jsp:param name="position" value="2"/>
    </jsp:include>
</header>
<main>
    <div class="mdui-container">
        <div class="mdui-row">
            <div class="mdui-col-offset-xs-3 mdui-col-xs-6">
                <div class="mdui-container">
                    <div class="mdui-row">
                        <div class="mdui-typo mdui-text-center">
                            <h4>用户登录</h4>
                        </div>
                    </div>
                    <form action="<%=request.getContextPath()%>/loginservlet" method="post">
                        <div class="mdui-row">
                            <div class="mdui-textfield mdui-textfield-floating-label">
                                <label class="mdui-textfield-label">帐号</label>
                                <input class="mdui-textfield-input mdui-textfield-invalid" id="account" name="account" type="text"/>
                                <div class="mdui-textfield-error">帐号长度必须大于6个字符</div>
                            </div>
                        </div>
                        <div class="mdui-row">
                            <div class="mdui-textfield mdui-textfield-floating-label mdui-textfield-has-bottom">
                                <label class="mdui-textfield-label">密码</label>
                                <input class="mdui-textfield-input" id="password" name="password" type="password"/>
                                <div class="mdui-textfield-error">密码长度必须大于6个字符</div>
                            </div>
                        </div>
                        <div class="mdui-row">
                            <input id="submit" type="submit" value="登录" onclick="return check()"
                                   class="mdui-btn mdui-btn-block mdui-color-indigo-accent">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</main>
<footer>
    <!-- MDUI JavaScript -->
    <script src="./js/mdui.min.js"></script>
    <script>
        let $ = mdui.$

        function checkAccount(obj) {
            let father = obj.parent()
            let account = String(obj.val())
            if (account.length <= 6) {
                father.addClass('mdui-textfield-invalid')
                return false
            }
            father.removeClass('mdui-textfield-invalid')
            return true
        }

        function checkPassword(obj) {
            let father = obj.parent()
            let password = String(obj.val())
            if (password.length <= 6) {
                father.addClass('mdui-textfield-invalid')
                return false
            }
            father.removeClass('mdui-textfield-invalid')
            return true
        }

        function check() {
            // 直接进行&&会短路，因此分开写
            let ac = checkAccount($('#account'))
            let pa = checkPassword($('#password'))
            return ac && pa
        }

        $('#account').on('change', function (e) {
            checkAccount($(this))
        })

        $('#password').on('change', function (e) {
            checkPassword($(this))
        })
    </script>
</footer>
</body>

</html>