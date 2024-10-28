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
    <title>管理系统</title>
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
                <li>
                    <a href="${ctx}/admin/teacher"><i class="menu-icon fa fa-calendar"></i>教师管理</a>
                </li>
                <li class="active">
                    <a href="${ctx}/admin/student"> <i class="menu-icon fa fa-clipboard"></i>学生管理</a>
                </li>
                <li>
                    <a href="${ctx}/admin/clazz"> <i class="menu-icon fa fa-clipboard"></i>班级管理</a>
                </li>
                <li>
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
        <div class="animated fadeIn">
            <div class="clearfix"></div>
            <div class="orders">
                <div class="row">
                    <div class="col-xl-8">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="box-title">学生管理</h4>
                                <button onclick="window.location.href='${ctx}/student/adminUpdate'" style="width: 50px; position: absolute; top: 15px; right: 75px; margin: 0;" class="btn btn-success btn-sm btn-block">添加</button>
                                <button onclick="deleteStudent()" style="width: 50px; position: absolute; top: 15px; right: 15px; margin: 0;" class="btn btn-danger btn-sm btn-block">删除</button>
                            </div>
                            <div class="card-body--">
                                <div class="table-stats order-table ov-h">
                                    <form action="${ctx}/student/delete" id="students" method="post">
                                    <table class="table ">
                                        <thead>
                                        <tr>
                                            <th class="serial">#</th>
                                            <th>姓名</th>
                                            <th>学生编号</th>
                                            <th>专业</th>
                                            <th>班级</th>
                                            <th>密码</th>
                                            <th></th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${students}" var="student" varStatus="statu">
                                            <tr>
                                                <td class="serial"><input type="checkbox" name="id"
                                                                          value="${student.id}"></td>
                                                <td>${student.studentName}</td>
                                                <td>${student.studentNum}</td>
                                                <td>${student.studentMajorName}</td>
                                                <td>${student.studentClassName}</td>
                                                <td>${student.studentPassword}</td>
                                                <td>
                                                    <button onclick="window.location.href='${ctx}/student/adminUpdate?id=${student.id}'"
                                                            type="button" class="btn btn-info btn-sm btn-block"
                                                            style="width: auto; margin: 0;">
                                                        修改
                                                    </button>
                                                    <button onclick="window.location.href='${ctx}/student/delete?id=${student.id}'"
                                                            type="button" class="btn btn-danger btn-sm btn-block"
                                                            style="width: auto; margin: 0;">
                                                        删除
                                                    </button>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                    </table>
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

<script src="${ctx}/resource/admin/assets/js/vendor/jquery-2.1.4.min.js"></script>
<script src="${ctx}/resource/js/jquery-3.2.1.min.js"></script>
<script src="${ctx}/resource/admin/assets/js/popper.min.js"></script>
<script src="${ctx}/resource/admin/assets/js/plugins.js"></script>
<script src="${ctx}/resource/admin/assets/js/main.js"></script>
<script>
    function deleteStudent() {
        let ids = "";
        $("input:checkbox[name='id']:checked").each(function () {
            ids += $(this).val() + ",";
        });
        //判断最后一个字符是否为逗号，若是截取
        let id = ids.substring(ids.length - 1, ids.length);
        if (id === ",") {
            ids = ids.substring(0, ids.length - 1);
        }
        if (ids === "") {
            alert("请选择要删除的记录！");
            return;
        }
        $("#students").submit();
    }
</script>
</body>
</html>
