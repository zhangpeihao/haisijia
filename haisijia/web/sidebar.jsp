<%@page import="java.util.List"%>
<%@page import="com.haisijia.common.AppRegistry"%>
<%@page import="com.haisijia.model.JspParamsVo"%>
<%@page import="com.haisijia.model.AppModel"%>
<%@page import="com.haisijia.model.MenuVo"%>
<%
AppModel appModel = (AppModel)request.getAttribute("model");
JspParamsVo jspParamsVo = appModel.getJspParamsVo();
String title = jspParamsVo.getParamValue("title").orElse("");
%>
				<!-- SIDEBAR -->
				<div id="sidebar" class="sidebar">
					<div class="sidebar-menu nav-collapse">
						<div class="divide-20"></div>
						
						<!-- SIDEBAR MENU -->
						<ul id="funcBar">
                            <!-- 当前选中的菜单信息 -->
							<li class="dropdown-title">
								<span style="font-size: 30px;">功能导航</span>
							</li>
                            <div class="divide-10"></div>
							<%
							List<MenuVo> sidebarMenus = appModel.getSidebarMenus();
							String selectedMenuCss = "";
							int selectedTopMenuId = appModel.getSelectedTopMenuId();
							for (MenuVo menu : sidebarMenus) {
								if (menu.getMenuId() == appModel.getSelectedSidebarMenuId()) {
									selectedMenuCss = " class=\"active\" ";
								} else {
									selectedMenuCss = "";
								}
							%>
							<li <%=selectedMenuCss%> >
								<a href="<%=menu.getMenuUrl()%>&stmId=<%=selectedTopMenuId%>&ssmId=<%=menu.getMenuId()%>"><i class="fa fa-tachometer fa-fw"></i>
									<span id="ngSequence" class="menu-text"><%=menu.getMenuName()%></span>
									<span class="selected"></span>
								</a>
							</li>
							<% } %>
						</ul>
						<!-- /SIDEBAR MENU -->
					</div>
				</div>
				<!-- /SIDEBAR -->
                
                
                
                
                
       