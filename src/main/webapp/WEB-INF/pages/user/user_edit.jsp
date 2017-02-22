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
	     	<a href="show" type="button" class="btn btn-box-tool"><i class="fa fa-reply"></i></a>
	        <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
	    </div>
    </div>
	<div class="box-body">   
	    <sf:form commandName="userForm" action="save" class="form-horizontal" method="POST">
	   		  
	          <input type="hidden" name="id" value="${user.id }"/>
	          <div class="box-body">
	            <div class="form-group">
	              <sf:label path="name" cssClass="col-sm-2 control-label" cssErrorClass="error col-sm-2 control-label">用户名</sf:label>
	              <div class="col-sm-5">
	                  <sf:input cssErrorClass="error form-control" path="name" cssClass="form-control" placeholder="用户名"/>
	                  <sf:errors  path="name" element="span" cssClass="errors alert-warning" />	
	              </div>
	            </div>
	            <div class="form-group">
	               <sf:label path="password" cssClass="col-sm-2 control-label" cssErrorClass="error col-sm-2 control-label">密码</sf:label>
	               <div class="col-sm-5">
	               		<sf:input cssErrorClass="error form-control" path="password" cssClass="form-control" placeholder="密码"/>
	               		 <sf:errors  path="password" element="span" cssClass="errors alert-warning" />	
	               </div>
	            </div>
	            <c:if test="${user.id==null }">
	     			<div class="form-group">
	     				<sf:label path="password2" cssClass="col-sm-2 control-label" cssErrorClass="error">确认密码</sf:label>
	               		<div class="col-sm-5">
	               			<sf:input cssErrorClass="error" path="password2" cssClass="form-control" placeholder="确认密码"/>
	               		</div>
		            </div>
     			</c:if>
	            <div class="form-group">
	            	<sf:label path="remark" cssClass="col-sm-2 control-label" cssErrorClass="error">备注</sf:label>
	              	<div class="col-sm-5">
	               		<sf:input cssErrorClass="error" path="remark" cssClass="form-control" placeholder="备注"/>
	               	</div>
	            </div>
	          </div>
	          <div class="box-footer">
	            <button type="reset" class="btn btn-default">重置</button>
	            <button type="submit" class="btn btn-primary">保存</button>
	          </div>
	    </sf:form>
	   </div>
  </div>
</section>