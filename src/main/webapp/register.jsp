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
        <jsp:param name="position" value="3"/>
    </jsp:include>
</header>
<main>
    <div class="mdui-container">
        <div class="mdui-row">
            <div class="mdui-col-offset-xs-3 mdui-col-xs-6">
                <div class="mdui-container">
                    <div class="mdui-row">
                        <div class="mdui-typo mdui-text-center">
                            <h4>用户注册</h4>
                        </div>
                    </div>
                    <div class="mdui-row">
                        <div class="mdui-textfield">
                            <label class="mdui-textfield-label">用户名</label>
                            <input class="mdui-textfield-input" name="name" id="name" type="text"/>
                            <div class="mdui-textfield-error">用户名不能为空</div>
                            <div class="mdui-textfield-helper">用于论坛内显示的用户名</div>
                        </div>
                    </div>
                    <div class="mdui-row">
                        <div class="mdui-textfield">
                            <label class="mdui-textfield-label">帐号</label>
                            <input class="mdui-textfield-input" name="account" id="account" type="text"/>
                            <div class="mdui-textfield-error">帐号长度必须大于6个字符</div>
                            <div class="mdui-textfield-helper">用于登陆的帐号</div>
                        </div>
                    </div>
                    <div class="mdui-row">
                        <div class="mdui-textfield">
                            <label class="mdui-textfield-label">密码</label>
                            <input class="mdui-textfield-input" name="password" id="password" type="password"/>
                            <div class="mdui-textfield-error">密码长度必须大于6个字符</div>
                            <div class="mdui-textfield-helper">登陆密码</div>
                        </div>
                    </div>
                    <div class="mdui-row">
                        <div class="mdui-textfield mdui-textfield-has-bottom">
                            <label class="mdui-textfield-label">密码</label>
                            <input class="mdui-textfield-input" name="repeatPassword" id="repeatPassword"
                                   type="password"/>
                            <div class="mdui-textfield-error">密码与上次输入不一致</div>
                            <div class="mdui-textfield-helper">再次输入密码</div>
                        </div>
                    </div>
                    <div class="mdui-row">
                        <input id="submit" type="submit" value="注册"
                               class="mdui-btn mdui-btn-block mdui-color-indigo-accent">
                    </div>
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

        function checkName(obj) {
            let father = obj.parent()
            let name = String(obj.val())
            if (name.length === 0) {
                father.addClass('mdui-textfield-invalid')
                return false
            }
            father.removeClass('mdui-textfield-invalid')
            return true
        }

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

        function checkFirstPassword(obj) {
            let father = obj.parent()
            let password = String(obj.val())
            if (password.length <= 6) {
                father.addClass('mdui-textfield-invalid')
                return false
            }
            father.removeClass('mdui-textfield-invalid')
            return true
        }

        function checkSecondPassword(obj) {
            let father = obj.parent()
            let next = obj.next()
            let password = String(obj.val())
            if (password.length <= 6) {
                next.text("密码长度必须大于6个字符")
                father.addClass('mdui-textfield-invalid')
                return false
            }
            let firstPassword = String($('#password').val())
            if (firstPassword !== password) {
                next.text("密码与上次输入不一致")
                father.addClass('mdui-textfield-invalid')
                return false
            }
            father.removeClass('mdui-textfield-invalid')
            return true
        }

        $('#name').on('change', function (e) {
            checkName($(this))
        })

        $('#account').on('change', function (e) {
            checkAccount($(this))
        })

        $('#password').on('change', function (e) {
            checkFirstPassword($(this))
        })

        $('#repeatPassword').on('change', function (e) {
            checkSecondPassword($(this))
        })

        $('#submit').on('click', function (e) {
            if (checkName($('#name')) & checkAccount($('#account')) & checkFirstPassword($('#password')) & checkSecondPassword($('#repeatPassword'))) {
                alert("通过检测")
            } else {
                alert("未通过检测，请查看错误信息")
            }
        })
    </script>
</footer>
</body>

</html>