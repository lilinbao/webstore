<%@ page language="java" import="java.util.*,com.linbao.model.Resources;" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%//response.setCharacterEncoding("UTF-8"); 

response.setContentType("text/html;charset=utf-8");
//out.print("中文");
%>
<a href="#" id="menu-toggler"><span></span></a>
	<!-- menu toggler -->
	<div id="sidebar">
		<div id="sidebar-shortcuts">
			<div id="sidebar-shortcuts-large">
				<button class="btn btn-small btn-success"><i class="icon-signal"></i></button>
				<button class="btn btn-small btn-info"><i class="icon-pencil"></i></button>
				<button class="btn btn-small btn-warning"><i class="icon-group"></i></button>
				<button class="btn btn-small btn-danger"><i class="icon-cogs"></i></button>
			</div>
			<div id="sidebar-shortcuts-mini">
				<span class="btn btn-success"></span> <span class="btn btn-info"></span>
				<span class="btn btn-warning"></span> <span class="btn btn-danger"></span>
			</div>
		</div>
		<!-- #sidebar-shortcuts -->
		 <ul class="nav nav-list">
			<c:forEach items="${userResources}" var="res">
				<c:set var="flag" value="true"></c:set>
				<c:if test="${res.isLeaf!= true }">
					<li><a href='javascript:void(0);' class='dropdown-toggle'> 
							<i class='<c:out value="${res.css }"></c:out>'></i><span><c:out value="${res.name }"/></span>
						</a>
						<c:if test="${flag == true }">
							<ul class="submenu">
							<c:forEach var="sub_res" items="${userResources }">
								<c:if test="${sub_res.parent.id == res.id }">
									<li><a href="<c:out value="${pageContext.servletContext.contextPath }"/>/admin/<c:out value="${sub_res.url }"/>"> 
											<i class="<c:out value="${sub_res.css }"/>"></i><span><c:out value="${sub_res.name }" /></span>
										</a>
									</li>
								</c:if>
							</c:forEach>
							</ul>
							<c:set var="flag" value="false"></c:set>
						</c:if>
					</li>
					<c:set var="flag" value="true" ></c:set>
				</c:if>
				
			</c:forEach>
			<%-- <ul class="nav nav-list">
			<%
				boolean isLeaf = false;
				List list = new ArrayList();
				list = (List)session.getAttribute("userResources");
				if(list.size()>0){
					for(int i = 0;i<list.size();i++){
						Resources r = (Resources)list.get(i);
						if(!r.getIsLeaf()){
							isLeaf = true;
			%>
							<li><a href='javascript:void(0);' class='dropdown-toggle'> 
									<i class='<%=r.getCss()%>'></i><span><%=r.getName() +"中文"%></span>
								</a>
								<%
									if(isLeaf){	
								%>
								<ul class="submenu">
								<%
										List subList = list;
										for(int j = 0;j<subList.size();j++){
											Resources subR = (Resources)subList.get(j);
											if(subR.getParent().getId() == r.getId()){
								%>
											<li><a href="<c:out value="${pageContext.servletContext.contextPath }"/>/admin/<%=subR.getUrl() %>"> 
													<i class="<%=subR.getCss()%>"></i><span><%=subR.getName()+"jjs" %></span>
												</a>
											</li>
								<%
											}
								%>
								<%	
											}
								%>
								
								</ul>
								<%
										}
								%>
							</li>
			<%
							
						}
						isLeaf = false;
					}
				}
			%>
			</ul> --%>
			<%-- <li><a href="#" class="dropdown-toggle"> 
					<i class="icon-desktop"></i> <span>UI Elements</span><b class="arrow icon-angle-down"></b>
				</a>
				<ul class="submenu">
					<li><a href="elements.html"><iclass="icon-double-angle-right"></i> Elements</a></li>
					<li><a href="buttons.html"><i class="icon-double-angle-right"></i> Buttons & Icons</a></li>
				</ul>
			</li> --%>
		</ul>
		<!--/.nav-list-->
		<div id="sidebar-collapse"> <i class="icon-double-angle-left"></i> </div>
		</div>
