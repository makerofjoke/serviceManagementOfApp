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
<form id="form" method="post" action=""  prevURL="" class="form-horizontal required-validate" onsubmit="return validateCallback(this);">
	<div class="box-body" style="padding-left:8%;">
	<input type="hidden" id="id" name="id" value="${id}">
	<input type="hidden" id="containerName" name="containerName" value="${containerName}">
	<input type="hidden" id="deploymentId" name="deploymentId" value="${deploymentId}"/>
	<input type="hidden" id="relativeId" name="relativeId" value="${relativeId}">
	<div class="" style="padding: 0.4% 1.1% 0.1% 0.1%">
		    	<label class=""  style="margin-left:-7%;font-size:20px;text-align:right;color:#FFFFFF" >容器环境变量设置</label>
			</div>
		<div class="form-group" style="padding: 0.4% 1.1% 0.1% 0.5%">
			<label for="dataIP" class="control-label col-xs-2"  style="display:;text-align:right;"><font class="white">变量名称：</font></label>
		    <div class="col-xs-3" style="margin-left: -6.7%;">
		    	 <input type="text" name="envvalName" class="form-control" value="${envvalName}" onkeyup="javascript:checkName('envvalName');" style="width: 100%;color:#c0c0c0;background: rgba(216,216,216,0.30);border-radius: 10px;" required="required"/>
			</div>
		</div>
		<div class="form-group" style="padding: 0.4% 1.1% 0.1% 0.5%">
			<label for="dataIP" class="control-label col-xs-2"  style="display:;text-align:right;"><font class="white">&emsp;变量值：</font></label>
		    <div class="col-xs-3" style="margin-left: -6.7%;">
		    	 <input type="text" name="envvalValue" class="form-control" value="${envvalValue}" onkeyup="javascript:checkName('envvalValue');" style="width: 100%;color:#c0c0c0;background: rgba(216,216,216,0.30);border-radius: 10px;" required="required"/>
			</div>
		</div>
		<!-- 
 		<div class="form-group">
			<label for="portType" class="control-label col-xs-2"  style="display:;text-align:right;">端口协议*：</label>
		    <div class="col-xs-3" >
		    <select name="dataType" value="${portType}" class="form-control" style="width: 70%;">
					<option value="">---请选择---</option>
				    <option value="A">A-结构化数据</option>
				    <option value="B">B-非结构化数据</option>
			    </select>
			</div>
		</div>
		-->
	</div>
		<br>	
		<div class="row text-center" style="width: 45%;" align="center">
				<button type="button" class="btn btn-primary" style="background: #ef8532;border-radius: 10px; box-shadow: 0px 3px 5px 0px rgba(0, 0, 0, 0.20);border:none;width:30%" onclick="getSaverslt()">确定</button>
		</div>
		<div class="row" style="width: 100%;margin-top:20px;" align="center">
			</div>
</form>
</section>
</div>
<script type="text/javascript">

var flag = true;

 function getSaverslt(){
	 if(flag==true){
	 var id = $("input[name='id']").val();
	 var envvalName = $("input[name='envvalName']").val();
	 var envvalValue = $("input[name='envvalValue']").val();
	 var doc = findLayDoc();
	 var ports = doc.find("#tEnv");
 			 var tr = "<tr target='slt_uid' rel='' id='"+id+"'> "
 				+" <td>"+envvalName+"</td>"
 				+" <td>"+envvalValue+"</td>"
 				+"<td>"
 				+"		<div class='btn-group'>"
 				+"				<a href='#' class='dropdown-toggle' data-toggle='dropdown' aria-expanded='true'><i class='fa fa-fw fa-cog' style='color:#FFFFFF'></i> <span class='caret' style='color:#FFFFFF'></span></a>"
 				+"			<ul class='dropdown-menu' role='menu'>"
 				+"	            	<li><a class='layOpenWindow'  href=javascript:deleteEnv('"+id+"') >删除</a></li>"
 				+"	            </ul>"
 				+"          </div> "
 				+"		</td>"
 				+"  </tr>"; 
 			$(ports).append(tr);
 	top.layer.msg("新增成功", {icon : 1});
 	var index = parent.layer.getFrameIndex(window.name);
	parent.layer.close(index);
	}else{
		alert("输入不符合要求");
	}
 }
function findLayDoc()
{
	var iframeWin;
	var frameId = "addDeployment";
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
function checkName(name){
	 var text = $("input[name='"+name+"']").val();
//	 var reg= /^\w+$/;
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
</script>
