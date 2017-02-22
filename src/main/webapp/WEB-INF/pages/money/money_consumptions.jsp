<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script>

//$(document).ready
$(document).ready(function() {
		
	var editedUser=getHrefParam('editedConsum');

    var table=$('#datatable').DataTable( {
        "processing": true,
        "columns": [
			{ "data": null },
            { "data": "owner" },
            { "data": "amount" },
            { "data": "time" },
            { "data": "cause" },
            { "data": "remark" },
            { "data": null }
        ],
        "columnDefs": [ 
                {
            		"targets": [0],
	            	"render": function(data, type, row, meta) {
	                	return '<a href="edit?id=' + row.id + '" target="_blank">' + (parseInt(meta.row)+1) + '</a>';
	            	}
            	}
                ,{
            		"targets": [5],
	            	"render": function(data, type, row, meta) {
	            		return '<span class="tip_remark" data-tipso="' + row.remark + '">' + partShow(row.remark,0,9) + '</span>';
	            	}
            	}
                ,{
            		"targets": [6],
	            	"render": function(data, type, row, meta) { 
	            		return '<a href="edit?id=' + row.id + '" target="_blank">' + '<i class="fa fa-pencil-square">编辑</i>'+ '</a>'
	            				+'|'
	            				+'<a href="edit?id=' + row.id + '" target="_blank">' + '<i class="fa fa-trash">删除</i>'+ '</a>';
	            	}
            	}
        ],
        "ajax":  function (data, callback, settings) {
        	var param=$("#searchForm").serialize();
        	$.ajax({
        		url: "consumptions/data",
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
    
    $("#editedUser").parent().parent().addClass('alert-success'); 
    
} );
//. $(document).ready

$('.tip_remark').tipso({
	useTitle: false,
	background: '#3c8dbc'
});

$('.consume').tipso({
	useTitle: false,
	background: '#3c8dbc'
});
</script>

<section class="content">
	
  <!-- 查询条件 -->
  <div class="box box-default">	   
    <div class="box-header with-border">
     	<div class="pull-left"><h3 class="box-title">消费查询条件</h3></div>
	    <div class="box-tools pull-right">
	        <a data-tipso="记一笔" href="edit" type="button" class="btn btn-box-tool consume tip_remark"><i class="fa fa-pencil-square-o"></i></a>
	        <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
	    </div>
    </div>
	<div class="box-body">
	   <form name="consumptionCriteria" class="form-horizontal" id="searchForm" method="post">
	       <div class="row">
	         <div class="col-md-6">
	           <div class="form-group">
	              <label for="owner" class="col-sm-4 control-label">支出人</label>
                  <div class="col-sm-7">
                    <input name="owner" type="text" class="form-control" id="owner" placeholder="支出人">
                  </div>
	           </div>
	         </div>
	         <div class="col-md-6">
	           <div class="form-group">
	              <label for="cause" class="col-sm-4 control-label">支出原因</label>
                  <div class="col-sm-7">
                   	  <input name="cause" type="text" class="form-control" id="cause" placeholder="支出原因">
                  </div>
	           </div>
	         </div> 
	       </div>
	       
	        <div class="row">
	         <div class="col-md-6">
	           <div class="form-group">
	              <label for="amountStart" class="col-sm-4 control-label">支出金额开始</label>
                  <div class="col-sm-7">
                    <input name="amountStart" type="text" class="form-control" id="amountStart" placeholder="支出金额开始">
                  </div>
	           </div>
	         </div>
	         <div class="col-md-6">
	           <div class="form-group">
	              <label for="amountEnd" class="col-sm-4 control-label">支出金额结束</label>
                  <div class="col-sm-7">
                   	  <input name="amountEnd" type="text" class="form-control" id="amountEnd" placeholder="支出金额结束">
                  </div>
	           </div>
	         </div> 
	       </div>
	       
	       <div class="row">
	         <div class="col-md-6">
	           <div class="form-group">
	              <label for="timeStart" class="col-sm-4 control-label">支出时间开始</label>
                  <div class="col-sm-7">
                    <input name="timeStart" type="text" class="form-control" id="timeStart" placeholder="支出时间开始">
                  </div>
	           </div>
	         </div>
	         <div class="col-md-6">
	           <div class="form-group">
	              <label for="timeEnd" class="col-sm-4 control-label">支出时间结束</label>
                  <div class="col-sm-7">
                   	  <input name="timeEnd" type="text" class="form-control" id="timeEnd" placeholder="支出时间结束">
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
               	<div class="pull-left"><h3 class="box-title">消费查询结果</h3></div>
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
						  <th>支出人</th>
						  <th>支出金额</th>
						  <th>支出时间</th>
						  <th> 支出原因</th>
						  <th>备注</th>
						  <th>操作</th>
						</tr>
					</thead>
					<tbody></tbody> 
					<tfoot>
						<tr>
						  <th>序号</th>
						  <th>支出人</th>
						  <th>支出金额</th>
						  <th>支出时间</th>
						  <th> 支出原因</th>
						   <th>备注</th>
						  <th>操作</th>
						</tr>
					</tfoot>
				</table>    		
             </div>
          </div>
        </div>
   </div>
   
</section>

            
