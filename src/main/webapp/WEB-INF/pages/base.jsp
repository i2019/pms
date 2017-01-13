<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- 标签库 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<%@ taglib uri="http://displaytag.sf.net" prefix="display" %>

<input id="baseURL" type="hidden" value="<c:url value="/" />"> 	




<!-- 静态资源 -->

<!-- jquery -->
<script type="text/javascript" src="<c:url value="/jquery/jquery-2.2.4.js" />"></script>

<!-- bootstrap --> 
<link type="text/css" rel="stylesheet" href="<c:url value="/bootstrapcss/bootstrap.min.css" />" />
<script type="text/javascript" src="<c:url value="/bootstrapjs/bootstrap.min.js" />"></script>


<!-- adminLTE -->

<!-- adminLTE css-->
<!-- Font Awesome -->
<link rel="stylesheet" href="<c:url value="/admincss/font-awesome.css" />">
<!-- Ionicons -->
<link rel="stylesheet" href="<c:url value="/admincss/ionicons.css" />">
<!-- Theme style -->
<link rel="stylesheet" href="<c:url value="/admincss/AdminLTE.css" />">
<link rel="stylesheet" href="<c:url value="/adminskins/skin-blue.css" />">

<!-- adminLTE js-->
<!-- AdminLTE App -->
<script src="<c:url value="/adminjs/app.js" />"></script>

<!-- plugins -->
<!-- ckeditor -->
<script src="<c:url value="/adminckeditor/ckeditor.js" />"></script>



<!-- 自定义 -->
<link type="text/css" rel="stylesheet" href="<c:url value="/css/main.css" />" />

<script type="text/javascript" src="<c:url value="/js/main.js" />"></script> 
<script type="text/javascript" src="<c:url value="/js/i18n.js" />"></script> 

<script type="text/javascript">
var baseURL=$("#baseURL").val();

$(function () { $(".popover-hide").popover();});

/**
 * 字符串是否为空
 * @param dateStr
 */
function strIsNull(str){
	if(str!=null
			&&str.replace(/(^\s*)|(\s*$)/g,'').length>0){
		return false;
	}
	return true;
}

</script>



