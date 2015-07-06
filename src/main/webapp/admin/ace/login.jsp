<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8" />
<title>Login Page System Administrator</title>
<meta name="description" content="User login page" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<!-- basic styles -->
<link href="<c:out value="${pageContext.servletContext.contextPath }"/>/admin/ace/css/bootstrap.min.css" rel="stylesheet" />
<link href="<c:out value="${pageContext.servletContext.contextPath }"/>/admin/ace/css/bootstrap-responsive.min.css" rel="stylesheet" />
<link rel="stylesheet" href="<c:out value="${pageContext.servletContext.contextPath }"/>/admin/ace/css/font-awesome.min.css" />
<!--[if IE 7]>
	<link rel="stylesheet" href="css/font-awesome-ie7.min.css" />
<![endif]-->
<!-- page specific plugin styles -->
<!-- ace styles -->
<link rel="stylesheet" href="<c:out value="${pageContext.servletContext.contextPath }"/>/admin/ace/css/ace.min.css" />
<link rel="stylesheet" href="<c:out value="${pageContext.servletContext.contextPath }"/>/admin/ace/css/ace-responsive.min.css" />
<!--[if lt IE 9]>
	<link rel="stylesheet" href="<c:out value="${pageContext.servletContext.contextPath }"/>/admin/ace/css/ace-ie.min.css" />
<![endif]-->
<style type="text/css">.login-warmming{position:absolute;left:70%;}</style>
</head>
<body class="login-layout">
<div class="container-fluid" id="main-container">
		<div id="main-content">
			<div class="row-fluid">
				<div class="span12">
					<div class="login-container">
						<div class="row-fluid">
							<div class="center">
								<h1>
									<i class="icon-leaf green"></i> 
									<span class="red">Boyce's</span> <br />
									<span class="white">User Management System</span>
								</h1>
								
							</div>
						</div>
						<div class="space-6"></div>
						<div class="row-fluid">
							<div class="position-relative">
								<div id="login-box" class="visible widget-box no-border">
									<div class="widget-body">
										<div class="widget-main">
											<h4 class="header lighter bigger">
												<i class="icon-coffee green"></i> Please Enter Your Information
											</h4>
											<div class="space-6"></div>
											<!-- User Login form -->
											<form id="login_form" name="login_form" action="login.action" method="post">
												<fieldset id="control-group" class="control-group">
													<label> <span class="block input-icon input-icon-right"> 
															<input type="text" id="username"class="span12" placeholder="Username" name="user.username" 
																	data-original-title="" value='<s:property value="user.username"/>'/> 
															<i class="icon-user"></i>
															</span>
													</label> 
													<label> <span class="block input-icon input-icon-right"> 
																<input type="password" id="password" class="span12" placeholder="Password" name="user.password"/>
																<i class="icon-lock"></i>
															</span>
													</label>
													<div class="space">wrw<s:fielderror fieldName="userEmpty">ssd</s:fielderror></div>
													<div class="row-fluid">
														<label class="span8"> <input type="checkbox">
															<span class="lbl"> Remember Me</span>
														</label>
														<button onclick="return true;" class="span4 btn btn-small btn-primary">
															<i class="icon-key"></i> Login
														</button>
													</div>
												</fieldset>
											</form>
										</div>
										<!--/widget-main-->
										<div class="toolbar clearfix">
											<div>
												<a href="#" onclick="show_box('forgot-box'); return false;" class="forgot-password-link">
													<i class="icon-arrow-left"></i> I forgot my password
												</a>
											</div>
											<div>
												<a href="#" onclick="show_box('signup-box'); return false;" class="user-signup-link">I want to register 
													<i class="icon-arrow-right"></i>
												</a>
											</div>
										</div>
									</div>
									<!--/widget-body-->
								</div>
								<!--/login-box-->
								<div id="forgot-box" class="widget-box no-border">
									<div class="widget-body">
										<div class="widget-main">
											<h4 class="header red lighter bigger">
												<i class="icon-key"></i> Retrieve Password
											</h4>
											<div class="space-6"></div>
											<p>Enter your email and to receive instructions</p>
											<!-- Change password form -->
											<form id="change_password_form" name="change_password_form" action="user_retrievePwd.action" method="post">
												<fieldset>
													<label> <span class="block input-icon input-icon-right"> 
																<input type="email" name="user.email" class="span12" placeholder="Email" /> 
																<i class="icon-envelope"></i>
															</span>
													</label>
													<div class="row-fluid">
														<button onclick="document.getElementById('change_password_form').submit();" class="span5 offset7 btn btn-small btn-danger">
															<i class="icon-lightbulb"></i> Send Me!
														</button>
													</div>
												</fieldset>
											</form>
										</div>
										<!--/widget-main-->
										<div class="toolbar center">
											<a href="#" onclick="show_box('login-box'); return false;" class="back-to-login-link">Back to login 
												<i class="icon-arrow-right"></i>
											</a>
										</div>
									</div>
									<!--/widget-body-->
								</div>
								<!--/forgot-box-->
								<div id="signup-box" class="widget-box no-border">
									<div class="widget-body">
										<div class="widget-main">
											<h4 class="header green lighter bigger">
												<i class="icon-group blue"></i> New User Registration
											</h4>
											<div class="space-6"></div>
											<p>Enter your details to begin:</p>
											<!-- Registration Form -->
											<form id="reg_form" name="reg_form" action="user_register.action" method="post">
												<fieldset id="control-group" class="control-group">
													<label> <span class="block input-icon input-icon-right"> 
																<input type="email" id="email" name="user.email" value='<s:property value="user.email" />' class="span12" placeholder="Email" /> 
																<i class="icon-envelope"></i>
															</span>
													</label> 
													<label> 
														<span class="block input-icon input-icon-right"> 
															<input type="text" id="username_reg" name="user.username" value='<s:property value="user.username"/>' class="span12" placeholder="Username" /> 
															<i class="icon-user"></i>
														</span>
													</label> 
													<label> 
														<span class="block input-icon input-icon-right"> 
															<input type="password" id="password_reg" name="user.password" value='<s:property value="user.password"/>' class="span12" placeholder="Password" />
															<i class="icon-lock"></i>
														</span>
													</label> 
													<label> 
														<span class="block input-icon input-icon-right"> 
															<input type="password" id="password_repeat" name="extention" class="span12" placeholder="Repeat password" /> 
																<i class="icon-retweet"></i>
														</span>
													</label> 
														<label> 
															<input type="checkbox">
															<span class="lbl"> I accept the 
																<a href="#">User Agreement</a>
															</span>
													</label>
													<div class="space-24"></div>
													<div class="row-fluid">
														<button type="reset" class="span6 btn btn-small">
															<i class="icon-refresh"></i> Reset
														</button>
														<button onclick="document.getElementById('reg_form').submit();" class="span6 btn btn-small btn-success">
															Register <i class="icon-arrow-right icon-on-right"></i>
														</button>
													</div>
												</fieldset>
											</form>
										</div>
										<div class="toolbar center">
											<a href="#" onclick="show_box('login-box'); return false;" class="back-to-login-link">
												<i class="icon-arrow-left"></i> Back to login
											</a>
										</div>
									</div>
									<!--/widget-body-->
								</div>
								<!--/signup-box-->
							</div>
							<!--/position-relative-->
						</div>
					</div>
				</div>
				<!--/span-->
			</div>
			<!--/row-->
		</div>
	</div>
	<!--/.fluid-container-->
	<!-- basic scripts -->
	<!-- page specific plugin scripts -->
		<script type="text/javascript" src="<c:out value="${pageContext.servletContext.contextPath }"/>/admin/ace/1.9.1/jquery.min.js"></script>
		<script type="text/javascript" src="<c:out value="${pageContext.servletContext.contextPath }"/>/admin/ace/js/bootstrap.min.js"></script>
	<!-- inline scripts related to this page -->

