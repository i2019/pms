<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="base.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>List</title>
</head>
<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">

		<!-- main-header -->
		<header class="main-header"> <!-- Logo --> <a href="/"
			class="logo"> <!-- mini logo for sidebar mini 50x50 pixels --> <span
			class="logo-mini"><b>P</b>MS</span> <!-- logo for regular state and mobile devices -->
			<span class="logo-lg"><b>P</b>MS</span>
		</a> <!-- Header Navbar--> <nav class="navbar navbar-static-top"> <!-- Sidebar toggle button-->
		<a href="#" class="sidebar-toggle" data-toggle="offcanvas"
			role="button"> <span class="sr-only">Toggle navigation</span>
		</a>
		<div class="navbar-custom-menu">
			<ul class="nav navbar-nav">
				<!-- Messages-->
				<li class="dropdown messages-menu"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown"> <i
						class="fa fa-envelope-o"></i> <span class="label label-success">4</span>
				</a>
					<ul class="dropdown-menu">
						<li class="header">You have 4 messages</li>
					</ul></li>
				<li class="dropdown notifications-menu"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown"> <i
						class="fa fa-bell-o"></i> <span class="label label-warning">10</span>
				</a>
					<ul class="dropdown-menu">
						<li class="header">You have 10 notifications</li>
						<li></li>
					</ul></li>
				<li class="dropdown user user-menu">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">
						<span class="hidden-xs">TESTER</span>
					</a>
					<ul class="dropdown-menu">
						<!-- Menu Footer-->
						<li class="user-footer">
							<div class="pull-left">
								<a href="#" class="btn btn-default btn-flat">Profile</a>
							</div>
							<div class="pull-right">
								<a href="#" class="btn btn-default btn-flat">Sign out</a>
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
			            <i class="fa fa-folder"></i> 
			            <span>Examples</span>
			            <span class="pull-right-container">
			              	<i class="fa fa-angle-left pull-right"></i>
			            </span>
		          </a>
		          <ul class="treeview-menu">
		            <li>
		            	<a href="<c:url value="/user/show"/>">
		            		<i class="fa fa-circle-o"></i> User
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
		 <div id="content">
		  	 <tiles:insertAttribute name="main" />
		</div>
	</div>
	<!-- ./content-wrapper -->
	
	<footer class="main-footer">
    	<div class="pull-right hidden-xs">
      		<b>Version</b> 1.0.0
   		 </div>
    	<strong>Copyright &copy; 2014-2016 <a href="http://almsaeedstudio.com">Almsaeed Studio</a>.</strong> All rights reserved.
  	</footer>	
	
</div>
</body>
</html>
