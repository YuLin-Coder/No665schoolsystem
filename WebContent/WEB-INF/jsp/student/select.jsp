<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    <title>在线选课</title>
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
                    <a href="${ctx}/student/index"><i class="menu-icon fa fa-calendar"></i>我的课表</a>
                </li>
                <li class="active">
                    <a href="${ctx}/student/select"> <i class="menu-icon fa fa-clipboard"></i>在线选课</a>
                </li>
                <li>
                    <a href="${ctx}/student/profile"> <i class="menu-icon fa fa-user-md"></i>个人信息</a>
                </li>
                <li>
                    <a href="${ctx}/student/evaluate"> <i class="menu-icon fa fa-user-md"></i>教学评估</a>
                </li>
                <li>
                    <a href="${ctx}/student/score"> <i class="menu-icon fa fa-user-md"></i>我的成绩</a>
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
        <div class="animated fadeIn">
            <div class="clearfix"></div>
            <div class="orders">
                <div class="row">
                    <div class="col-xl-8">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="box-title">选修课程</h4>
                            </div>
                            <div class="card-body--">
                                <div class="table-stats order-table ov-h">
                                    <table class="table ">
                                        <thead>
                                        <tr>
                                            <th class="serial">#</th>
                                            <th>课程名</th>
                                            <th>星期</th>
                                            <th>课时</th>
                                            <th>讲师</th>
                                            <th>地点</th>
                                            <th></th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${courses}" var="course" varStatus="statu">
                                            <tr>
                                                <td class="serial">${statu.index + 1}</td>
                                                <td>${course.courseName}</td>
                                                <td>
                                                    <span>
                                                        星期
                                                        <c:if test="${course.courseWeekday == 1}">一</c:if>
                                                        <c:if test="${course.courseWeekday == 2}">二</c:if>
                                                        <c:if test="${course.courseWeekday == 3}">三</c:if>
                                                        <c:if test="${course.courseWeekday == 4}">四</c:if>
                                                        <c:if test="${course.courseWeekday == 5}">五</c:if>
                                                        <c:if test="${course.courseWeekday == 6}">六</c:if>
                                                        <c:if test="${course.courseWeekday == 7}">日</c:if>
                                                    </span>
                                                </td>
                                                <td>
                                                    <span>
                                                        第
                                                        <c:if test="${course.courseTime == 1}">一</c:if>
                                                        <c:if test="${course.courseTime == 2}">二</c:if>
                                                        <c:if test="${course.courseTime == 3}">三</c:if>
                                                        <c:if test="${course.courseTime == 4}">四</c:if>
                                                        <c:if test="${course.courseTime == 5}">五</c:if>
                                                        节
                                                    </span>
                                                </td>
                                                <td><span class="name">${course.courseTeacherName}</span>
                                                </td>
                                                <td><span>${course.coursePlace}</span></td>
                                                <td style="text-align: left;">
                                                    <button onclick="window.location.href='${ctx}/course/select?id=${course.id}'"
                                                            type="button" class="btn btn-info btn-sm btn-block"
                                                            style="width: auto; margin: 0;">
                                                        选课
                                                    </button>
                                                    <button onclick="window.location.href='${ctx}/course/unSelect?id=${course.id}'"
                                                            type="button" class="btn btn-danger btn-sm btn-block"
                                                            style="width: auto; margin: 0;">
                                                        退课
                                                    </button>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                    </table>
                                </div> <!-- /.table-stats -->
                            </div>
                        </div> <!-- /.card -->
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="${ctx}/resource/admin/assets/js/vendor/jquery-2.1.4.min.js"></script>
<script src="${ctx}/resource/admin/assets/js/popper.min.js"></script>
<script src="${ctx}/resource/admin/assets/js/plugins.js"></script>
<script src="${ctx}/resource/admin/assets/js/main.js"></script>
</body>
</html>