<script type="text/javascript">
function show_box(id) {
	 $('.widget-box.visible').removeClass('visible');
	 $('#'+id).addClass('visible');
}
$(document).ready(function(){
	var options={
			animation:true,
			trigger:'hover' 
		};
	function show_error(id,msg){
		$('#'+id).attr('data-rel','tooltip').attr('data-original-title',msg).addClass("tooltip-error").focus();
		$('#'+id).tooltip(options);
		$('#'+id).parent().parent().addClass('control-group error');
		$('#'+id).bind("blur",function(){
			$(this).removeClass("tooltip-error").tooltip('destroy').parent().parent().removeClass('control-group error');
		});
	}
	function RegCheck(id){
		
	}
<%
	String user = request.getParameter("user");
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	String email = request.getParameter("email");
	String username_reg = request.getParameter("username_reg");
	String password_reg = request.getParameter("password_reg");
	String pattern = request.getParameter("pattern");
	
	if("null".equals(username)){
%>
		show_error('username','Username is required!');
<%
	}
	if("null".equals(password)){
%>
		show_error('password','Passwprd is required!');
<%
	}
	if("null".equals(username_reg)){
%>
		show_error('username_reg','Username is required!');
<%
	}
	if("null".equals(password_reg)){
%>
		show_error('password_reg','Passwprd is required!');
<%
	}
	if("null".equals(email)){
%>
	show_error('email','Email is required!');
<%
	}
	if("incorrect".equals(email)){
%>
	show_error('email','Email Address is not available!');
<%
	}
	if("different".equals(password)){
%>
	show_error('password_repeat','The password you have type are different ');
<%
	}
	if("nofound".equals(user)){
%>
		$('#alert').alert();
		$('#alert').html('<h4>Sorry!</h4><p>Username Or Password Incorrect ,Please Verify and Retry.</p>').addClass('alert');
		$('#password').focus();
<%
	}
	if("existed".equals(user)){
%>
	$('#alert').alert();
	$('#alert').html('<h4>Sorry!</h4><p>User does existed , please change your username and try again!</p>').addClass('alert');
<%
	}
	if("reg".equals(pattern)){
%>
	show_box('signup-box');
<%
	}
%>
});
</script>
<div id="notfound" style="display:none" class="modal fade">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title"><!-- Modal title -->Sorry! Username or Password incorrect !</h4>
      </div>
      <div class="modal-body">
        <p>We're sorry,But the user you have request can not be found in our system, Please verify and try again !</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" data-dismiss="modal">Retry</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<div class="login-warmming" data-dismiss="alert" id="alert"></div>
</body>
</html>