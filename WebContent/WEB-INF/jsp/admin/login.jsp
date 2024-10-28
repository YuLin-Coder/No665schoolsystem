<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width,initial-scale=1">
	<title>高校教学管理系统</title>
	<link rel="stylesheet" href="${ctx}/resource/login/auth.css">
</head>

<body>
	<div class="lowin">
		<div class="lowin-wrapper">
			<div class="lowin-box lowin-login">
				<div class="lowin-box-inner">
					<h3 style="font-size: 25px;
	    font-weight: bold;
	    text-align: center;
	    color: #43a0b3;
	    letter-spacing: 3px;">高校教学管理系统</h3>
					<form name="form1" action="${ctx}/admin/login" method="post">
						<p>管理员账户</p>
						<div class="lowin-group">
							<label>管理员号</label>
							<input type="text" autocomplete="adminNum" name="adminNum" class="lowin-input">
						</div>
						<div class="lowin-group password-group">
							<label>密码</label>
							<input type="password" name="adminPassword" autocomplete="current-password" class="lowin-input">
						</div>
						<button class="lowin-btn login-btn">
							登录
						</button>
					</form>
				</div>
			</div>
		</div>
    </div>

	<script src="${ctx}/resource/login/auth.js"></script>
	<script>
	function check()
	{
		if(document.form1.adminNum.value==""){alert("请输入账号");document.form1.adminNum.focus();return false;}
		if(document.form1.adminPassword.value==""){alert("请输入密码");document.form1.adminPassword.focus();return false;}
	}
	</script>
	<script>
		Auth.init({
			login_url: '${ctx}/admin/login',
			forgot_url: '#forgot'
		});
	</script>
</body>
</html>