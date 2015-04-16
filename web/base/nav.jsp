<%-- 
    Document   : nav
    Created on : 14-Apr-2015, 2:09:34 PM
    Author     : alonch
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="header clearfix">
    <%
        String uri = request.getRequestURI();
        String indexClass = uri.endsWith("index.jsp") ? "active" : "";
        String loginClass = uri.endsWith("login.jsp") ? "active" : "";
        String accountClass = uri.endsWith("account.jsp") ? "active" : "";
        String summaryClass = uri.endsWith("summary.jsp") ? "active" : "";
        String userClass = (accountClass.length()>0 || summaryClass.length()>0) ? "active" : "";
    %>
    <nav>
        <ul class="nav nav-pills pull-right">
            <li role="presentation" class="<%=indexClass%>"><a href="index.jsp">Home</a></li>
                <c:if test="${sessionScope.user == null}">
                <li role="presentation" class="<%=loginClass%>"><a href="login.jsp">Login</a></li>
                </c:if>
                <c:if test="${sessionScope.user != null}">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle <%=userClass%>" data-toggle="dropdown" role="button" aria-expanded="false">${sessionScope.user.getUserid()}<span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li role="presentation" class="<%=accountClass%>"><a href="account.jsp">Edit</a></li>
                        <li role="presentation" class="<%=summaryClass%>"><a href="summary.jsp">History</a></li>
                        <li class="divider"></li>
                        <li role="presentation"><a href="login.do">Logout</a></li>
                    </ul>
                </li>

            </c:if>
        </ul>
    </nav>
    <h3 class="text-muted">Travel Experts</h3>
</div>
