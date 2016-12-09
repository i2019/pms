<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/pages/base.jsp"%>
 <a href="user_edit"><spring:message code="system.user.UserEdit"/></a>
 <br/>
<style type="text/css">

/* displaytag */
.pannel_display { border-top:#c1cfd9 1px solid;}
.result_table{ width:100%;}
.result_table th{ border:#c1cfd9 1px solid; border-top-color:#f6f8fa; background:#d3dde4; font-weight:normal; padding:6px 6px;}
.result_table td{ border:#c1cfd9 1px solid; text-align:center;padding:6px 6px; background:#fff;}
.result_table th.sortable{ cursor:pointer;}
.result_table th.sortable:hover{ background:#c1cfd9;}
.result_table th.sortable.sorted a,
.result_table th.sortable.sorted.order1 a,
.result_table th.sortable.sorted.order2 a{ display:inline-block; background-image:url(/pms/img/sortable_sort_bg.png); background-repeat:no-repeat; padding-right:12px; text-decoration:none; color:#4e5663;}
.result_table th.sortable.sorted a{ background-position:right 4px;}
.result_table th.sortable.sorted.order1 a{background-position:right -26px;}
.result_table th.sortable.sorted.order2 a{background-position:right -56px;}
.result_table th.weekend{background:#9eb2c0;}
.result_table td.off_fs,
.result_table td.off_room{ color:#e10000; font-weight:bold; background:#fff4d2;}
.result_table td.td_ia{ cursor:pointer;}
.result_table td.td_ia:hover{ background:#e5f3e5;}
.result_table td.off_room:hover{background:#ffeebb;}
.result_table td .p_hover{ position:absolute;left:71px; top:15px; background:#fff; border-top:#4e5663 2px solid; width:120px; font-size:12px; padding:6px; display:none;}
.result_table td .p_hover p{ line-height:20px; margin:0; padding:0; text-align:left;}
a.link:link,
a.link:visited{color:#067ab4;}
a.link:hover{color:#0066cc;}
a.link_1:link,
a.link_1:visited{color:#4e5663; text-decoration:none;}
a.link_1:hover{color:#0066cc; text-decoration:underline;}
.mgR12 { margin-right:12px; }

.bt_wp{ border-top:#c1cfd9 1px solid;}
.ccm_table1{ width:100%;}
.ccm_table1 th{ border:#c1cfd9 1px solid; border-top-color:#f6f8fa; background:#d3dde4; font-weight:normal; padding:6px 6px;}
.ccm_table1 td{ border:#c1cfd9 1px solid; text-align:center;padding:6px 6px; background:#fff;}

.ccm_table1 th.sortable{ cursor:pointer;}
.ccm_table1 th.sortable:hover{ background:#c1cfd9;}
.ccm_table1 th.sortable.sorted a,
.ccm_table1 th.sortable.sorted.order1 a,
.ccm_table1 th.sortable.sorted.order2 a{ display:inline-block; background-image:url(/pms/img/sortable_sort_bg.png); background-repeat:no-repeat; padding-right:12px; text-decoration:none; color:#4e5663;}
.ccm_table1 th.sortable.sorted a{ background-position:right 4px;}
.ccm_table1 th.sortable.sorted.order1 a{background-position:right -26px;}
.ccm_table1 th.sortable.sorted.order2 a{background-position:right -56px;}
.ccm_table1 th.weekend{background:#9eb2c0;}
.ccm_table1 td.off_fs,
.ccm_table1 td.off_room{ color:#e10000; font-weight:bold; background:#fff4d2;}
.ccm_table1 td.td_ia{ cursor:pointer;}
.ccm_table1 td.td_ia:hover{ background:#e5f3e5;}
.ccm_table1 td.off_room:hover{background:#ffeebb;}

.ccm_table1 td span.price{font-size:14px; padding-right:20px; background:url(../img/price_arrow.png) no-repeat right 0; display:inline-block; line-height:20px;}
.ccm_table1 td span.price.hover{ background-position:right -50px;}
.ccm_table1 td .p_hover{ position:absolute;left:71px; top:15px; background:#fff; border-top:#4e5663 2px solid; width:120px; font-size:12px; padding:6px; display:none;}
.ccm_table1 td .p_hover p{ line-height:20px; margin:0; padding:0; text-align:left;}


/*宽度*/
.w120{width: 120px;}
.w220{width: 180px;}
.w500{width: 500px;}

/*高度*/
.h20{
	height: 20px;
	overflow:hidden;
}

/*左内边距*/
.pleft10{padding-left:10px; }

/*右外边距*/
.mleft10{
	margin-right:10px;
}

/*超出部分自动加省略号*/
.remarkLabel{
	position:relative;
	width:110px;
	height:24px;
	text-overflow:ellipsis;
	overflow:hidden;
}

</style>
<div class="pannel_display">
	<display:table name="${userResult.resultList }" id="userList" class="result_table ccm_table1" requestURI="" pagesize="2" size="${userResult.totalCount }" partialList="true">
		<display:setProperty name="sort.name" value="list" />
		<display:column property="name" titleKey="system.user.UserName" sortable="true" headerClass="sorted"/>
		<display:column titleKey="system.Remark" sortable="true" headerClass="sorted">
			<div class="popover-hide" data-container="body" data-toggle="popover" data-placement="bottom" data-content="${userList.remark}"> 
			    <a><label class="remarkLabel h20">${userList.remark}</label><span></span> </a>
	   		</div>
		</display:column>
		<display:column title="操作">
			<a href="user_edit?id=${userList.id}" class="link mgR12">
				<spring:message code="common.btn.edit"/></a>
			<a href="user_delete?id=${userList.id}" class="link">
				<spring:message code="common.btn.delete"/></a>
		</display:column>
	</display:table>
</div>

 
