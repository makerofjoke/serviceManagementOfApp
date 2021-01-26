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
.control-label{
	text-align:left !important ;
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

<div class="content-wrap bodyScroll" style="width: 100%;background: #7178a1;">
<section class="panel panel-form" style="background:#546189;box-shadow: 0px 3px 5px 0px rgba(0,0,0,0.20);">

<form id="form" method="post" action="${ctx}/serviceArrange/updateDeployment"  prevURL="" class="form-horizontal required-validate" onsubmit="return validateCallback(this,getSaverslt);">
	<div class="box-body" style="padding-left:70px;">
	<input type="hidden" id="id" name="id" value="${id}"/>
	<input type="hidden" id="relativedId" name="relativeId" value="${relativeId}"/>
	<input type="hidden" id="initValue" name="initValue" value="${initValue}"/>
	<div class="" style="padding: 5px 10px 1px 1px">
		    	<label class=""  style="margin-left:-30px;font-size:20px;text-align:right;color:#FFFFFF" >应用模块设置</label>
			</div>
		<div class="form-group" style="padding: 5px 10px 1px 30px">
			<label for="adtype" class="control-label col-xs-2"  style="display:"><font class="white">&emsp;&nbsp;&nbsp;模块名称<span style="color:red;font-size:20px;">*</span>:</font></label>
		    <div class="col-xs-3" style="margin-left: -60px;">
		    	<input type="text" name="deploymentName" class="form-control" value="${createDeploymentEntity.deploymentName}"  onkeyup="javascript:checkName('deploymentName');" style="width: 300px;color:#c0c0c0;background: rgba(216,216,216,0.30);border-radius: 10px;" required="required"/>
			</div>
		</div>
		<div class="form-group" style="padding: 5px 10px 1px 30px">
			<label for="adtype" class="control-label col-xs-2"  style="display:"><font class="white">&emsp;&emsp;&emsp;副本数：</font></label>
		    <div class="col-xs-3" style="margin-left: -60px;">
		    	<input type="text" name="replicas" class="form-control" value="${createDeploymentEntity.replicas}" onkeyup="javascript:checkInt('replicas');"  style="width: 300px;color:#c0c0c0;background: rgba(216,216,216,0.30);border-radius: 10px;" />
			</div>
		</div>
		<div class="" style="padding: 5px 10px 1px 1px">
		    <label class=""  style="margin-left:-30px;font-size:20px;text-align:right;color:#FFFFFF" >容器组设置</label>
		</div>
		<div class="form-group" style="padding: 5px 10px 1px 30px">
			<label for="userName" class="control-label col-xs-2"  style="display:"><font class="white">&nbsp;&nbsp;容器组名称<span style="color:red;font-size:20px;">*</span>:</font></label>
		    <div class="col-xs-3" style="margin-left: -60px;">
		    	 <input type="text" name="podName" id="userName" class="form-control" value="${createDeploymentEntity.podName}"  onkeyup="javascript:checkName('podName');" style="width: 300px;color:#c0c0c0;background: rgba(216,216,216,0.30);border-radius: 10px;" required="required"/>
			</div>
		</div>
		<div class="form-group" style="padding: 5px 10px 1px 30px">
			<label for="userName" class="control-label col-xs-2"  style="display:"><font class="white">&emsp;&nbsp;&nbsp;标签名称<span style="color:red;font-size:20px;">*</span>:</font></label>
		    <div class="col-xs-3" style="margin-left: -60px;">
		    	 <input type="text" name="podLabelName" id="userName" class="form-control" value="${createDeploymentEntity.podLabelName}"  onkeyup="javascript:checkName('podLabelName');" style="width: 300px;color:#c0c0c0;background: rgba(216,216,216,0.30);border-radius: 10px;" required="required"/>
			</div>
			<label for="userName" class="control-label col-xs-2"  style="margin-left: 100px;"><font class="white">&emsp;&emsp;&emsp;标签值<span style="color:red;font-size:20px;">*</span>:</font></label>
		    <div class="col-xs-3" style="margin-left: -60px;">
		    	 <input type="text" name="podLabelValue" id="userName" class="form-control" value="${createDeploymentEntity.podLabelValue}" onkeyup="javascript:checkName('podLabelValue');"  style="width: 300px;color:#c0c0c0;background: rgba(216,216,216,0.30);border-radius: 10px;" required="required"/>
			</div>
		</div>
<!-- 		<div class="form-group"> -->
<!-- 			<label for="userName" class="control-label col-xs-2"  style="display:">容器组标签值*：</label> -->
<!-- 		    <div class="col-xs-3" > -->
<%-- 		    	 <input type="text" name="podLabelValue" id="userName" class="form-control" value="${createDeploymentEntity.podLabelValue}"   style="width: 80%;" /> --%>
<!-- 			</div> -->
<!-- 		</div> -->
		<div class="" style="padding: 5px 10px 1px 1px">
		    <label class=""  style="margin-left:-30px;font-size:20px;text-align:right;color:#FFFFFF" >容器设置</label>
		</div>
		<div class="form-group" style="padding: 5px 10px 1px 30px">
			<label for="userName" class="control-label col-xs-2"  style="display:"><font class="white">&emsp;&nbsp;&nbsp;容器名称<span style="color:red;font-size:20px;">*</span>:</font></label>
		    <div class="col-xs-3" style="margin-left: -60px;">
		    	 <input type="text" name="containerName" id="userName" class="form-control" value="${createDeploymentEntity.containerName}"  onkeyup="javascript:checkName('containerName');" style="width: 300px;color:#c0c0c0;background: rgba(216,216,216,0.30);border-radius: 10px;" required="required"/>
			</div>
		</div>
		<div class="form-group" style="padding: 5px 10px 1px 30px">
			<label for="userName" class="control-label col-xs-2"  style="display:"><font class="white">&emsp;&nbsp;&nbsp;容器镜像<span style="color:red;font-size:20px;">*</span>:</font></label>
		    <div class="col-xs-3" style="margin-left: -60px;">
		    	 <input type="text" name="containerImage" id="userName" class="form-control" value="${createDeploymentEntity.containerImage}"  style="width: 300px;color:#c0c0c0;background: rgba(216,216,216,0.30);border-radius: 10px;" required="required"/>
			</div>
		</div>
		<div class="form-group" style="padding: 5px 10px 1px 30px">
			<label for="userName" class="control-label col-xs-2"  style="display:"><font class="white">&emsp;&emsp;&nbsp;cpu上限：</font></label>
		    <div class="col-xs-3" style="margin-left: -60px;">
		    	 <input type="text" name="cpuLimit" id="userName" class="form-control" value="${createDeploymentEntity.cpuLimit}" onkeyup="javascript:checkInt('cpuLimit');"  style="width: 300px;color:#c0c0c0;background: rgba(216,216,216,0.30);border-radius: 10px;" />
			</div>
			<label for="userName" class="control-label col-xs-2"  style="margin-left: 100px;"><font class="white">&emsp;&emsp;&nbsp;内存上限：</font></label>
		    <div class="col-xs-3" style="margin-left: -60px;">
		    	 <input type="text" name="memoryLimit" id="userName" class="form-control" value="${createDeploymentEntity.memoryLimit}"  onkeyup="javascript:checkInt('memoryLimit');" style="width: 300px;color:#c0c0c0;background: rgba(216,216,216,0.30);border-radius: 10px;" />
			</div>
		</div>
<!-- 		<div class="form-group"> -->
<!-- 			<label for="userName" class="control-label col-xs-2"  style="display:">内存上限：</label> -->
<!-- 		    <div class="col-xs-3" > -->
<%-- 		    	 <input type="text" name="memoryLimit" id="userName" class="form-control" value="${createDeploymentEntity.memoryLimit}"   style="width: 80%;" /> --%>
<!-- 			</div> -->
<!-- 		</div> -->
		<div class="form-group" style="padding: 5px 10px 1px 30px">
			<label for="userName" class="control-label col-xs-2"  style="display:"><font class="white">&emsp;&emsp;&nbsp;cpu请求：</font></label>
		    <div class="col-xs-3" style="margin-left: -60px;">
		    	 <input type="text" name="cpuRequest" id="userName" class="form-control" value="${createDeploymentEntity.cpuRequest}"  onkeyup="javascript:checkCpuRequest();" style="width: 300px;color:#c0c0c0;background: rgba(216,216,216,0.30);border-radius: 10px;" />
			</div>
			<label for="userName" class="control-label col-xs-2"  style="margin-left: 100px;"><font class="white">&emsp;&emsp;&nbsp;内存请求：</font></label>
		    <div class="col-xs-3" style="margin-left: -60px;">
		    	 <input type="text" name="memoryRequest" id="userName" class="form-control" value="${createDeploymentEntity.memoryRequest}"  onkeyup="javascript:checkMemRequest();" style="width: 300px;color:#c0c0c0;background: rgba(216,216,216,0.30);border-radius: 10px;" />
			</div>
		</div>
<!-- 		<div class="form-group"> -->
<!-- 			<label for="userName" class="control-label col-xs-2"  style="display:">内存请求：</label> -->
<!-- 		    <div class="col-xs-3" > -->
<%-- 		    	 <input type="text" name="memoryRequest" id="userName" class="form-control" value="${createDeploymentEntity.memoryRequest}"   style="width: 80%;" /> --%>
<!-- 			</div> -->
<!-- 		</div> -->
		<div class="form-group" style="padding: 5px 10px 1px 30px">
		    <div class="" style="margin-left:130px;margin-bottom:15px;">
		    	<a class=""  style="padding:8px 16px;background:#7993C0;border:none;border-radius: 5px;color:#FFFFFF" href="javascript:addContainerPort();">+添加</a>
			</div>
			<label for="userName" class="control-label col-xs-2"  style="display:"><font class="white">&emsp;&emsp;&nbsp;容器端口：</font></label>
			 <div class="col-xs-4" style="margin-left: -60px;">
			 	<div style="width:400px;height:150px;overflow-y:auto;"  class="form-control" id="ports">
			 	  <!-- <div id="123">
			 	  	<input type="checkbox"/><span style="margin-left:10px;"">80/8080</span></br>
			 	  </div id="124"> -->
			 	  <table class="table table-hover">
			 	    <thead>
						<tr>
							<th style="text-align: center;vertical-align: middle;background:#D8DDF4;border:none;border-radius: 10px;color:#000000;width:200px">端口名称</th>
							<th style="text-align: center;vertical-align: middle;background:#D8DDF4;border:none;border-radius: 10px;color:#000000;width:200px">端口号</th>
							<th style="text-align: center;vertical-align: middle;background:#D8DDF4;border:none;border-radius: 10px;color:#000000;width:200px">操作</th>
						</tr>
					</thead>
					<tbody id="tContainerPort">
						 <c:forEach items="${portList}" var="ContainerPort" varStatus="status">
							 <tr target="slt_uid" rel="" id="${ContainerPort.id}">
										<td>${ContainerPort.portName}</td>
										<td>${ContainerPort.portNumber}</td>
										<td>
											<div class="btn-group">
												<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true"><i class="fa fa-fw fa-cog"></i> <span class="caret"></span></a>
												<ul class="dropdown-menu" role="menu">
									            	<li><a class="layOpenWindow"  href=javascript:deleteContainerPort('${ContainerPort.id}') >删除</a></li>
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
		<div class="form-group" style="padding: 5px 10px 1px 30px">
		    <div class="" style="margin-left:130px;margin-bottom:15px;">
		    	<a class=""  style="padding:8px 16px;background:#7993C0;border:none;border-radius: 5px;color:#FFFFFF" href="javascript:addEnv();" >+添加</a>
			</div>
			<label for="userName" class="control-label col-xs-2"  style="display:"><font class="white">&emsp;&emsp;&nbsp;环境变量：</font></label>
			 <div class="col-xs-4" style="margin-left: -60px;">
			 	<div style="width:400px;height:150px;overflow-y:auto;"  class="form-control" id="ports">
			 	  <!-- <div id="123">
			 	  	<input type="checkbox"/><span style="margin-left:10px;"">80/8080</span></br>
			 	  </div id="124"> -->
			 	  <table class="table table-hover">
			 	    <thead>
						<tr>
							<th style="text-align: center;vertical-align: middle;background:#D8DDF4;border:none;border-radius: 10px;color:#000000;width:200px">环境变量名称</th>
							<th style="text-align: center;vertical-align: middle;background:#D8DDF4;border:none;border-radius: 10px;color:#000000;width:200px">环境变量值</th>
							<th style="text-align: center;vertical-align: middle;background:#D8DDF4;border:none;border-radius: 10px;color:#000000;width:200px">操作</th>
						</tr>
					</thead>
					<tbody id="tEnv">	
						 <c:forEach items="${envList}" var="Environment" varStatus="status">
							 <tr target="slt_uid" rel="" id="${Environment.id}">
										<td>${Environment.envvalName}</td>
										<td>${Environment.envvalValue}</td>
										<td>
											<div class="btn-group">
												<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true"><i class="fa fa-fw fa-cog"></i> <span class="caret"></span></a>
												<ul class="dropdown-menu" role="menu">
									            	<li><a class="layOpenWindow"  href=javascript:deleteEnv('${Environment.id}') >删除</a></li>
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
		<div class="row text-center" style="width: 100%" align="center">
<!--			<div class="col-xs-12">      -->
				<button type="button" class="btn btn-primary" style="background: #ef8532;border-radius: 10px; box-shadow: 0px 3px 5px 0px rgba(0, 0, 0, 0.20);border:none;width:120px" onclick="javascript:judge()">确定</button>
<!--			</div>    -->
		</div>
		<div class="row" style="width: 100%;margin-top:20px;" align="center">
			</div>

</form>
</section>
</div>


 
<script type="text/javascript">

var flag = true;

function judge(){
	if(flag==true){
		var list = JSON.parse('${deploymentNameList}');
	//	console.log("list: "+list);
		var name = $('input[name="deploymentName"]').val();
		for(var i=0;i<list.length;i++){
		//	console.log("list: "+list[i]);
			if(name==list[i]){
				alert("模块名称已存在");
				return;
			}
		}
		$("#form").submit();
	}else{
		alert("输入不符合要求");
	}
}

function getSaverslt(rslt){
	 if (rslt.statusCode == "200") {
		 	var containerName = $('input[name="containerName"]').val();
		 	var deploymentName = $('input[name="deploymentName"]').val();
		 	var replicas = $('input[name="replicas"]').val();
		 	var cpuLimit = $('input[name="cpuLimit"]').val();
		 	var initValue = $('input[name="initValue"]').val();
		    var frame = findMainFrame();
			var con = $(frame.contentWindow.document).find("#test");
			var graph = frame.contentWindow.getGraph();
		//	graph.getElementByName("${createDeploymentEntity.deploymentName}").init = initValue;

			//ContainerPort打包
			$("#tContainerPort tr").each(function(){
			       $.ajax({
			        type: 'POST',
			        url: '${ctx}/serviceArrange/updateContainerPort',
			        data: {
			        "deploymentId":$('input[name="id"]').val(),
			        "relativeId":$('input[name="relativeId"]').val(),
			        "containerName":$('input[name="containerName"]').val(),
			        "portName":$(this).closest("tr").find("td").eq(0).text(),
			        "portNumber":$(this).closest("tr").find("td").eq(1).text(),
			        "id":$(this).closest("tr").attr('id')},
			        dataType:'json',
			        suceess: function(msg){
			        }
			       });
			     });
			//Environment打包
			$("#tEnv tr").each(function(){
			       $.ajax({
			        type: 'POST',
			        url: '${ctx}/serviceArrange/updateEnv',
			        data: {
			        "deploymentId":$('input[name="id"]').val(),
			        "relativeId":$('input[name="relativeId"]').val(),
			        "containerName":$('input[name="containerName"]').val(),
			        "envvalName":$(this).closest("tr").find("td").eq(0).text(),
			        "envvalValue":$(this).closest("tr").find("td").eq(1).text(),
			        "id":$(this).closest("tr").attr('id')},
			        dataType:'json',
			        suceess: function(msg){
			        }
			       });
			     });
			var nodename = '${createDeploymentEntity.deploymentName}'+"\n副本:"+'${createDeploymentEntity.replicas}'+"\n配额:"+'${createDeploymentEntity.cpuLimit}'+"cpu";
			graph.getElementByName(nodename).name = deploymentName+"\n副本:"+replicas+"\n配额:"+cpuLimit+"cpu";
			var index = parent.layer.getFrameIndex(window.name);
			parent.layer.close(index);
		    top.layer.msg("修改成功", {icon : 1});
	 }else{
		 top.layer.msg("修改失败", {icon : 1});
	 }
}
 
 //新增ContainerPort
 function addContainerPort(){
	 if(containerName==""){
		 alert("容器名不能为空");
	 }else{
	 var containerName = $("input[name='containerName']").val();
//	 var id = $("input[name='id']").val();
//	 var relativeId = $("input[name='relativeId']").val();
	 top.layer.open({
			title : "新增容器端口",
			id : 'addContainerPort',
			type : 2,
			area : [ "422px", "28%" ],
			shadeClose : true,
			offset : "150px",
			scrollbar: true,
			maxmin : true,
			anim : 5,
			content : ["${ctx}/serviceArrange/preCreateContainerPort"],
			zIndex : 2,
			success : function(layero, index) {
				top.layerFrameConfig['addContainerPort'] = {
					layer_index : index,
					layer_layero : layero
				}
			}
		});
	 }
 }
 //删除ContainerPort
 function deleteContainerPort(id){
	 layer.confirm("确定删除吗?", {
		  btn: ['确定','取消'] //按钮
		}, function()
		{
			//关闭弹窗
			$("#"+id).remove();
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
 //新增环境变量
 function addEnv(){
	 if(containerName==""){
		 alert("容器名不能为空");
	 }else{
	 var containerName = $("input[name='containerName']").val();
	 top.layer.open({
			title : "新增环境变量",
			id : 'addEnv',
			type : 2,
			area : [ "422px", "28%" ],
			shadeClose : true,
			offset : "150px",
			scrollbar: true,
			maxmin : true,
			anim : 5,
			content : ["${ctx}/serviceArrange/preCreateEnv"],
			zIndex : 2,
			success : function(layero, index) {
				top.layerFrameConfig['addEnv'] = {
					layer_index : index,
					layer_layero : layero
				}
			}
		});
	 }
 }
 //删除环境变量
 function deleteEnv(id){
	 layer.confirm("确定删除吗?", {
		  btn: ['确定','取消'] //按钮
		}, function()
		{
			//关闭弹窗
			$("#"+id).remove();
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
 
 function checkInt(name){
	 var text = $("input[name='"+name+"']").val();
	 var reg= /^[0-9]*[1-9][0-9]*$/;
	 if(text==""){
    	 return;
     }
	 if(!reg.test(text)){
	//	alert("只能输入正整数");
		top.layer.msg("只能输入正整数", {icon : 2});
		flag = false;
	 }else{
		 flag = true;
	 }
 }
 
 function checkCpuRequest(){
	 var cpuRequest = $("input[name='cpuRequest']").val();
	 var cpuLimit = $("input[name='cpuLimit']").val();
	 var reg= /^[0-9]*[1-9][0-9]*$/;
	 if(cpuRequest==""){
    	 return;
     }
	 if(!reg.test(cpuRequest)){
	//	 alert("只能输入正整数");
		 top.layer.msg("只能输入正整数", {icon : 2});
		 flag = false;
	 }else{
		 if(parseInt(cpuRequest) >= parseInt(cpuLimit)){
		//	 alert("cpu请求必须小于cpu限制");
			 top.layer.msg("cpu请求必须小于cpu限制", {icon : 2});
			 flag = false;
		 }else{
			 flag = true;
		 }
	 }
 }
 
 function checkMemRequest(){
	 var memRequest = $("input[name='memoryRequest']").val();
	 var memLimit = $("input[name='memoryLimit']").val();
	 var reg= /^[0-9]*[1-9][0-9]*$/;
	 if(memRequest==""){
    	 return;
     }
	 if(!reg.test(memRequest)){
	//	 alert("只能输入正整数");
		 top.layer.msg("只能输入正整数", {icon : 2});
		 flag = false;
	 }else{
		 if(parseInt(memRequest) >= parseInt(memLimit)){
		//	 alert("内存请求必须小于内存限制");
			 top.layer.msg("内存请求必须小于内存限制", {icon : 2});
			 flag = false;
		 }else{
			 flag = true;
		 }
	 }
 }
 <!-- 
 function updatePort(id){
	 top.layer.open({
			title : "修改端口",
			id : 'updatePort',
			type : 2,
			area : [ "35%", "60%" ],
			shadeClose : true,
			offset : "20px",
			scrollbar: true,
			maxmin : true,
			anim : 5,
			content : ["${ctx}/serviceArrange/preUpdateServicePort/"+id],
			zIndex : layer.zIndex,
			success : function(layero, index) {
				top.layerFrameConfig['updatePort'] = {
					layer_index : index,
					layer_layero : layero
				}
			}
		});
 }
 -->
</script>
