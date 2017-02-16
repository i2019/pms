<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/pages/base.jsp"%>

<section class="content">
   <div class="box box-default">	
   	<div class="box-header with-border">
     	<div class="pull-left"><h3 class="box-title">
     		<c:if test="${user.id==null }">
     			创建用户
     		</c:if>
     		<c:if test="${user.id!=null }">
     			编辑用户
     		</c:if>
     	</h3></div>
	    <div class="box-tools pull-right">
	        <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
	    </div>
    </div>
	<div class="box-body">   
	    <form name="user" class="form-horizontal" action="<c:url value="save" />" method="post">
	          <input type="hidden" name="id" value="${user.id }"/>
	          <div class="box-body">
	            <div class="form-group">
	              <label for="user_name" class="col-sm-2 control-label">用户名</label>
	              <div class="col-sm-10">
	                <input name="name" value="${user.name }" type="text" class="form-control" id="user_name" placeholder="用户名">
	              </div>
	            </div>
	            <div class="form-group">
	              <label for="user_remark" class="col-sm-2 control-label">备注</label>
	              <div class="col-sm-10">
	                <input name="remark" value="${user.remark }" type="text" class="form-control" id="user_remark" placeholder="备注">
	              </div>
	            </div>
	          </div>
	          <div class="box-footer">
	            <button type="reset" class="btn btn-default">取消</button>
	            <button type="submit" class="btn btn-primary">保存</button>
	          </div>
	    </form>
	   </div>
  </div>
</section>