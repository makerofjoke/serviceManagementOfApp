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

<div class="content-wrap bodyScroll"  style="width: 100%;background: #7178a1;">
<section class="panel panel-form" style="background:#546189;box-shadow: 0px 3px 5px 0px rgba(0,0,0,0.20);">
<input type="hidden" id="serviceID" name="serviceID" value="${id}"/>
<form id="form" method="post" action="${ctx}/serviceArrange/updateSevice"  prevURL="" class="form-horizontal required-validate" onsubmit="return validateCallback(this,getSaverslt);">
	<div class="box-body" style="padding-left:6%;">
	<input type="hidden" id="id" name="id" value="${id}"/>
	<input type="hidden" id="initValue" name="initValue" value="${initValue}"/>
	<input type="hidden" id="relativeID" name="relativeID" value="${relativeID}"/>
	<div class="" style="padding: 0.44% 0.9% 0.09% 0.09%">
		    	<label class=""  style="margin-left:-2.6%;font-size:20px;text-align:right;color:#FFFFFF" >元数据设置</label>
			</div>
		<div class="form-group" style="padding: 0.44% 0.9% 0.09% 2.6%">
			<label for="adtype" class="control-label col-xs-2"  style="display:;margin-left: -5.3%;"><font class="white">服务名称<span style="color:red;font-size:20px;">*</span>：</font></label>
		    <div class="col-xs-3" style="margin-left: -2%;">
		    	<input type="text" id="serviceName" name="serviceName" class="form-control" value="${service.serviceName}" onkeyup="javascript:checkName('serviceName');"  style="width: 130%;color:#c0c0c0;background: rgba(216,216,216,0.30);border-radius: 10px;" required="required"/>
			</div>
		</div>
<!-- 		<div class="form-group"> -->
<!-- 			<label for="dataIP" class="control-label col-xs-2"  style="display:">命名空间：</label> -->
<!-- 		    <div class="col-xs-3" > -->
<%-- 		    	 <input type="text" name="nameSpace" class="form-control" value="${nameSpace}"   style="width: 80%;" /> --%>
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 		<div class="form-group"> -->
<!-- 			<label for="dataIP" class="control-label col-xs-2"  style="display:">标签*：</label> -->
<!-- 		    <div class="col-xs-3" > -->
<%-- 		    	 <input type="text" name="labelName" class="form-control" value="${labelName}"   style="width: 80%;" /> --%>
<!-- 			</div> -->
<!-- 		</div> -->
		<div class=""  style="padding: 0.44% 0.9% 0.09% 0.09%">
		    	<label class=""  style="margin-left:-2.6%;font-size:20px;text-align:right;color:#FFFFFF" >属性设置</label>
			</div>
		<div class="form-group" style="padding: 0.44% 0.9% 0.09% 2.6%">
			<label for="userName" class="control-label col-xs-2"  style="display:;margin-left: -5.3%;"><font class="white">匹配标签名<span style="color:red;font-size:20px;">*</span>：</font></label>
		    <div class="col-xs-3" style="margin-left: -2%;">
		    	 <input type="text" name="labelName" id="labelName" class="form-control" value="${service.labelName} " onkeyup="javascript:checkName('labelName');"  style="width: 130%;color:#c0c0c0;background: rgba(216,216,216,0.30);border-radius: 10px;" required="required"/>
			</div>
		</div>
		<div class="form-group"  style="padding: 0.44% 0.9% 0.09% 2.6%">
			<label for="userName" class="control-label col-xs-2"  style="display:;margin-left: -5.3%;"><font class="white">匹配标签值<span style="color:red;font-size:20px;">*</span>：</font></label>
		    <div class="col-xs-3" style="margin-left: -2%;">
		    	 <input type="text" name="labelValue" id="labelValue" class="form-control" value="${service.labelValue} "  onkeyup="javascript:checkName('labelValue');" style="width: 130%;color:#c0c0c0;background: rgba(216,216,216,0.30);border-radius: 10px;" required="required"/>
			</div>
		</div>
		<div class="form-group"  style="padding: 0.44% 0.9% 0.09% 2.6%">
		    <div class="" style="margin-left:11%;margin-bottom:1.3%;">
		    	<a class=""  style="padding:8px 16px;background:#7993C0;border:none;border-radius: 5px;color:#FFFFFF" href="javascript:addPort()" >+创建</a>
			</div>
			<label for="userName" class="control-label col-xs-2"  style="display:;margin-left: -5.3%;"><font class="white">端口添加：</font></label>
			 <div class="col-xs-4" style="margin-left: -2%;">
			 	<div style="width:245%;height:200px;overflow-y:auto;background:#7B84A0;border:none;border-radius: 10px;"  class="form-control" id="ports">
			 	  <!-- <div id="123">
			 	  	<input type="checkbox"/><span style="margin-left:10px;"">80/8080</span></br>
			 	  </div id="124"> -->
			 	  <table class="table table-hover table-bordered">
			 	  	<thead>
						<tr>
