<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="base.jsp"%>

<style type="text/css">
.footer a.lag{ background-image:url(img/language_change.png); display:inline-block; text-indent:-9999px; width:0; height:0; padding:24px 0 0 24px; overflow:hidden; position:relative; top:6px;*top:3px;}
.footer a.lag.cn{background-position:0 -30px;}
.footer a.lag.en{ background-position:0 -90px;} 
.footer a.lag.cn.current{ background-position:0 0;} 
.footer a.lag.en.current{ background-position:0 -60px;} 
.lang{
	margin-left: 400;
}
</style>

<footer>
  <div class="pull-right hidden-xs footer">
  	<strong>Copyright &copy; 2016-2017 
  	<a href="#">TY PMS</a>.</strong> All rights reserved.
  	<b>Version</b> 1.0.0  
  	<strong class="lang"> 
  		<a id="zh" class="lag cn current" href="lang?langType=zh">切换到中文</a> 
  		| 
  		<a id="en" class="lag en current" href="lang?langType=en">Change to English</a>	
  	</strong>
  </div>
</footer>

<script type="text/javascript">

//切换中英文
var remark='<spring:message code="system.Remark"/>';
if(remark=='Remark'){
	$("#zh").removeClass("current");
}else{
	$("#en").removeClass("current");
}

var path=window.location.pathname;
path=path.replace("/pms/","");
var hrefzh=$("#zh").attr('href');
var hrefen=$("#en").attr('href');
$("#zh").attr('href',hrefzh+'&path='+path);
$("#en").attr('href',hrefen+'&path='+path);

/*
if(path!=null && path!=""){
	var href=$("a").attr('href');
	$("a").attr('href',href+'&path='+path);
	alert($("a").attr('href'));
}
*/
/*
<button id="zh" onclick="javascript:changeLang(zh);">中文</button> 
| <button onclick="javascript:changeLang(en);" id="en">英文</button>
function changeLang(lang){
	 var path=window.location.pathname;
	 path=path.replace("/pms/","");
	 $.ajax({
         type: "GET",
         url: "lang?langType=zh&path="+path,
         data: {},
         dataType: "json",
         success: function(data){
         }
     });
}
*/

</script>