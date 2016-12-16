<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/pages/base.jsp"%>

<style type="text/css">
/*SearchGroup*/
.instantHotelList{ padding-left:34px; padding-bottom:16px; margin-top:-10px; display:none;}
.ins_hotel{ background:#black; padding:6px 0;}
.ins_hotel span.group{ color:#c1cfd9;font-weight:bold; background-image:url(img/tree_bg.png); background-repeat:no-repeat;line-height:18px;padding:4px 30px 1px 22px; display:block; margin-top:6px; cursor:pointer;}
.ins_hotel span.group.narrow{ background-position:6px 7px;}
.ins_hotel span.group.expand{ background-position:6px -23px;}
.ins_hotel a{ display:block; padding:4px 30px 4px 40px; line-height:18px; text-decoration:none; }
.ins_hotel a:link,
.ins_hotel a:visited{ color:#c1cfd9;background:url(img/tree_bg.png) no-repeat 24px bottom;}
.ins_hotel a:hover{ color:#fff; background-color:#067ab4; background-image:none; }

</style>


<!-- SearchGroup -->
<div class="box box-solid" style="width: 200px; margin-top: 20px;">
 	<h2>Search Group</h2><br/>
   	<div style="padding-left:34px; padding-bottom:12px; margin-top:-10px;width:194px;" >
		<input name="principal.hotelCode" type="text" maxlength="30" class="input-sm form-control" placeholder="Search...">
	</div>
   	<div class="instantHotelList" style="display: block;">
		<div class="ins_hotel" style="width: 100%;height:200px;overflow-y:auto;">
			<span class="group expand">Lists</span>
			<span class="sub">
				<c:forEach var="li" items="${lists}">
					<a href="#">${li}</a>
				</c:forEach>
			</span>
		</div>
	</div>
</div>



<div class="box box-solid" style="width: 800px; margin-top: 20px; margin-bottom: 20px;margin-left: 50px;">
	<div id="editor">
	 
	</div>
</div>
			
<script type="text/javascript">
$(function () {
    CKEDITOR.replace('editor');
    CKEDITOR.config.height = 150;
    CKEDITOR.config.width = 'auto';
    CKEDITOR.config.language='zh_CN';
    CKEDITOR.config.toolbarLocation ='hide';
 });
 
 
</script>


<script type="text/javascript">

/*SearchGroup*/
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

//筛选
$("input[name='principal.hotelCode']").keyup(function(e){
	debugger;
	var code = $(this).val();
	if(strIsNull(code)){
		$('.group').removeClass('expand').addClass('narrow');
		$('.group').next('.sub').children().hide();
		$('.group').show();
		return;
	}
	//隐藏所有的group元素
	$('.group').hide();
	//对所有子节点酒店项进行筛选
	$(".instantHotelList .ins_hotel a").each(function(index,element){
		debugger;
		var linkUp = $(this).text().toUpperCase();
		var codeUp = code.toUpperCase();
		
		if(linkUp.indexOf(codeUp)>=0){
			//如果没有显示,则先显示出来
			if(!$(this).parent().prev('.group').is(':visible')){
				$(this).parent().prev('.group').removeClass('narrow').addClass('expand');
				$(this).parent().prev('.group').show();
			}
			
			$(this).show();
		}else{
			$(this).hide();
		}
	});
});

//Group展开与合并
$('.group').click(function(){
	if(! $(this).next('.sub').children('a').is(':visible')){
		$(this).removeClass('narrow').addClass('expand');
		$(this).next('.sub').children().show();
	}else{
		$(this).removeClass('expand').addClass('narrow');
		$(this).next('.sub').children().hide();
	}
});

</script>