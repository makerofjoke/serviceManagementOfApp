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

<div class="content-wrap bodyScroll" style="width: 100%;background: #7178a1;">
<section class="panel panel-form" style="background:#546189;box-shadow: 0px 3px 5px 0px rgba(0,0,0,0.20);">
<input type="hidden" id="serviceID" name="serviceID" value="${id}"/>
<form id="form" method="post" action="${ctx}/serviceArrange/createService"  prevURL="" class="form-horizontal required-validate" onsubmit="return validateCallback(this,getSaverslt);">
	<div class="box-body" style="padding-left:6%;">
	<input type="hidden" id="id" name="id" value="${id}"/>
	<input type="hidden" id="servicePortId" name="servicePortId" value="${servicePortId}"/>
	<input type="hidden" id="initValue" name="initValue" value="${nodeName}"/>
	<input type="hidden" id="relativeID" name="relativeID" value="${relativeID}"/>

	<div class="form-group" style="padding: 0.9% 0.9% 0.09% 2.6%;">
			<label for="portType" class="control-label col-xs-2"  style="display:;text-align:right;margin-left: -5.3%;"><font class="white">网络组件类型：</font></label>
		    <div class="col-xs-3" style="margin-left: -2%;">
		    <select  id="onChange" class="form-control" style="text-align: center; width: 130%;color:#c0c0c0;background: rgba(216,216,216,0.30);border-radius: 10px;"  onchange="javascript:selectChange(this.value);">
					<option value="">---自定义---</option>
<!-- 				    <option value="A">A-钢铁排产应用</option> -->
<!-- 				    <option value="B">B-设备管理应用</option> -->
				    <option value="A">A-mysql</option>
				    <option value="B">B-springboot</option>
				    <option value="C">C-frontEnd</option>
			    </select>
			</div>
		</div>
	<div class="" style="padding: 0.44% 0.9% 0.09% 0.09%">
		    	<label class=""  style="margin-left:-2.6%;font-size:20px;text-align:right;color:#FFFFFF" >元数据设置</label>
			</div>

		<div class="form-group" style="padding: 0.44% 0.9% 0.09% 2.6%">
			<label for="adtype" class="control-label col-xs-2"  style="display:;margin-left: -5.3%;"><font class="white">网络组件名称<span style="color:red;font-size:20px;">*</span>：</font></label>
		    <div class="col-xs-3" style="margin-left: -2%;">
		    	<input type="text" name="serviceName" class="form-control" value=""  onkeyup="javascript:checkName('serviceName');" style="width: 130%;color:#c0c0c0;background: rgba(216,216,216,0.30);border-radius: 10px;" placeholder="请输入服务名称" required="required"/>

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
		<div class="" style="padding: 0.44% 0.9% 0.09% 0.09%">
		    	<label class=""  style="margin-left:-2.6%;font-size:20px;text-align:right;color:#FFFFFF" >属性设置</label>
			</div>
		<div class="form-group" style="padding: 0.44% 0.9% 0.09% 2.6%">
			<label for="userName" class="control-label col-xs-2"  style="display:;margin-left: -5.3%;"><font class="white">匹配标签名<span style="color:red;font-size:20px;">*</span>：</font></label>
		    <div class="col-xs-3" style="margin-left: -2%;">
		    	 <input type="text" name="labelName" id="labelName" class="form-control" value="" onkeyup="javascript:checkName('labelName');"  style="width: 130%;color:#c0c0c0;background: rgba(216,216,216,0.30);border-radius: 10px;" placeholder="设置标签名" required="required"/>
			</div>
		</div>
		<div class="form-group" style="padding: 0.44% 0.9% 0.09% 2.6%">
			<label for="userName" class="control-label col-xs-2"  style="display:;margin-left: -5.3%;"><font class="white">匹配标签值<span style="color:red;font-size:20px;">*</span>：</font></label>
		    <div class="col-xs-3" style="margin-left: -2%;">
		    	 <input type="text" name="labelValue" id="labelValue" class="form-control" value="" onkeyup="javascript:checkName('labelValue');"  style="width: 130%;color:#c0c0c0;background: rgba(216,216,216,0.30);border-radius: 10px;" placeholder="设置标签值" required="required"/>
			</div>
		</div>
		<div class="form-group" style="padding: 0.44% 0.9% 0.09% 2.6%">
		    <div class="" style="margin-left:11%;margin-bottom:1.3%;">
		    	<a class=""  style="padding:8px 16px;background:#7993C0;border:none;border-radius: 5px;color:#FFFFFF" href="javascript:addPort()" >+创建</a>
			</div>
			<label for="userName" class="control-label col-xs-2"  style="display:;margin-left: -5.3%;"><font class="white">端口添加：</font></label>
			 <div class="col-xs-4" style="margin-left: -2%;">
			 	<div style="width:245%;height:200px;overflow-y:auto;background:#7B84A0;border:none;border-radius: 10px;"  class="form-control" id="ports">
			 	  <!-- <div id="123">
			 	  	<input type="checkbox"/><span style="margin-left:10px;"">80/8080</span></br>
			 	  </div id="124"> -->
			 	  <table class="table table-hover">
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
					<%--<tr target="slt_uid" rel="" id="1">
