<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script>
$(document).ready(function() {
    var table=$('#datatable').DataTable( {
        "processing": true,
        "columns": [
			{ "data": null },
            { "data": "name" },
            { "data": "createTime" },
            { "data": "remark" }
        ],
        "columnDefs": [
                {
            		"targets": [0],
	            	"render": function(data, type, row, meta) {
	                	return '<a href="edit?id=' + row.id + '" target="_blank">' + (parseInt(meta.row)+1) + '</a>';
	            	}
            	},{
            		"targets": [3],
	            	"render": function(data, type, row, meta) {
	            		return '<span class="tip_remark" data-tipso="' + row.remark + '">' + partShow(row.remark,0,9) + '</span>';
	            	}
            	}
        ],
        "ajax":  function (data, callback, settings) {
        	var param=$("#searchForm").serialize();
        	debugger;
        	$.ajax({
        		url: "data",
       			type: "POST",
	   		   	async:false,
				cache : false, //禁用缓存
				data : param, //传入组装的参数
				dataType : "json",
				success : function(result) {
					var returnData = {};
					returnData.recordsTotal = result.data.totalCount;
					returnData.data = result.data.resultList;
					callback(returnData);
				}
        	});
        }
    } );
    
    $('#datatable').on('order.dt',
    	    function() {
    	    //排序事件
    	    }).on('search.dt',
    	    function() {
    	    //搜索事件
    	    }).on('page.dt',
    	    function() {
    	     //翻页事件
   	    	$('.tip_remark').tipso({
   	        	useTitle: false,
   	        	background: '#3c8dbc'
   	        });
   }).dataTable();
    
    $("#btn_search").click(function(){
    	table.ajax.param=$("#searchForm").serialize();
    	table.ajax.reload();
    });
    
    $('.tip_remark').tipso({
    	useTitle: false,
    	background: '#3c8dbc'
    });
    
} );

$('.tip_remark').tipso({
	useTitle: false,
	background: '#3c8dbc'
});

</script>

<section class="content">
	
  <!-- 查询条件 -->
  <div class="box box-default">	   
    <div class="box-header with-border">
     	<div class="pull-left"><h3 class="box-title">用户查询条件</h3></div>
	    <div class="box-tools pull-right">
	        <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
	    </div>
    </div>
	<div class="box-body">
	   <form name="criteria" class="form-horizontal" id="searchForm" method="post">
	       <div class="row">
	         <div class="col-md-6">
	           <div class="form-group">
	              <label for="name" class="col-sm-2 control-label">用户名</label>
                  <div class="col-sm-10">
                    <input name="name" type="text" class="form-control" id="name" placeholder="用户名">
                  </div>
	           </div>
	         </div>
	         <div class="col-md-6">
	           <div class="form-group">
	              <label for="id" class="col-sm-2 control-label">用户id</label>
                  <div class="col-sm-10">
                   	  <input name="id" type="text" class="form-control" id="id" placeholder="用户id">
                  </div>
	           </div>
	         </div> 
	       </div>
	       
	        <div class="box-footer">
		     	 <button type="reset" class="btn btn-default">重置</button>
			     <button id="btn_search" type="button" class="btn btn-primary">查询</button>
		    </div>
	    </form>  
	 </div>
   </div>
   
   <!-- 查询结果 -->
   <div class="row">
        <div class="col-xs-12">
           <div class="box">
             <div class="box-header">
               	<div class="pull-left"><h3 class="box-title">用户查询结果</h3></div>
               	<div class="box-tools pull-right">
	        		<button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
	    		</div>
             </div>
             <!-- /.box-header -->
             <div class="box-body">
            	<table id="datatable" class="table table-bordered table-striped">
					<thead>
						<tr>
						  <th>序号</th>
						  <th>用户名</th>
						  <th>创建时间</th>
						  <th>备注</th>
						</tr>
					</thead>
					<tbody></tbody> 
					<tfoot>
						<tr>
						  <th>序号</th>
						  <th>用户名</th>
						  <th>创建时间</th>
						  <th>备注</th>
						</tr>
					</tfoot>
				</table>    		
             </div>
          </div>
        </div>
   </div>
   
</section>

            