<!-- 							<th style="text-align: center;vertical-align: middle;"></th> -->
							<th style="text-align: center;vertical-align: middle;background:#D8DDF4;border:none;border-radius: 10px;color:#000000;width:200px">类型</th>
							<th style="text-align: center;vertical-align: middle;background:#D8DDF4;border:none;border-radius: 10px;color:#000000;width:200px">内部端口</th>
							<th style="text-align: center;vertical-align: middle;background:#D8DDF4;border:none;border-radius: 10px;color:#000000;width:200px">目标端口</th>
							<th style="text-align: center;vertical-align: middle;background:#D8DDF4;border:none;border-radius: 10px;color:#000000;width:200px">节点端口</th>
							<th style="text-align: center;vertical-align: middle;background:#D8DDF4;border:none;border-radius: 10px;color:#000000;width:200px">操作</th>
						</tr>
					</thead>
					<tbody id="tbody">
						 <c:forEach items="${list}" var="ServicePorts" varStatus="status">
							 <tr target="slt_uid" rel="${ServicePorts.id}" id="${ServicePorts.id}">
<%-- 							   	<td><input type="checkbox" data-value="${ServicePorts.id}"></td> --%>
							   	<td>${ServicePorts.Type}</td>
							    <td>${ServicePorts.interPort}</td>
							    <td>${ServicePorts.targetPort}</td>
							    <td>${ServicePorts.nodePort}</td>
										<td>
											<div class="btn-group">
												<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true"><i class="fa fa-fw fa-cog"></i> <span class="caret"></span></a>
												<ul class="dropdown-menu" role="menu">
<%-- 									                <li><a class="layOpenWindow"  href="${ctx}/data/preUpdate/${datasource.id}" >修改</a></li> --%>
									            	<li><a class="layOpenWindow"  href="javascript:deletePort('${ServicePorts.id}')" >删除</a></li>
									            </ul>
						                   </div> 
										</td>
							</tr>
						</c:forEach> 
					</tbody>
				</table>
			 	</div>
				<!-- <textarea  class="form-control" id="description" name="description" value=""      style="width: 800px;min-height:200px;display:"   ></textarea> -->
			</div>
		</div>
	</div>
		<br>
		<div class="row" style="width: 100%;margin-top:5%;" align="center">
			</div>	
		<div class="row text-center" style="width: 100%" align="center">
				<button type="button" class="btn btn-primary" style="background: #ef8532;border-radius: 10px; box-shadow: 0px 3px 5px 0px rgba(0, 0, 0, 0.20);border:none;width:10.6%" onclick="javascript:judge()">保存</button>
		</div>
		<div class="row" style="width: 100%;margin-top:10%;" align="center">
			</div>
</form>
</section>
</div>
<script type="text/javascript">

var flag = true;

function judge(){
	if(flag==true){
	var list = JSON.parse('${serviceNameList}');
	var serviceName = $('input[name="serviceName"]').val();
	if(serviceName ==''){
		top.layer.msg("服务名不能为空", {icon : 2});
		return;
	}else{
		for(var i=0;i<list.length;i++){
		//	console.log("list: "+list[i]);
			if(serviceName==list[i]){
				alert("网络组件名称已存在");
				return;
			}
		}
		$("#form").submit();
	}
	}
	else{
		alert("输入不符合要求");
	}
}


