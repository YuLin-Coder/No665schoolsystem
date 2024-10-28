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
    <title>我的课程</title>
    <meta name="description" content="Ela Admin - HTML5 Admin Template">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="${ctx}/resource/admin/assets/css/normalize.css">
    <link rel="stylesheet" href="${ctx}/resource/admin/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="${ctx}/resource/admin/assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="${ctx}/resource/admin/assets/css/style.css">
    <link rel="stylesheet" type="text/css" href="${ctx}/resource/coursetable/css/index.css"/>
</head>

<body>
<!-- Left Panel -->
<aside id="left-panel" class="left-panel">
    <nav class="navbar navbar-expand-sm navbar-default">
        <div id="main-menu" class="main-menu collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="active">
                    <a href="${ctx}/student/index"><i class="menu-icon fa fa-calendar"></i>我的课表</a>
                </li>
                <li>
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
                    <div class="col-xl-12">
                        <div class="card">
                            <div class="card-header">
                                <strong class="card-title">课程信息</strong>
                            </div>
                            <div class="card-body">
                                <div id="pay-invoice">
                                    <div class="card-body" style="width: 500px; margin: auto; float: none;">
                                        <form action="${ctx}/course/paper" method="post" enctype="multipart/form-data">
                                            <input type="hidden" name="paperStudentId" value="${sessionScope.id}">
                                            <input type="hidden" name="paperCourseId" value="${course.id}">
                                            <div class="form-group has-success">
                                                <label for="cc-name" class="control-label mb-1">名称</label>
                                                <input id="cc-name" name="courseName" type="text" disabled
                                                       value="${course.courseName}" class="form-control cc-name valid"
                                                       data-val="true" data-val-required="" autocomplete="cc-name"
                                                       aria-required="true" aria-invalid="false"
                                                       aria-describedby="cc-name">
                                                <span class="help-block field-validation-valid"
                                                      data-valmsg-for="cc-name"
                                                      data-valmsg-replace="true"></span>
                                            </div>
                                            <div class="form-group">
                                                <label for="cc-clazz" class="control-label mb-1">教师</label>
                                                <input id="cc-clazz" name="courseName" type="text" disabled
                                                       value="${course.courseTeacherName}"
                                                       class="form-control cc-name valid" data-val="true"
                                                       data-val-required="" autocomplete="cc-name" aria-required="true"
                                                       aria-invalid="false" aria-describedby="cc-name">
                                                <span class="help-block field-validation-valid"
                                                      data-valmsg-for="cc-name"
                                                      data-valmsg-replace="true"></span>
                                            </div>
                                            <div class="form-group">
                                                <label for="cc-week" class="control-label mb-1">星期</label>
                                                <select id="cc-week" name="courseWeekday" disabled
                                                        class="form-control cc-number identified visa" data-val="true">
                                                    <option value="1" ${course.courseWeekday == 1 ? "selected" : ""}>一
                                                    </option>
                                                    <option value="2" ${course.courseWeekday == 2 ? "selected" : ""}>二
                                                    </option>
                                                    <option value="3" ${course.courseWeekday == 3 ? "selected" : ""}>三
                                                    </option>
                                                    <option value="4" ${course.courseWeekday == 4 ? "selected" : ""}>四
                                                    </option>
                                                    <option value="5" ${course.courseWeekday == 5 ? "selected" : ""}>五
                                                    </option>
                                                    <option value="6" ${course.courseWeekday == 6 ? "selected" : ""}>六
                                                    </option>
                                                    <option value="7" ${course.courseWeekday == 7 ? "selected" : ""}>日
                                                    </option>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label for="cc-time" class="control-label mb-1">课时</label>
                                                <select id="cc-time" name="courseTime" disabled
                                                        class="form-control cc-number identified visa" data-val="true">
                                                    <option value="1" ${course.courseTime == 1 ? "selected" : ""}>第一节
                                                    </option>
                                                    <option value="2" ${course.courseTime == 2 ? "selected" : ""}>第二节
                                                    </option>
                                                    <option value="3" ${course.courseTime == 3 ? "selected" : ""}>第三节
                                                    </option>
                                                    <option value="4" ${course.courseTime == 4 ? "selected" : ""}>第四节
                                                    </option>
                                                    <option value="5" ${course.courseTime == 5 ? "selected" : ""}>第五节
                                                    </option>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label for="cc-place" class="control-label mb-1">地点</label>
                                                <input id="cc-place" name="coursePlace" disabled type="text"
                                                       class="form-control cc-number identified visa"
                                                       value="${course.coursePlace}" data-val="true">
                                                <span class="help-block" data-valmsg-for="cc-major"
                                                      data-valmsg-replace="true"></span>
                                            </div>
                                            <div class="form-group">
                                                <label for="cc-type" disabled class="control-label mb-1">类型</label>
                                                <select id="cc-type" name="courseType" disabled
                                                        class="form-control cc-number identified visa" data-val="true">
                                                    <option value="1" ${course.courseType == 1 ? "selected" : ""}>必修
                                                    </option>
                                                    <option value="2" ${course.courseType == 2 ? "selected" : ""}>选修
                                                    </option>
                                                </select>
                                            </div>
                                         <%--    <c:if test="${score != null}">
                                                <div class="form-group">
                                                    <label for="cc-score" disabled
                                                           class="control-label mb-1">我的成绩</label>
                                                    <input id="cc-score" name="coursePlace" disabled type="text"
                                                           class="form-control cc-number identified visa"
                                                           value="${course.coursePlace}" data-val="true">
                                                    <span class="help-block" data-valmsg-for="cc-major"
                                                          data-valmsg-replace="true"></span>
                                                </div>
                                            </c:if> --%>
                                            <c:if test="${paper == null}">
                                                <div class="form-group">
                                                    <label for="cc-file" disabled
                                                           class="control-label mb-1">课程论文</label>
                                                    <input type="file" name="file" id="cc-file"
                                                           class="form-control cc-number identified visa">
                                                </div>
                                                <div>
                                                    <button id="payment-button" type="submit"
                                                            class="btn btn-lg btn-info btn-block">
                                                        <i class="fa fa-lock fa-lg"></i>&nbsp;
                                                        <span id="payment-button-amount">提交</span>
                                                    </button>
                                                </div>
                                            </c:if>
                                        </form>
                                    </div>
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
</body>
</html>
