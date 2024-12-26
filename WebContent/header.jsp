<%@page import="Model.Bean.User"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Quản lý thư viện</title>
<!-- Tell the browser to be responsive to screen width -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="./Resources/plugins/fontawesome-free/css/all.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="./Resources/css/ionicons.min.css">
<!-- Tempusdominus Bbootstrap 4 -->
<link rel="stylesheet"
	href="./Resources/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
<!-- iCheck -->
<link rel="stylesheet"
	href="./Resources/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
<!-- JQVMap -->
<link rel="stylesheet" href="./Resources/plugins/jqvmap/jqvmap.min.css">

<!-- overlayScrollbars -->
<link rel="stylesheet"
	href="./Resources/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
<!-- Daterange picker -->
<link rel="stylesheet"
	href="./Resources/plugins/daterangepicker/daterangepicker.css">
<!-- summernote -->
<link rel="stylesheet"
	href="./Resources/plugins/summernote/summernote-bs4.css">
<!-- Google Font: Source Sans Pro -->
<!-- daterange picker -->
<link rel="stylesheet"
	href="Resources/plugins/daterangepicker/daterangepicker.css">
<!-- Bootstrap Color Picker -->
<link rel="stylesheet"
	href="Resources/plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.min.css">
<!-- Select2 -->
<link rel="stylesheet"
	href="Resources/plugins/select2/css/select2.min.css">
<link rel="stylesheet"
	href="Resources/plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css">
<!-- Bootstrap4 Duallistbox -->
<link rel="stylesheet"
	href="Resources/plugins/bootstrap4-duallistbox/bootstrap-duallistbox.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="Resources/css/adminlte.min.css">
<!-- Google Font: Source Sans Pro -->

<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700"
	rel="stylesheet">
</head>
<body class="hold-transition sidebar-mini layout-fixed">
	<div class="wrapper">

		<!-- Navbar -->
		<nav
			class="main-header navbar navbar-expand navbar-white navbar-light">
			<!-- Left navbar links -->
			<ul class="navbar-nav d-flex justify-content-between w-100">
				<li class="nav-item"><a class="nav-link" data-widget="pushmenu"
					href="#" role="button"><i class="fas fa-bars"></i></a></li>
				<!-- Sidebar user panel (optional) -->
				<div class="user-panel  d-flex ">
					<%
						if (request.getSession().getAttribute("User") != null) {
					%>
					<%
						User user = (User) request.getSession().getAttribute("User");
					%>
					<div class="image">
						<img src="Resources/img/avatar2.jpg" class="img-circle elevation-2"
							alt="User Image">
					</div>
					
					
					<%
						} else {
					%>

					<div class="info" style="margin-left: 60px;">
						<a href="${pageContext.request.contextPath}/Login" class="d-block">Đăng
							nhập</a>
					</div>
					<%
						}
					%>
				</div>
			</ul>
			

		</nav>
		<!-- /.navbar -->

		<!-- Main Sidebar Container -->
		<aside class="main-sidebar elevation-4" style = "background-color: #FFFFFF">
			<a href="${pageContext.request.contextPath}/UserManual" class="brand-link"> <img
				class="brand-image img-circle elevation-3" style="opacity: .8">
				
			</a>

			<!-- Sidebar -->
			<div class="sidebar">
				

				<!-- Sidebar Menu -->
				<nav class="mt-2">
					<ul class="nav nav-pills nav-sidebar flex-column"
						data-widget="treeview" role="menu" data-accordion="false">
						
						<li
							class="nav-item has-treeview <c:if test="${sessionScope.Check.toString().equals('ManageBook') || sessionScope.Check.toString().equals('AddBook')||sessionScope.Check.toString().equals('ManageCategory')}">menu-open</c:if>"><a
							href="#"
							class="nav-link <c:if test="${sessionScope.Check.toString().equals('ManageBook') || sessionScope.Check.toString().equals('AddBook')||sessionScope.Check.toString().equals('ManageCategory')}">active</c:if> ">
								<i class="nav-icon fas fa-book " style = "color: #000"></i>
								<p  style = "color: #000" >
									Quản lý sách<i class="right fas fa-angle-left"></i>
								</p>
						</a>
							<ul class="nav nav-treeview">
								<li class="nav-item"><a
									href="${pageContext.request.contextPath}/ManageBook"
									class="nav-link <c:if test="${sessionScope.Check.toString().equals('ManageBook')}">active</c:if> ">
										<i class="far fa-circle nav-icon"></i>
										<p style = "color: #000">Danh sách</p>
								</a></li>
								<li class="nav-item"><a
									href="${pageContext.request.contextPath}/AddBook"
									class="nav-link <c:if test="${sessionScope.Check.toString().equals('AddBook')}">active</c:if>">
										<i class="far fa-circle nav-icon"></i>
										<p style = "color: #000">Thêm sách</p>
								</a></li>
								<li class="nav-item"><a
									href="${pageContext.request.contextPath}/ManageCategory"
									class="nav-link <c:if test="${sessionScope.Check.toString().equals('ManageCategory')}">active</c:if>">
										<i class="far fa-circle nav-icon"></i>
										<p style = "color: #000">Thể loại</p>
								</a></li>
							
						

					</ul>
				</nav>
				<!-- /.sidebar-menu -->
			</div>
			<!-- /.sidebar -->
		</aside>