<!-- 							   	<td><input type="checkbox" data-value="1"></td> -->
							    <td>非nodeport</td>
							    <td>80</td>
										<td>8080</td>
										<td>
											<div class="btn-group">
												<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true"><i class="fa fa-fw fa-cog"></i> <span class="caret"></span></a>
												<ul class="dropdown-menu" role="menu">
<!-- 									                <li><a class="layOpenWindow"  href="javascript:updatePort('1')" >修改</a></li> -->
									            	<li><a class="layOpenWindow"  href="javascript:deletePort('1')" >删除</a></li>
									            </ul>
						                   </div> 
										</td>
							</tr>
							<tr target="slt_uid" rel="" id="">
<!-- 							   	<td><input type="checkbox" data-value="2"></td> -->
							    <td>非nodeport</td>
							    <td>80</td>
										<td>8080</td>
										<td>
											<div class="btn-group">
												<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true"><i class="fa fa-fw fa-cog"></i> <span class="caret"></span></a>
												<ul class="dropdown-menu" role="menu">
<!-- 									                <li><a class="layOpenWindow"  href="javascript:updatePort('2')" >修改</a></li> -->
									            	<li><a class="layOpenWindow"  href="javascript:deletePort('2')" >删除</a></li>
									            </ul>
						                   </div> 
										</td>
							</tr>
							<tr target="slt_uid" rel="" id="">
<!-- 							   	<td><input type="checkbox" data-value="3"></td> -->
							    <td>非nodeport</td>
							    <td>80</td>
										<td>8080</td>
										<td>
											<div class="btn-group">
												<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true"><i class="fa fa-fw fa-cog"></i> <span class="caret"></span></a>
												<ul class="dropdown-menu" role="menu">
