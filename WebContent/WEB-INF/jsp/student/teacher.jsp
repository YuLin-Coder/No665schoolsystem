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
    <title>教学评估</title>
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
                <li>
                    <a href="${ctx}/student/select"> <i class="menu-icon fa fa-clipboard"></i>在线选课</a>
                </li>
                <li>
                    <a href="${ctx}/student/profile"> <i class="menu-icon fa fa-user-md"></i>个人信息</a>
                </li>
                <li class="active">
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
        <!-- Animated -->
        <div class="animated fadeIn">
            <div class="clearfix"></div>
            <div class="row">
                <div class="col-lg-8">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">教师评价</strong>
                        </div>
                        <div class="card-body">
                            <div id="pay-invoice">
                                <div class="card-body" style="width: 500px; margin: auto; float: none;">
                                    <form action="${ctx}/student/evaluate" method="post" novalidate="novalidate">
                                        <input type="hidden" name="id" value="${teacher.id}">
                                        <div class="form-group has-success">
                                            <label for="cc-name" class="control-label mb-1">姓名</label>
                                            <input id="cc-name" name="teacherName" type="text" disabled value="${teacher.teacherName}" class="form-control cc-name valid" data-val="true" data-val-required="" autocomplete="cc-name" aria-required="true" aria-invalid="false" aria-describedby="cc-name">
                                            <span class="help-block field-validation-valid" data-valmsg-for="cc-name" data-valmsg-replace="true"></span>
                                        </div>
                                        <div class="form-group">
                                            <label for="cc-number" class="control-label mb-1">编号</label>
                                            <input id="cc-number" name="teacherNum" type="text" disabled class="form-control cc-number identified visa" value="${teacher.teacherNum}" data-val="true">
                                            <span class="help-block" data-valmsg-for="cc-number"
                                                  data-valmsg-replace="true"></span>
                                        </div>
                                        <div class="form-group">
                                            <label for="cc-major" class="control-label mb-1">专业</label>
                                            <select id="cc-major" name="teacherMajorId" type="text" disabled class="form-control cc-number identified visa" data-val="true">
                                                <c:forEach items="${majors}" var="major">
                                                    <option value="${major.id}" ${teacher.teacherMajorId == major.id ? "selected" : ""}>${major.majorName}</option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                        <input type="hidden" name="evaluateTeacherid" value="${teacher.id}">
                                        <input type="hidden" name="evaluateStudentid" value="${sessionScope.id}">
                                        <input type="hidden" id="rate" name="evaluateScore" value="">
                                        <div class="form-group">
                                            <label>评分</label>
                                            <div class="demo">
                                                <div id="default-demo"></div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="cc-evaluate" class="control-label mb-1">评价</label>
                                            <textarea id="cc-evaluate" name="evaluateComment" class="form-control cc-number identified visa" rows="5"></textarea>
                                        </div>
                                        <span style="color: grey; font-size: 13px;">重复评价无效</span>
                                        <div>
                                            <button id="payment-button" type="submit" class="btn btn-lg btn-info btn-block">
                                                <i class="fa fa-lock fa-lg"></i>&nbsp;
                                                <span id="payment-button-amount">提交评价</span>
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
<script src="${ctx}/resource/js/jquery-3.2.1.min.js"></script>
<script src="${ctx}/resource/starrate/lib/jquery.raty.min.js"></script>
<script>
    $(function () {
        $.fn.raty.defaults.path = '${ctx}/resource/starrate/lib/img';
        $('#default-demo').raty({
            click: function(score, evt) {
                $("#rate").val(score)
            }
        });
    });
</script>
</body>
</html>
