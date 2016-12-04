<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="base.jsp"%>
<br/>foot<br/>
<a id="zh" href="lang?langType=zh">中文</a> | <a id="en" href="lang?langType=en">English</a><br/>
<script type="text/javascript">
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