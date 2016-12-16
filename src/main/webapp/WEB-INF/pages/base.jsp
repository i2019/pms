<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- 标签库 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>


<%@ taglib uri="http://displaytag.sf.net" prefix="display" %>






<!-- 静态资源 -->

<!-- jquery -->
<script type="text/javascript" src="jquery/jquery-2.2.4.js"></script>

<!-- bootstrap -->
<link type="text/css" rel="stylesheet" href="bootstrapcss/bootstrap.min.css" />
<script type="text/javascript" src="bootstrapjs/bootstrap.min.js"></script>


<!-- adminLTE -->

<!-- adminLTE css-->
<!-- Font Awesome -->
<link rel="stylesheet" href="admincss/font-awesome.css">
<!-- Ionicons -->
<link rel="stylesheet" href="admincss/ionicons.css">
<!-- Theme style -->
<link rel="stylesheet" href="admincss/AdminLTE.css">
<!-- AdminLTE Skins. Choose a skin from the css/skins
folder instead of downloading all of them to reduce the load.
<link rel="stylesheet" href="/admin/css/skins/_all-skins.css">
 -->
<link rel="stylesheet" href="adminskins/skin-blue.css">

<!-- adminLTE js-->
<!-- AdminLTE App -->
<script src="adminjs/app.js"></script>
<!-- ckeditor -->
<script src="adminckeditor/ckeditor.js"></script>

<!-- FastClick 
<script src="/admin/plugins/fastclick/fastclick.js"></script>
-->
<!-- Sparkline 
<script src="/admin/plugins/sparkline/jquery.sparkline.min.js"></script>
-->
<!-- jvectormap 
<script src="/admin/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="/admin/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
-->
<!-- SlimScroll 1.3.0 
<script src="/admin/plugins/slimScroll/jquery.slimscroll.min.js"></script>
-->
<!-- ChartJS 1.0.1 
<script src="/admin/plugins/chartjs/Chart.min.js"></script>
-->
<!-- AdminLTE dashboard demo (This is only for demo purposes) 
<script src="/admin/js/dashboard2.js"></script>
-->
<!-- AdminLTE for demo purposes 
<script src="/admin/js/demo.js"></script>
-->



<!-- 自定义 -->
<link type="text/css" rel="stylesheet" href="css/main.css" />

<script type="text/javascript" src="js/main.js"></script> 
<script type="text/javascript" src="js/i18n.js"></script> 

<script type="text/javascript">
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



