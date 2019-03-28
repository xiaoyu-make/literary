<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="shortcut icon" type="image/x-icon"
	href="<%=request.getContextPath()%>/jsp/static/image/favicon.ico"
	media="screen" />
<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/jsp/static/css/easyui.css" />
<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/jsp/static/css/icon.css" />
<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/jsp/static/css/demo.css" />

<script type="text/javascript"
	src="<%=request.getContextPath()%>/jsp/static/js/jquery.easyui.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/jsp/static/js/main.js?0=9"></script>
<script type="text/javascript">
/**
* Name 分页过滤器
*/
function pagerFilter(data){            
	if (typeof data.length == 'number' && typeof data.splice == 'function'){// is array                
		data = {                   
			total: data.length,                   
			rows: data               
		}            
	}        
	var dg = $(this);         
	var opts = dg.datagrid('options');          
	var pager = dg.datagrid('getPager');          
	pager.pagination({                
		onSelectPage:function(pageNum, pageSize){                 
			opts.pageNumber = pageNum;                   
			opts.pageSize = pageSize;                
			pager.pagination('refresh',{pageNumber:pageNum,pageSize:pageSize});                  
			dg.datagrid('loadData',data);                
		}          
	});           
	if (!data.originalRows){               
		data.originalRows = (data.rows);       
	}         
	var start = (opts.pageNumber-1)*parseInt(opts.pageSize);          
	var end = start + parseInt(opts.pageSize);        
	data.rows = (data.originalRows.slice(start, end));         
	return data;       
}
$('#dg').datagrid({
	loadFilter:pagerFilter,	
	pageSize:10,           
	pagination:true,
	fitcolumns:true,
	nowrap:false,
});
function formatDatebox(value) {  
    if (value == null || value == '') {  
        return '';  
    }  
    var dt = parseToDate(value);//关键代码，将那个长字符串的日期值转换成正常的JS日期格式  
    return dt.format("yyyy-MM-dd hh:mm:ss"); //这里用到一个javascript的Date类型的拓展方法，这个是自己添加的拓展方法，在后面的步骤3定义  
}  	
</script>
<table id="dg" class="easyui-datagrid" title="dailySentence"
	data-options="url:'http://10.180.26.102:8080/literary_world/jsp/literary/findAllAboutMe',method:'get'">
	<thead>
		<tr style="overflow: hidden;">
			<th data-options="field:'ck',checkbox:true"></th>
			<th data-options="field:'id',width:80">ID</th>
			<th style=" word-break: break-all;" data-options="field:'dailySentence',width:1300">DailySentence</th>
			<th data-options="field:'date',width:200" >Date</th>
		</tr>
	</thead>
</div>
	
</table>
