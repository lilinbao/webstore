<%@page import="org.apache.struts2.components.Include"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% String basePath = request.getSession().getServletContext().getRealPath("");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Administrator</title>
<!-- basic styles -->
<link href="${pageContext.servletContext.contextPath }/admin/${appContext }/css/bootstrap.min.css" rel="stylesheet" />
<link href="${pageContext.servletContext.contextPath }/admin/${appContext }/css/bootstrap-responsive.min.css" rel="stylesheet" />
<link rel="stylesheet" href="${pageContext.servletContext.contextPath }/admin/${appContext }/css/font-awesome.min.css" />
<!--[if IE 7]>
		  <link rel="stylesheet" href="css/font-awesome-ie7.min.css" />
		<![endif]-->
<!-- page specific plugin styles -->
<!-- ace styles -->
<link rel="stylesheet" href="${pageContext.servletContext.contextPath }/admin/${appContext }/css/ace.min.css" />
<link rel="stylesheet" href="${pageContext.servletContext.contextPath }/admin/${appContext }/css/ace-responsive.min.css" />
<link rel="stylesheet" href="${pageContext.servletContext.contextPath }/admin/${appContext }/css/ace-skins.min.css" />
<!--[if lt IE 9]>
		  <link rel="stylesheet" href="${pageContext.servletContext.contextPath }/admin/${appContext }/ace-ie.min.css" />
	<![endif]-->
</head>
<body>
<!-- top.jsp start here -->
 <%@include file="../top.jsp" %>
<!-- top.jsp end  -->

<div class="container-fluid" id="main-container">
	<!-- Slider Start HERE -->
	<%@include file="../slider.jsp" %>
	<%-- <s:property value="att_resources" /> --%>
	<div id="main-content" class="clearfix">
		<div id="breadcrumbs">
			<ul class="breadcrumb">
				<li><i class="icon-home"></i> <a href="#">Home</a>
					<span class="divider"><i class="icon-angle-right"></i></span>
				</li>
				<li class="active">Tables</li>
			</ul>
			<!--.breadcrumb-->
			<div id="nav-search">
				<form class="form-search">
					<span class="input-icon"> 
						<input autocomplete="off" id="nav-search-input" type="text" class="input-small search-query" placeholder="Search ..." /> 
						<i id="nav-search-icon" class="icon-search"></i>
					</span>
				</form>
			</div>
			<!--#nav-search-->
		</div>
		<!--#breadcrumbs-->
		<div id="page-content" class="clearfix">
			<div class="page-header position-relative">
				<h1> Tables <small><i class="icon-double-angle-right"></i> Static & Dynamic Tables</small></h1>
			</div>
			<!--/page-header-->
			<!--/row-->
			<div class="row-fluid">
				<h3 class="header smaller lighter blue">jQuery dataTables</h3>
				<div class="table-header">Results for "Latest Registered Domains"</div>
					<table id="table_report" class="table table-striped table-bordered table-hover">
						<tbody>
							<tr>
								<td> <s:text name="user.name"></s:text> </td>
								<td></td>
							</tr>
						</tbody>
					</table>
				</div>
				<!-- PAGE CONTENT ENDS HERE -->
			</div>
			<!--/row-->
		</div>
		<!--/#page-content-->
		<div id="ace-settings-container">
			<div class="btn btn-app btn-mini btn-warning" id="ace-settings-btn">
				<i class="icon-cog"></i>
			</div>
			<div id="ace-settings-box">
				<div>
					<div class="pull-left">
						<select id="skin-colorpicker" class="hidden">
							<option data-class="default" value="#438EB9">#438EB9</option>
							<option data-class="skin-1" value="#222A2D">#222A2D</option>
							<option data-class="skin-2" value="#C6487E">#C6487E</option>
							<option data-class="skin-3" value="#D0D0D0">#D0D0D0</option>
						</select>
					</div>
					<span>&nbsp; Choose Skin</span>
				</div>
				<div>
					<input type="checkbox" class="ace-checkbox-2" id="ace-settings-header" />
					<label class="lbl" for="ace-settings-header"> Fixed Header</label>
				</div>
				<div>
					<input type="checkbox" class="ace-checkbox-2" id="ace-settings-sidebar" />
					<label class="lbl" for="ace-settings-sidebar"> Fixed Sidebar</label>
				</div>
			</div>
		</div>
		<!--/#ace-settings-container-->
</div>



	<!-- basic scripts -->
	<script src="${pageContext.servletContext.contextPath }/admin/${appContext }/1.9.1/jquery.min.js"></script>
	<script type="text/javascript">
		window.jQuery || document.write("<script src='${pageContext.servletContext.contextPath }/admin/${appContext }/js/jquery-1.9.1.min.js'>\x3C/script>");
	</script>
	<script src="${pageContext.servletContext.contextPath }/admin/${appContext }/js/bootstrap.min.js"></script>
	
	<!-- page specific plugin scripts -->
	<script type="text/javascript" src="${pageContext.servletContext.contextPath }/admin/ace/js/jquery.dataTables.min.js"></script>
	<script type="text/javascript" src="${pageContext.servletContext.contextPath }/admin/ace/js/jquery.dataTables.bootstrap.js"></script>
	<!-- ace scripts -->
	<script src="${pageContext.servletContext.contextPath }/admin/${appContext }/js/ace-elements.min.js"></script>
	<script src="${pageContext.servletContext.contextPath }/admin/${appContext }/js/ace.min.js"></script>
	<!-- inline scripts related to this page -->
	<script type="text/javascript">
	
		$(document).ready(function(){
			$("#checkAll").click(function(){
				var flag = false;
				var checkboxes = $("input[name='ids']");
				var isCheck = $(this).is(":checked");
				if(!isCheck){
					$("input[name='ids']").each(function(){
						$(this).attr('checked',true)
					});
				}else{
					$("input[name='ids']").each(function(){
						$(this).attr('checked',false)
					});
				}
			});
		});
	</script>
</body>
</html>