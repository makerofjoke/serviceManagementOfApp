<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/views/include.inc.jsp"%>
<meta name="decorator" content="default"/>
<!-- Hints:
     1. The code was automatic created;
     2. Any other questions can ask the software engineer for help.
	 @author sysadmin
	 @date 2018-05-09
	 @Copyright:江苏金恒信息科技股份有限公司
 -->
<head>
<script src="http://demo.qunee.com/lib/qunee-min.js"></script>
<script src="${ctx}/static/serviceArrange/serviceArrange.js"></script>
<style type="text/css">

.selectRole button,.selectUser button{color:red;width: 20px;
		border: none;text-align:center;
		background-color: AliceBlue;
		cursor: pointer;
		border-radius:10px;}
.white {
	font-size: 15px;
	font-weight: SC;
	color: #ffffff;
	line-height: 25px;
	position: relative;
}
</style>

</head>
<link rel="stylesheet" href="${ctx}/static/custom/colorPicker/css/normalize.css" type="text/css" />
<link rel="stylesheet" href="${ctx}/static/custom/colorPicker/css/style.css" type="text/css" />
<link rel="stylesheet" href="${ctx}/static/custom/colorPicker/css/colpick.css" type="text/css" />
<!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<![endif]-->
<%-- <script src="${ctx}/static/custom/colorPicker/js/jquery.min.js"></script> --%>
<script src="${ctx}/static/custom/colorPicker/js/colpick.js"></script>
<script src="${ctx}/static/custom/colorPicker/js/plugin.js"></script>

<div class="content-wrap">
<section class="panel panel-form" style="background:#546189;box-shadow: 0px 3px 5px 0px rgba(0,0,0,0.20);">
<form id="form" method="post" action="${ctx}/serviceArrange/createPort"  prevURL="" class="form-horizontal required-validate" onsubmit="return validateCallback(this,getSaverslt);">
	<div class="box-body" style="padding-left:8%;">
	<input type="hidden" id="relativedId" name="id" value="${id}">
	<div class="" style="padding: 0.4% 1.1% 0.1% 0.1%">
		    	<label class=""  style="margin-left:-7%;font-size:20px;text-align:right;color:#FFFFFF" >端口设置</label>
			</div>
		<div class="form-group" style="padding: 0.4% 1.1% 0.1% 0.5%">
			<label for="portType" class="control-label col-xs-2"  style="display:;text-align:right;"><font class="white">类型*：</label>
		    <div class="col-xs-3"  style="margin-left: -6.7%;">
		    <select name="dataType" value="${portType}" class="form-control" style="text-align: center; width: 100%;color:#c0c0c0;background: rgba(216,216,216,0.30);border-radius: 10px;">
					<option value="">---请选择---</option>
				    <option value="A">A-结构化数据</option>
				    <option value="B">B-非结构化数据</option>
			    </select>
			</div>
		</div>
		<div class="form-group" style="padding: 0.4% 1.1% 0.1% 0.5%">
			<label for="dataIP" class="control-label col-xs-2"  style="display:;text-align:right;"><font class="white">端口名称：</font></label>
		    <div class="col-xs-3" style="margin-left: -6.7%;">
		    	 <input type="text" name="nameSpace" class="form-control" value="${nameSpace}"   style="width: 100%;color:#c0c0c0;background: rgba(216,216,216,0.30);border-radius: 10px;" />
			</div>
		</div>
		<div class="form-group" style="padding: 0.4% 1.1% 0.1% 0.5%">
			<label for="dataIP" class="control-label col-xs-2"  style="display:;text-align:right;"><font class="white">内部端口号：</font></label>
		    <div class="col-xs-3" style="margin-left: -6.7%;">
		    	 <input type="text" name="nameSpace" class="form-control" value="${nameSpace}"   style="width: 100%;color:#c0c0c0;background: rgba(216,216,216,0.30);border-radius: 10px;" />
			</div>
		</div>
		<div class="form-group" style="padding: 0.4% 1.1% 0.1% 0.5%">
			<label for="dataIP" class="control-label col-xs-2"  style="display:;text-align:right;"><font class="white">目标端口号*：</font></label>
		    <div class="col-xs-3" style="margin-left: -6.7%;">
		    	 <input type="text" name="labelName" class="form-control" value="${labelName}"   style="width: 100%;color:#c0c0c0;background: rgba(216,216,216,0.30);border-radius: 10px;" />
			</div>
		</div>
		<div class="form-group" style="padding: 0.4% 1.1% 0.1% 0.5%">
			<label for="dataIP" class="control-label col-xs-2"  style="display:;text-align:right;"><font class="white">节点端口号*：</font></label>
		    <div class="col-xs-3" style="margin-left: -6.7%;">
		    	 <input type="text" name="labelName" class="form-control" value="${labelName}"   style="width: 100%;color:#c0c0c0;background: rgba(216,216,216,0.30);border-radius: 10px;" />
			</div>
		</div>
	</div>
		<br>	
		<div class="row text-center" style="width: 45%;" align="center">
				<button type="submit" class="btn btn-primary" style="background: #ef8532;border-radius: 10px; box-shadow: 0px 3px 5px 0px rgba(0, 0, 0, 0.20);border:none;width:30%">确定</button>
		</div>
		<div class="row" style="width: 100%;margin-top:30px;" align="center">
			</div>
</form>
</section>
</div>
<script type="text/javascript">
 function saveNodes(){
		var frame = findMainFrame();
		var con = $(frame.contentWindow.document).find("#test");
		var graph = frame.contentWindow.getGraph();
		alert(graph.getElementByName("Service1").name);
	}
 
 function addPort(){
	 top.layer.open({
			title : "数据源新增",
			id : 'addPort',
			type : 2,
			area : [ "50%", "80%" ],
			shadeClose : true,
			offset : "20px",
			scrollbar: true,
			maxmin : true,
			anim : 5,
			content : ["${ctx}/data/prePortCreate"],
			zIndex : layer.zIndex,
			success : function(layero, index) {
				top.layerFrameConfig['addPort'] = {
					layer_index : index,
					layer_layero : layero
				}
			}
		});
 }
 
 function getSaverslt(rslt){
	 var doc = findLayDoc();
	 var ports = doc.find("#ports");
 	 if (rslt.statusCode == "200") {
 		top.layer.msg("新增成功", {icon : 1});
 		$(ports).html("");
 		$(rslt.message).each(function(n,value){
 			$(ports).append("<input type='checkbox'/><span style='margin-left:10px;'>"+value.portName+"</span></br>");
 		});
 		
 	}else{
 		top.layer.msg("新增失败", {icon : 2});
 	}
 	var index = parent.layer.getFrameIndex(window.name);
	parent.layer.close(index);
 }
 function findLayDoc()
 {
 	var iframeWin;
 	var frameId = "addService";
 	if (frameId != "none") {
 		var lfc = top.layerFrameConfig;
 		var iframeDIndex = lfc[frameId].layer_index;
 		var iframeDLayero = lfc[frameId].layer_layero;
 		console.log(iframeDIndex + "----" + iframeDLayero);
 		iframeWin = top["layui-layer-iframe" + iframeDIndex]
 	} else {
 		iframeWin = parent["mainFrame"]
 	}
 	doc = $(iframeWin.document);
 	return doc;
 }
 
//管控
 function checkInt(name){
	 var text = $("input[name='"+name+"']").val();
	 var reg= /^[0-9]*[1-9][0-9]*$/;
	 if(!reg.test(text)){
		alert("只能输入正整数");
		flag = false;
	 }else{
		 flag = true;
	 }
 }
</script>
