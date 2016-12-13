<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="base.jsp"%>
<!-- Left side column. contains the logo and sidebar -->
<aside class="main-sidebar">
	<!-- Sidebar user panel -->
     <div class="user-panel">
         <div class="pull-left image">
             <img src="img/disney.jpg" class="img-circle" alt="User Image">
         </div>
         <div class="pull-left info">
             <p>当前菜单</p>
             <p>
             	<a href="#"><i class="fa fa-circle text-success"></i> 报表</a>
             </p>
         </div>
     </div>
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <!-- search form:查询系统功能 -->
        <form action="#" method="get" class="sidebar-form w220">
            <div class="input-group">
                <input type="text" name="q" class="form-control" placeholder="Search...">
                <span class="input-group-btn">
        			<button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
      		 	 	</button>
     			 </span>
            </div>
        </form>
        
        <!-- sidebar menu: : style can be found in sidebar.less -->
        <ul class="sidebar-menu">
        	
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-line-chart"></i><span>报表</span>
                    <span class="pull-right-container">
      					<i class="fa fa-angle-left pull-right"></i>
   					</span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="#"><i class="fa fa-area-chart"></i> 报表1</a></li>
                    <li><a href="#"><i class="fa  fa-dashboard"></i> 报表2</a></li>
                    <li><a href="#"><i class="fa fa-circle-o"></i> 报表3</a></li>
                </ul>
            </li>

        </ul>
    </section>
    <!-- /.sidebar -->
</aside>



