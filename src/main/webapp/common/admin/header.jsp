<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<%@ page import="com.junblog.utils.SecurityUtils" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div id="navbar" class="navbar navbar-default">
    <script type="text/javascript">
        try {
            ace.settings.check('navbar', 'fixed')
        } catch (e) {
        }
    </script>

    <div class="navbar-container" id="navbar-container">
        <button type="button" class="navbar-toggle menu-toggler pull-left" id="menu-toggler" data-target="#sidebar">
            <span class="sr-only">Toggle sidebar</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <div class="navbar-header pull-left">
            <a href="" class="navbar-brand">
                <small>
                    <i class="fa fa-leaf"></i>
                    Trang chủ
                </small>
            </a>
        </div>

        <div class="navbar-buttons navbar-header pull-right" role="navigation">
            <ul class="nav ace-nav">
                <li class="light-blue dropdown-modal">
                    <a href="#" class="dropdown-toggle">
                         <%=SecurityUtils.getPrincipal().getFullName()%>
                    </a>
	                <li class="light-blue dropdown-modal">
	                    <a href="<c:url value='/logout'/>">
	                        <i class="ace-icon fa fa-power-off"></i>
	                        Thoát
	                    </a>
	                </li>
                </li>
            </ul>
        </div>
    </div>
    <!-- /.navbar-container -->
</div>


