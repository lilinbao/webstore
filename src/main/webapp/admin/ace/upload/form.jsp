<%@ page contentType="text/html; charset=utf-8" language="java" errorPage="false" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>File Upload</title>
<style type="text/css">
.container {
	width: 960px;
	background-color: #FFF;
	margin: 0 auto;
	overflow: hidden; 
}

.content {
	margin:0px auto;
	padding: 10px 0;
	width: 600px;
	height:700px;
}
.main{ height:auto; background:#bdd; margin-top:300px; padding:20px;}
.submit , .reset{ width:80px; float:left; margin-left:30px; padding-top:10px;}
.errorMessage{ list-style:none;}

.file-box{ position:relative;}
.file{ position:absolute; top:0; left:0px; filter:alpha(opacity:0);opacity: 0; } 
</style>
<link href="../assets/css/bootstrap.min.css" rel="stylesheet" />
<script type="text/javascript" src="http://code.jquery.com/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="../assets/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#btn_submit").click(function(){
			//updateStatus();
			setInterval(updateStatus, 1000);
		});
		function updateStatus(){
			$('.div_process').show('slow');
			$.ajax({
				type:'get',
				url: "fileuploadstatus.action", 
				success: function(percent){
					$(".bar").css('width',percent+'%');
					$(".txt_percent").text(percent+'%');
				}
			});
		}
	});
	$(document).ajaxComplete(function (){
		$('.bar').add("<span>Ajax Complete trigger on</span>");
	})
</script>
</head>

<body>


<div class="container">
	<div class="content">
    	<div class="main">
		    <div class="progress progress-striped active hide div_process">
		    	<div class="bar" style="width:2px;">
		    		<span class="txt_percent">0%</span>
		    	</div>
		    </div>
		   <s:fielderror name="tooLarge"></s:fielderror>
            <!--<s:actionerror />-->
            <div class="file-box">
				<s:form enctype="multipart/form-data" class="form-inline" action="upload.action" method="post" >
					<input id="textfield" type="text" name="fileName" style="width:180px; margin-bottom:0px;" />
					<input class="btn" type="button" value="浏览..." />
					<input id="fileField" class="file" type="file" style="width:260px; cursor:pointer;" onchange="document.getElementById('textfield').value=this.value"  name="upload" />
					<input id ="btn_submit" class="btn" type="submit" value="上传" name="submit" />
				</s:form>
				
			</div>
        </div>
    </div>
    <!-- end .container -->
</div>
</body>
</html>