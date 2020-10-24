<%--
  Created by IntelliJ IDEA.
  User: roman
  Date: 24.10.2020
  Time: 23:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@include file="header.jsp"%>
<div class="container">
    <div class="row">
        <div class="col-md-auto">
             <c:if test="${param.error}">
                Invalid username and password.
             </c:if>
            <c:if test="${param.logout}">
                You have been logged out.
            </c:if>
            <form:form action="/" method="post">
                <div><label> User Name : <input type="text" name="username"/> </label></div>
                <div><label> Password: <input type="password" name="password"/> </label></div>
                <div><input type="submit" value="Sign In"/></div>
            </form:form>
        </div>
    </div>
</div>
<%@include file="footer.jsp"%>>
