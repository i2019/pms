<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="base.jsp"%>

<body class="hold-transition skin-blue sidebar-mini">	
<div class="wrapper">
<header class="main-header">
    <!-- Logo -->
    <a href="/" class="logo" title="回到首页">
        <!-- mini logo for sidebar mini 50x50 pixels -->
        <span class="logo-mini"><b>PMS</b></span>
        <!-- logo for regular state and mobile devices    
        <img src="img/disney.jpg">
        -->
        <span class="logo-lg">TY PMS</span>
    </a>

    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
         <!-- 隐藏或显示侧边菜单 Sidebar toggle button-->
         <a href="#" id="sidebar-toggle" class="sidebar-toggle" data-toggle="offcanvas" role="button">
		 </a>
         <!-- Navbar Right Menu -->
         <div class="navbar-custom-menu">
           	<ul class="nav navbar-nav">
             
             <!-- 系统通知 -->
	         <li class="dropdown notifications-menu">
	          <a href="/pms" class="dropdown-toggle" data-toggle="dropdown">
	            <i class="fa fa-bell-o"></i>
	            <span class="label label-warning">1</span>
	          </a>
	         </li> 
	         <!-- 系统通知 -->
	         <li class="dropdown notifications-menu">
	          <a href="/pms" class="dropdown-toggle" data-toggle="dropdown">
	            <i class="fa  fa-comments"></i>
	            <span class="label label-warning">3</span>
	          </a>
	         </li> 
	        
             <!-- User Account: style can be found in dropdown.less -->
             <li class="dropdown user user-menu">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <img src="img/disney.jpg" class="user-image" alt="User Image">
                        <span class="hidden-xs">LJT</span>
                    </a>
             </li>
              <!-- Control Sidebar Toggle Button -->
	          <li>
	            <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
	          </li>
	           <!-- 退出登录 -->
	          <li>
	            <a href="#" data-toggle="control-sidebar"><i class="fa fa-sign-out"></i></a>
	          </li>
           </ul>
        </div>
     </nav>
 </header>
</div>
</body>


  