<!-- 									                <li><a class="layOpenWindow"  href="javascript:updatePort('3')" >修改</a></li> -->
									            	  <li><a class="layOpenWindow"  href="javascript:deletePort('3')" >删除</a></li>
									            </ul>
						                   </div> 
										</td>
							</tr>
						 <c:forEach items="${list}" var="datasource" varStatus="status">
							 <tr target="slt_uid" rel="${datasource.id}" id="${datasource.id}">
							   	<td><input type="checkbox" data-value="${datasource.id}"></td>
							    <td>${page.pageBeginCount+status.index+1}</td>
										<td>${datasource.dataType}</td>
										<td>
											<div class="btn-group">
												<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true"><i class="fa fa-fw fa-cog"></i> <span class="caret"></span></a>
												<ul class="dropdown-menu" role="menu">
									                <li><a class="layOpenWindow"  href="${ctx}/data/preUpdate/${datasource.id}" >修改</a></li>
									            	<li><a class="layOpenWindow"  href="javascript:deletePort('1')" >删除</a></li>
									            </ul>
						                   </div> 
										</td>
							</tr>
						</c:forEach> --%>
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
		 	var serviceName = $('input[name="serviceName"]').val();
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
 			 $("tbody tr").each(function(){
 				 num = num + 1;
					  $.ajax({
						  type: 'POST',
						  url: '${ctx}/serviceArrange/insertServicePort',
						  data: {"serviceID":$('input[name="initValue"]').val(),
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
 			var temp = '${nodeName}';
			var nodename = temp.replace(/=/g,'\n');
			var portNum = num + "";
			graph.getElementByName(nodename).init = nodename;
			graph.getElementByName(nodename).name = serviceName+"\n标签:"+labelName+"\n端口:"+portNum+"个";
		    var index = parent.layer.getFrameIndex(window.name);
			parent.layer.close(index);
 			top.layer.msg("新增成功", {icon : 1});
			
	 }else{
		 top.layer.msg("新增失败", {icon : 2});
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
	 /* var ids=getSelectIds();
     if(ids=='')
     {
    	 layer.alert("请选择需要删除的端口");
    	 return;
     } */
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
 
 function selectChange(value){
	 var id = $("input[name='servicePortId']").val();
// 	 if(value=="A"){
// 		 $("input[name='serviceName']").val("钢铁排产服务");
// 		 $("input[name='labelName']").val("produce");
// 		 $("input[name='labelValue']").val("produceValue");
// 	 }
// 	 if(value=="B"){
// 		 $("input[name='serviceName']").val("设备管理服务");
// 		 $("input[name='labelName']").val("manage");
// 		 $("input[name='labelValue']").val("manageValue");
// 	 }
	 if(value=="A"){
		 $("input[name='serviceName']").val("mysql");
		 $("input[name='labelName']").val("app");
		 $("input[name='labelValue']").val("mysql-demo");
		 var tr = "<tr target='slt_uid' rel='' id='"+id+"'> "
// 		   	+" <td><input type='checkbox' data-value='"+id+"'></td>"
			+" <td align='center' valign='middle'><font class='white'>nodePort</font></td>"
			+" <td align='center' valign='middle'><font class='white'>3306</font></td>"
			+" <td align='center' valign='middle'><font class='white'>3306</font></td>"
			+" <td align='center' valign='middle'><font class='white'>31112</font></td>"
			+"<td align='center' valign='middle'>"
			+"		<div class='btn-group'>"
			+"				<a href='#' class='dropdown-toggle' data-toggle='dropdown' aria-expanded='true'><i class='fa fa-fw fa-cog' style='color:#FFFFFF'></i> <span class='caret' style='color:#FFFFFF'></span></a>"
			+"			<ul class='dropdown-menu' role='menu'>"
//			+"	                <li><a class='layOpenWindow'  href='javascript:updatePort('1')' >修改</a></li>"
			+"	            	<li><a class='layOpenWindow'  href=javascript:deletePort('"+id+"') >删除</a></li>"
			+"	            </ul>"
			+"          </div> "
			+"		</td>"
			+"  </tr>";
		$("tbody").html('');
		$("tbody").append(tr);
	 }
	 if(value=="B"){
		 $("input[name='serviceName']").val("java-app");
		 $("input[name='labelName']").val("app");
		 $("input[name='labelValue']").val("java-app");
		 var tr = "<tr target='slt_uid' rel='' id='"+id+"'> "
// 		   	+" <td><input type='checkbox' data-value='"+id+"'></td>"
			+" <td align='center' valign='middle'><font class='white'>nodePort</font></td>"
			+" <td align='center' valign='middle'><font class='white'>8080</font></td>"
			+" <td align='center' valign='middle'><font class='white'>java-app-port</font></td>"
			+" <td align='center' valign='middle'><font class='white'>30125</font></td>"
			+"<td align='center' valign='middle'>"
			+"		<div class='btn-group'>"
			+"				<a href='#' class='dropdown-toggle' data-toggle='dropdown' aria-expanded='true'><i class='fa fa-fw fa-cog' style='color:#FFFFFF'></i> <span class='caret' style='color:#FFFFFF'></span></a>"
			+"			<ul class='dropdown-menu' role='menu'>"
//			+"	                <li><a class='layOpenWindow'  href='javascript:updatePort('1')' >修改</a></li>"
			+"	            	<li><a class='layOpenWindow'  href=javascript:deletePort('"+id+"') >删除</a></li>"
			+"	            </ul>"
			+"          </div> "
			+"		</td>"
			+"  </tr>";
		$("tbody").html('');
		$("tbody").append(tr);
	 }
	 if(value=="C"){
		 $("input[name='serviceName']").val("front-end");
		 $("input[name='labelName']").val("app");
		 $("input[name='labelValue']").val("front-end");
		 var tr = "<tr target='slt_uid' rel='' id='"+id+"'> "
// 		   	+" <td><input type='checkbox' data-value='"+id+"'></td>"
			+" <td align='center' valign='middle'><font class='white'>nodePort</font></td>"
			+" <td align='center' valign='middle'><font class='white'>8080</font></td>"
			+" <td align='center' valign='middle'><font class='white'>front-end-port</font></td>"
			+" <td align='center' valign='middle'><font class='white'>30130</font></td>"
			+"<td align='center' valign='middle'>"
			+"		<div class='btn-group'>"
			+"				<a href='#' class='dropdown-toggle' data-toggle='dropdown' aria-expanded='true'><i class='fa fa-fw fa-cog' style='color:#FFFFFF'></i> <span class='caret' style='color:#FFFFFF'></span></a>"
			+"			<ul class='dropdown-menu' role='menu'>"
//			+"	                <li><a class='layOpenWindow'  href='javascript:updatePort('1')' >修改</a></li>"
			+"	            	<li><a class='layOpenWindow'  href=javascript:deletePort('"+id+"') >删除</a></li>"
			+"	            </ul>"
			+"          </div> "
			+"		</td>"
			+"  </tr>";
		$("tbody").html('');
		$("tbody").append(tr);
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
