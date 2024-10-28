<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!doctype html>
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]> <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]> <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang=""> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Admin</title>
    <meta name="description" content="Ela Admin - HTML5 Admin Template">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="${ctx}/resource/admin/assets/css/normalize.css">
    <link rel="stylesheet" href="${ctx}/resource/admin/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="${ctx}/resource/admin/assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="${ctx}/resource/admin/assets/css/style.css">
    <link rel="stylesheet" type="text/css" href="${ctx}/resource/calender/css/index.css"/>
    <link rel="stylesheet" href="https://at.alicdn.com/t/font_234130_nem7eskcrkpdgqfr.css">
</head>

<body>
<!-- Left Panel -->
<aside id="left-panel" class="left-panel">
    <nav class="navbar navbar-expand-sm navbar-default">
        <div id="main-menu" class="main-menu collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li>
                    <a href="${ctx}/admin/teacher"><i class="menu-icon fa fa-calendar"></i>教师管理</a>
                </li>
                <li>
                    <a href="${ctx}/admin/student"> <i class="menu-icon fa fa-clipboard"></i>学生管理</a>
                </li>
                <li>
                    <a href="${ctx}/admin/clazz"> <i class="menu-icon fa fa-clipboard"></i>班级管理</a>
                </li>
                <li class="active">
                    <a href="${ctx}/admin/course"> <i class="menu-icon fa fa-clipboard"></i>课程管理</a>
                </li>
                <li>
                    <a href="${ctx}/admin/profile"> <i class="menu-icon fa fa-user-md"></i>个人信息</a>
                </li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </nav>
</aside>
<!-- /#left-panel -->
<!-- Right Panel -->
<div id="right-panel" class="right-panel">
    <!-- Header-->
    <header id="header" class="header">
        <div class="top-left">
            <div class="navbar-header">
                <a class="navbar-brand" href="#" style="color: #43a0b3;font-weight: bold;font-size: 25px;">高校教学管理系统</a>
                <a class="navbar-brand hidden" href="./"><img src="${ctx}/resource/admin/images/logo2.png"
                                                              alt="Logo"></a>
                <a id="menuToggle" class="menutoggle"><i class="fa fa-bars"></i></a>
            </div>
        </div>
        <div class="top-right">
            <div class="header-menu">
                <div class="user-area dropdown float-right">
                    <a href="#" class="dropdown-toggle active" data-toggle="dropdown" aria-haspopup="true"
                       aria-expanded="false">
                        <img class="user-avatar rounded-circle" src="${ctx}/resource/admin/images/admin.jpg"
                             alt="User Avatar">
                    </a>
                    <div class="user-menu dropdown-menu">
                        <a class="nav-link" href="${ctx}/logout"><i class="fa fa-power -off"></i>Logout</a>
                    </div>
                </div>

            </div>
        </div>
    </header>
    <!-- /#header -->
    <!-- Content -->
    <div class="content">
        <!-- Animated -->
        <div class="animated fadeIn">
            <div class="clearfix"></div>
            <div class="row">
                <div class="col-lg-8">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">课程信息</strong>
                        </div>
                        <div class="card-body">
                            <div id="pay-invoice">
                                <div class="card-body" style="width: 500px; margin: auto; float: none;">
                                    <form name="form1" action="${ctx}/course/adminUpdate" method="post" novalidate="novalidate">
                                        <input type="hidden" name="id" value="${course.id}">
                                        <div class="form-group has-success">
                                            <label for="cc-name" class="control-label mb-1">名称</label>
                                            <input id="cc-name" name="courseName" type="text" value="${course.courseName}" class="form-control cc-name valid" data-val="true" data-val-required="" autocomplete="cc-name" aria-required="true" aria-invalid="false" aria-describedby="cc-name">
                                            <span class="help-block field-validation-valid" data-valmsg-for="cc-name" data-valmsg-replace="true"></span>
                                        </div>
                                        <div class="form-group">
                                            <label for="cc-clazz" class="control-label mb-1">教师</label>
                                            <select id="cc-clazz" name="courseTeacherid" type="text" class="form-control cc-number identified visa" data-val="true">
                                                <c:forEach items="${teachers}" var="teacher">
                                                    <option value="${teacher.id}" ${course.courseTeacherid == teacher.id ? "selected" : ""}>${teacher.teacherName}</option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label for="cc-week" class="control-label mb-1">星期</label>
                                            <select id="cc-week" name="courseWeekday" class="form-control cc-number identified visa" data-val="true">
                                                <option value="1" ${course.courseWeekday == 1 ? "selected" : ""}>一</option>
                                                <option value="2" ${course.courseWeekday == 2 ? "selected" : ""}>二</option>
                                                <option value="3" ${course.courseWeekday == 3 ? "selected" : ""}>三</option>
                                                <option value="4" ${course.courseWeekday == 4 ? "selected" : ""}>四</option>
                                                <option value="5" ${course.courseWeekday == 5 ? "selected" : ""}>五</option>
                                                <option value="6" ${course.courseWeekday == 6 ? "selected" : ""}>六</option>
                                                <option value="7" ${course.courseWeekday == 7 ? "selected" : ""}>日</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label for="cc-time" class="control-label mb-1">课时</label>
                                            <select id="cc-time" name="courseTime" class="form-control cc-number identified visa" data-val="true">
                                                <option value="1" ${course.courseTime == 1 ? "selected" : ""}>第一节</option>
                                                <option value="2" ${course.courseTime == 2 ? "selected" : ""}>第二节</option>
                                                <option value="3" ${course.courseTime == 3 ? "selected" : ""}>第三节</option>
                                                <option value="4" ${course.courseTime == 4 ? "selected" : ""}>第四节</option>
                                                <option value="5" ${course.courseTime == 5 ? "selected" : ""}>第五节</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label for="cc-place" class="control-label mb-1">地点</label>
                                            <input id="cc-place" name="coursePlace" type="text" class="form-control cc-number identified visa" value="${course.coursePlace}" data-val="true">
                                            <span class="help-block" data-valmsg-for="cc-major"
                                                  data-valmsg-replace="true"></span>
                                        </div>
                                        <div class="form-group">
                                            <label for="cc-type" class="control-label mb-1">类型</label>
                                            <select id="cc-type" name="courseType" class="form-control cc-number identified visa" data-val="true">
                                                <option value="1" ${course.courseType == 1 ? "selected" : ""}>必修</option>
                                                <option value="2" ${course.courseType == 2 ? "selected" : ""}>选修</option>
                                            </select>
                                        </div>
                                        <div>
                                            <button id="payment-button" type="submit" class="btn btn-lg btn-info btn-block" onclick="return check();">
                                                <i class="fa fa-lock fa-lg"></i>&nbsp;
                                                <span id="payment-button-amount">保存信息</span>
                                            </button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- /.orders -->
</div>

<script src="${ctx}/resource/admin/assets/js/vendor/jquery-2.1.4.min.js"></script>
<script src="${ctx}/resource/admin/assets/js/popper.min.js"></script>
<script src="${ctx}/resource/admin/assets/js/plugins.js"></script>
<script src="${ctx}/resource/admin/assets/js/main.js"></script>
<script>
	function check()
	{
		if(document.form1.courseName.value==""){alert("请输入课程名称");document.form1.courseName.focus();return false;}
		if(document.form1.coursePlace.value==""){alert("请输入地点");document.form1.coursePlace.focus();return false;}
	}
    $(function () {
        if ('${requestScope.error}' != null && '${requestScope.error}' !== '') {
            alert('${requestScope.error}')
        }
    });
</script>
</body>
</html>
