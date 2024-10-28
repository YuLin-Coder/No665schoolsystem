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
					<form action="${ctx}/student/login" method="post">
						<p>学生账户</p>
						<div class="lowin-group">
							<label>学号</label>
							<input type="text" autocomplete="studentNum" name="studentNum" class="lowin-input">
						</div>
						<div class="lowin-group password-group">
							<label>密码</label>
							<input type="password" name="studentPassword" autocomplete="current-password" class="lowin-input">
						</div>
						<button class="lowin-btn login-btn">
							登录
						</button>
						<div class="text-foot">
							<div><a href="${ctx}/teacher/login">我是教师</a></div>
                            <div><a href="${ctx}/admin/login">我是管理员</a></div>
						</div>
					</form>
				</div>
			</div>
		</div>
    </div>

	<script src="${ctx}/resource/login/auth.js"></script>
	<script>
		Auth.init({
			login_url: '${ctx}/student/login',
			forgot_url: '#forgot'
		});
	</script>
</body>
</html>