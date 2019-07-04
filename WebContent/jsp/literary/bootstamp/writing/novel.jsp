<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="../../../init/tags.jsp"%>

<link rel="stylesheet"
	href="<%=request.getContextPath() %>/jsp/static/css/bootstamp/bootstampztree/bootstrapztree.css">

<script type="text/javascript"
	src="<%=request.getContextPath() %>/jsp/static/js/bootstamp/bootstampztree/jquery.ztree.core.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath() %>/jsp/static/js/bootstamp/bootstampztree/jquery.ztree.excheck.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath() %>/jsp/static/js/bootstamp/bootstampztree/jquery.ztree.exedit.js"></script>
<div id="tree"></div>
<ul id="treeDemo" class="ztree col-sm-3" style="overflow:auto;float:left;"></ul>
<div class="col-sm-9" style="overflow: auto; float: right; padding-left: 0px;height:100%;">
	<textarea class="form-control height-100" id="novel_comment" name="novel_comment" style="text-decoration: none;height:93%!important;">  
		
	</textarea>
	<button type="button" class="btn btn-primary btn-novel-submit" style="margin-top: 7px;">保存</button>
	<div id="dateTimeNovel"></div>
</div>
<script type="text/javascript">
var setting = {
    view: {
        addHoverDom: addHoverDom,
        removeHoverDom: removeHoverDom,
        selectedMulti: false
    },
    check: {
        enable: true
    },
    data: {
        simpleData: {
            enable: true
        }
    },
    edit: {
        enable: true
    }
};

var zNodes =[
{id:1, pId:0, name:"请输入小说名", open:true}
];

$(document).ready(function(){
    $.fn.zTree.init($("#treeDemo"), setting, zNodes);
});

var newCount = 1;
function addHoverDom(treeId, treeNode) {
    var sObj = $("#" + treeNode.tId + "_span");
    if (treeNode.editNameFlag || $("#addBtn_"+treeNode.tId).length>0) return;
    var addStr = "<span class='button add' id='addBtn_" + treeNode.tId
        + "' title='add node' onfocus='this.blur();'></span>";
    sObj.after(addStr);
    var btn = $("#addBtn_"+treeNode.tId);
    if (btn) btn.bind("click", function(){
        var zTree = $.fn.zTree.getZTreeObj("treeDemo");
        zTree.addNodes(treeNode, {id:(100 + newCount), pId:treeNode.id, name:"new node" + (newCount++)});
        return false;
    });
};
function removeHoverDom(treeId, treeNode) {
    $("#addBtn_"+treeNode.tId).unbind().remove();
};
</script>
