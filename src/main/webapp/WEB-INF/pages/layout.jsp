<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="base.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>PMS</title>
</head>
<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">

		<!-- main-header -->
		<header class="main-header"> <!-- Logo --> <a href="/"
			class="logo"> <!-- mini logo for sidebar mini 50x50 pixels --> <span
			class="logo-mini"><b>P</b>MS</span> <!-- logo for regular state and mobile devices -->
			<span class="logo-lg"><b><i class="fa   fa-users"></i></b><b>  P</b><b> M</b><b> S</b></span>
		</a> <!-- Header Navbar--> <nav class="navbar navbar-static-top"> <!-- Sidebar toggle button-->
		<a href="#" class="sidebar-toggle" data-toggle="offcanvas"
			role="button"> <span class="sr-only">Toggle navigation</span>
		</a>
		<div class="navbar-custom-menu">
			<ul class="nav navbar-nav">
			
				<!-- Messages-->
				<!--
				<li class="dropdown messages-menu">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown"> 
						<i class="fa fa-envelope-o"></i> <span class="label label-success">4</span>
					</a>
					<ul class="dropdown-menu">
						<li class="header">You have 4 messages</li>
					</ul>
			    </li>
				<li class="dropdown notifications-menu">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown"> 
						<i class="fa fa-bell-o"></i> <span class="label label-warning">10</span>
					</a>
					<ul class="dropdown-menu">
						<li class="header">You have 10 notifications</li>
						<li></li>
					</ul>
				</li>
				-->
				<li class="dropdown user user-menu">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">
						<span class="hidden-xs">当前用户</span>
					</a>
					<ul class="dropdown-menu">
						<!-- Menu Footer-->
						<li class="user-footer">
							<div class="pull-left">
								<a href="#" class="btn btn-default btn-flat"><i class="fa fa-cogs"></i>设置</a>
							</div>
							<div class="pull-right">
								<a href="#" class="btn btn-default btn-flat"><i class="fa fa-sign-out"></i>登出</a>
							</div>
						</li>
					</ul>
				</li>
			</ul>
		</div>
		</nav> 
	</header>
	<!-- ./main-header -->

	<!-- main-sidebar -->
	<aside class="main-sidebar"> 
		  <!-- sidebar -->
	      <section class="sidebar">
	      
	      <!-- sidebar menu -->
	      <ul class="sidebar-menu">
	        	 <li class="treeview">
			          <a href="#">
				            <i class="fa  fa-gear (alias)"></i> <span>系统</span>
				            <span class="pull-right-container">
				              	<i class="fa fa-angle-left pull-right"></i>
				            </span>
			          </a>
			          <ul class="treeview-menu">
			            <li>
			            	<a href="<c:url value="/user/show"/>">
			            		<i class="fa fa-users"></i>用户
			            	</a>
			            </li>
			          </ul>
       		 </li>
       		 
       		  <li class="treeview">
			          <a href="#">
				            <i class="fa   fa-money"></i> <span>财务</span>
				            <span class="pull-right-container">
				              	<i class="fa fa-angle-left pull-right"></i>
				            </span>
			          </a>
			          <ul class="treeview-menu">
			            <li>
			            	<a href="<c:url value="/money/consumptions"/>">
			            		<i class="fa  fa-outdent"></i>消费记录
			            	</a>
			            </li>
			          </ul>
       		 </li>
       		 
	      </ul>
	      
	 	</section>
   		<!-- /.sidebar -->
	</aside>
	<!-- ./ main-sidebar -->

	<!-- content-wrapper -->
	<div class="content-wrapper">
		 <tiles:insertAttribute name="main" />
	</div>
	<!-- ./content-wrapper -->
	
	<footer class="main-footer">
    	<div class="pull-right hidden-xs">
      		<b>Version</b> 1.0.0
   		 </div>
    	<strong>Copyright &copy; 2016-2017 <a href="#">TY PMS</a>.</strong> All rights reserved.
  	</footer>	
	
</div>
</body>
</html>
