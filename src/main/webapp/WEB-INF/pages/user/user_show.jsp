<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script>

$(document).ready(function() {
    var dt=$('#datatable').DataTable( {
        "processing": true,
        "columns": [
			{ "data": null },
            { "data": "id" },
            { "data": "name" },
            { "data": "createTime" },
            { "data": "remark" }
        ],
        "columnDefs": [
            	{
            		"targets": [1],
	            	"render": function(data, type, row, meta) {
	                	return '<a href="edit?id=' + row.id + '" target="_blank">' + row.id + '</a>';
	            	}
            	},{
            		"targets": [0],
	            	"render": function(data, type, row, meta) {
	                	return meta.row+1;
	            	}
            	}
        ],
        "ajax":  function (data, callback, settings) {
        	var param={};
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
    
} );

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
	   <form class="form-horizontal">
	       <div class="row">
	         <div class="col-md-6">
	           <div class="form-group">
	              <label for="inputEmail3" class="col-sm-2 control-label">查询条件</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" id="inputEmail3" placeholder="name">
                  </div>
	           </div>
	         </div>
	         <div class="col-md-6">
	           <div class="form-group">
	              <label for="inputPassword3" class="col-sm-2 control-label">id</label>
                  <div class="col-sm-10">
                   	  <input type="text" class="form-control" id="inputPassword3" placeholder="id">
                  </div>
	           </div>
	         </div> 
	       </div>
	       <div class="row">
	         <div class="col-md-6">
	           <div class="form-group">
	              <label for="inputEmail3" class="col-sm-2 control-label">name</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" id="inputEmail3" placeholder="name">
                  </div>
	           </div>
	         </div>
	         <div class="col-md-6">
	           <div class="form-group">
	              <label for="inputPassword3" class="col-sm-2 control-label">id</label>
                  <div class="col-sm-10">
                   	  <input type="text" class="form-control" id="inputPassword3" placeholder="id">
                  </div>
	           </div>
	         </div> 
	       </div>
	    </form>  
	 </div>
     <div class="box-footer"></div>
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
						  <th>用户ID</th>
						  <th>用户名</th>
						  <th>创建时间</th>
						  <th>备注</th>
						</tr>
					</thead>
					<tbody></tbody> 
					<tfoot>
						<tr>
						  <th>序号</th>
						  <th>用户ID</th>
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

            
