var DateTableSearch = {
	language : {
		/*show : "显示&nbsp",
		entries : "&nbsp条",
		total : "&nbsp共&nbsp",
		to : "&nbsp至&nbsp",
		sLengthMenu : "每页显示 _MENU_ 条记录",
		sZeroRecords : "没有检索到数据",
		sInfo : "显示 _START_ 至 _END_ 条 &nbsp&nbsp共 _TOTAL_ 条",
		sInfoEmtpy : "没有数据",
		sInfoFiltered : "筛选自 _MAX_ 条数据",
		sProcessing : "正在加载数据...",
		paginate : {
			first : "首页",
			previous : "首页",
			next : "下一页",
			last : "尾页"
		}*/
		zhCN : {
			show : "显示&nbsp",
			entries : "&nbsp条",
			total : "&nbsp共&nbsp",
			to : "&nbsp至&nbsp",
			sLengthMenu : "每页显示 _MENU_ 条记录",
			sZeroRecords : "没有检索到数据",
			sInfo : "显示 _START_ 至 _END_ 条 &nbsp&nbsp共 _TOTAL_ 条",
			sInfoEmtpy : "没有数据",
			sInfoFiltered : "筛选自 _MAX_ 条数据",
			sProcessing : "正在加载数据...",
			paginate : {
				first : "首页",
				previous : "上一页",
				next : "下一页",
				last : "尾页"
			}
		},
		enUS : {
			show : "Showing&nbsp",
			entries : "&nbspentries",
			total : "&nbspof&nbsp",
			to : "&nbspto&nbsp",
			sSearch : "search",
			sLengthMenu : "Show _MENU_ entries",
			sZeroRecords : " No records to display",
			sInfo : "Show _START_ to _END_ of _TOTAL_ entries",
			sInfoEmtpy : "No entries to show",
			sInfoFiltered : "- filtered from _MAX_ records",
			sProcessing : "DataTables is currently busy",
			paginate : {
				first : "first",
				previous : "Previous",
				next : "next",
				last : "last"
			}
		}
	},
	_defaults : {
		select : false,
		fixedHeader : true,
		pagingType : "full",
		paginationType: "full_numbers",
		info : false,//页脚信息
		paginate : true, //翻页功能
		searching : false,//是否查找
		processing : true, //加载数据时显示正在加载信息   
		serverSide : true, //指定从服务器端获取数据  
		retrieve : true,
		ordering : true,//是否排序
		destroy : true,
		sort : true, //是否启动各个字段的排序功能  
		autoWidth : true, //是否自适应宽度  
		info : true,//页脚信息
		lengthMenu : [ 5, 10, 20 ],
		order : [ [ 0, "desc" ] ]
	},
	/**
	 * 获取ajax分页options设置
	 */
	getAjaxPagingOptions : function(settings) {
		var options = {
			ajax : settings.ajax,
			serverSide : settings.serverSide == null ? this._defaults.serverSide : settings.serverSide,
			processing : settings.processing == null ? this._defaults.processing : settings.processing,
			ordering : settings.ordering == null ? this._defaults.ordering : settings.ordering,
			searching : settings.searching == null ? this._defaults.searching : settings.searching,
			pagingType : settings.pagingType == null ? this._defaults.pagingType : settings.pagingType,
			lengthMenu : settings.lengthMenu == null ? this._defaults.lengthMenu : settings.lengthMenu,
			order : settings.order == null ? this._defaults.order : settings.order,
			language : settings.language == null || settings.language == undefined ? this.language.zhCN : settings.language,
			info :settings.info == null ? this._defaults.info : settings.info,
			retrieve: settings.retrieve == null ? this._defaults.retrieve : settings.retrieve,
			serverSide: settings.serverSide == null ? this._defaults.serverSide : settings.serverSide,
			fixedHeader: settings.fixedHeader == null ? this._defaults.fixedHeader : settings.fixedHeader,
			destroy: settings.destroy == null ? this._defaults.destroy : settings.destroy,
			paginationType: settings.paginationType == null ? this._defaults.paginationType : settings.paginationType,
			ordering: settings.ordering == null ? this._defaults.ordering : settings.ordering,
			autoWidth: settings.autoWidth == null ? this._defaults.autoWidth : settings.autoWidth,
			sort: settings.sort == null ? this._defaults.sort : settings.sort,
			paginate: settings.paginate == null ? this._defaults.paginate : settings.paginate,
			columns : settings.columns,
			columnDefs : settings.columnDefs,
			returnData:settings.returnData			
		};
		return options;
	},
	ajaxPageParam :function(data,settings){
		var settingParam = settings.ajax.param;
		console.log(typeof(settingParam))
		//分页参数pagesize 名称
    	var paseSizeName = settings.ajax.paseSizeName;
    	//分页参数pagenumber 名称
    	var paseNumberName = settings.ajax.paseNumberName;
    	//当前页码
    	var pageNum = (data.start/data.length)+1;
    	//页面显示记录条数，在页面显示每页显示多少项的时候
   		var pageSize =  data.length;
   		//无传入参数
   		if(settingParam ==null || settingParam==undefined){
   			var result="";
   			if(paseNumberName!=null && paseNumberName!=undefined){
   				result = paseNumberName+"="+pageNum;
   			}
   			if(paseSizeName!=null && paseSizeName!=undefined){
   				if(result.length>=0){
   					result = result+"&"
   				}
   				result =result+ paseSizeName+"="+pageSize;
   			}
   			return result;
   		}
   		//传入参数为object
   		if(typeof(settingParam)=='object'){
  	   		var obj = new Object();
  	   		if(paseNumberName!=null && paseNumberName!=undefined){
				obj[paseNumberName] = pageNum;
			}
  	   		if(paseNumberName!=null && paseNumberName!=undefined){
  	   			obj[paseSizeName] = pageSize;
			}
  	   		var param = $.extend({},settingParam, obj);
   			return param;
   		}else if(typeof(settingParam)=='string'){
   			var result=settingParam;
   			if(paseNumberName!=null && paseNumberName!=undefined){
   				if(result.length>=0){
   					result = result+"&"
   				}
   				result = result + paseNumberName+"="+pageNum;
   			}
   			if(paseSizeName!=null && paseSizeName!=undefined){
   				if(result.length>=0){
   					result = result+"&"
   				}
   				result =result+ paseSizeName+"="+pageSize;
   			}
   			return result;
   		}
   		return null;
	},
	dataTableSearch:function(demoId, settings){
		$('#'+demoId).DataTable().destroy();
		$('#'+demoId).DataTable({
			language:settings.language,
			processing : settings.processing ,
			paginationType : settings.paginationType,
			searching : settings.searching ,
			pagingType : settings.pagingType,
			lengthMenu : settings.lengthMenu ,
			retrieve : settings.retrieve ,
			serverSide : settings.serverSide ,
			autoWidth : settings.autoWidth ,
			fixedHeader : settings.fixedHeader ,
			order : settings.order ,
			sort : settings.sort ,
			ordering :settings.ordering,
			info :settings.info,
			paginate: settings.paginate,
			destroy: settings.destroy,
			columns : settings.columns,
			columnDefs : settings.columnDefs,
	        ajax: function (data, callback, settings_) {
	        	var param = DateTableSearch.ajaxPageParam(data,settings);
	        	console.log(param);
      	   		$.ajax({
	      	   		type : settings.ajax.type,
	    			url : settings.ajax.url,
	    			async : settings.ajax.async == null ? false : settings.ajax.async,
	    			cache : settings.ajax.cache == null ? false : settings.ajax.cache, //禁用缓存
	    			data : param, //传入组装的参数
	    			dataType :settings.ajax.dataType ==null? "json" :settings.ajax.dataType, //传入组装的参数,
      	   			success : function(result) {
      	   			
						setTimeout(function() {
							
							//封装返回数据
							var returnData={};
							if(settings.returnData!=null && settings.returnData!=undefined){
								returnData = settings.returnData(result);
							}
							if(returnData.recordsTotal==null || returnData.recordsTotal==undefined){
								returnData.recordsTotal=result.data.totalCount;//返回数据全部记录
								returnData.recordsFiltered=result.data.totalCount;//后台不实现过滤功能，每次查询均视作全部结果
								//增加操作按钮 
								//返回的数据列表
								//dataList
								if(settings.ajax.dataList==null||settings.ajax.dataList==undefined){
									returnData.data = result.data.resultList;
								}else{
									returnData.data = result.data[settings.ajax.dataList];
								}
							}
							callback(returnData);
						}, 200);
					},
					error: function(XMLHttpRequest, textStatus, errorThrown) {
						 console.log(errorThrown);
				   }
				});
	        }
        } ); 
	}

}