function getSaverslt(rslt){
	 if (rslt.statusCode == "200") {
		 	var serviceName = $("#serviceName").val();
		 	var labelName = $('input[name="labelName"]').val();
		    var frame = findMainFrame();
			var con = $(frame.contentWindow.document).find("#test");
			var graph = frame.contentWindow.getGraph();
// 			var serviceID = $('input[name="serviceID"]').val();
//  			var Type;
//  			var interPort;
//  			var targetPort;
//  			var nodePort;
//  			var id;
//  			var data;
			
// 			var node_name01 =  "${nodeName}";
// 			console.log("initValue: " + node_name01);
			
// 			var node1 = graph.getElementByName("${nodeName}");
// 			console.log("node1: "+ node1);
			
			var num = 0;
			parent.layer.close(index);
 			 $("tbody tr").each(function(){
 				 num = num + 1;
					  $.ajax({
						  type: 'POST',
						  url: '${ctx}/serviceArrange/insertServicePort',
						  data: {"serviceID":$('input[name="serviceID"]').val(),
 								"serviceName":$('input[name="serviceName"]').val(),
 								"relativeID":$('input[name="relativeID"]').val(),
								"Type":$(this).closest("tr").find("td").eq(0).text(),
								"interPort":$(this).closest("tr").find("td").eq(1).text(),
								"targetPort":$(this).closest("tr").find("td").eq(2).text(),
								"id":$(this).closest("tr").attr('id'),
								"nodePort":$(this).closest("tr").find("td").eq(3).text()},
						  dataType:'json',
						  suceess: function(msg){
						  }
					  });
			});
 			var portNum = num + "";
			var nodename = '${service.serviceName}'+"\n标签:"+'${service.labelName}'+"\n端口:"+'${portNum}'+"个";
 			graph.getElementByName(nodename).name = serviceName+"\n标签:"+labelName+"\n端口:"+portNum+"个";
		    var index = parent.layer.getFrameIndex(window.name);
			parent.layer.close(index);
 			top.layer.msg("修改成功", {icon : 1});
			
	 }else{
		 top.layer.msg("修改失败", {icon : 2});
	 }
}
 
 function addPort(){
// 	 var serviceID = $('input[name="serviceID"]').val();
// 	 var serviceName = $('input[name="serviceName"]').val();
// 	 var relativeID = $('input[name="relativedId"]').val(); 
// 	 if(serviceName ==''){
// 		 top.layer.msg("服务名不能为空", {icon : 2});
// 		 return;
// 	 }
	 top.layer.open({
			title : "创建端口",
			id : 'addPort',
			type : 2,
			area : [ "22%", "40%" ],
			shadeClose : true,
			offset : "150px",
			scrollbar: true,
			maxmin : true,
			anim : 5,
			content : ["${ctx}/serviceArrange/preCreateServicePort"],
			zIndex : 2,
			success : function(layero, index) {
				top.layerFrameConfig['addPort'] = {
					layer_index : index,
					layer_layero : layero
				}
			}
		});
 }
 function deletePort(id){
// 	 var ids=getSelectIds();
//      if(ids=='')
//      {
//     	 layer.alert("请选择需要删除的端口");
//     	 return;
//      }
	 layer.confirm("确定删除吗?", {
		  btn: ['确定','取消'] //按钮
		}, function()
		{
			//关闭弹窗
 			$("#"+id).remove();
// 			$('tr[id=trid]').remove();
			layer.close(layer.index);
		   /*  customAjaxTodo("${ctx}/serviceArrange/delete/"+id, function(msg)
		   		 {
		   	 		 var m=JSON.parse(msg);
		   	 		 window.location.reload();
		   	 		 top.layer.msg(m.message, {icon: 1});
		   	 		 
		   		 }); */
			 
		}, function()
		{
		 	 layer.close();
		})
 }

//管控
 function checkName(name){
	 var text = $("input[name='"+name+"']").val();
// 	 var reg= /^\w+$/;
     var reg= /^[A-Za-z0-9_\-]+$/;
     if(text==""){
    	 return;
     }
	 if(!reg.test(text)){
	//	alert("只能输入由数字、英文字母、下划线或减号");
		top.layer.msg("只能输入由数字、英文字母、下划线或减号", {icon : 2});
		flag = false;
	 }else{
		 flag = true;
	 }
 }
//  function updatePort(id){
// 	 top.layer.open({
// 			title : "修改端口",
// 			id : 'updatePort',
// 			type : 2,
// 			area : [ "35%", "60%" ],
// 			shadeClose : true,
// 			offset : "20px",
// 			scrollbar: true,
// 			maxmin : true,
// 			anim : 5,
// 			content : ["${ctx}/serviceArrange/preUpdateServicePort/"+id],
// 			zIndex : layer.zIndex,
// 			success : function(layero, index) {
// 				top.layerFrameConfig['updatePort'] = {
// 					layer_index : index,
// 					layer_layero : layero
// 				}
// 			}
// 		});
//  }
</script>
