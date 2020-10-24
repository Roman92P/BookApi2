<%--
  Created by IntelliJ IDEA.
  User: roman
  Date: 24.10.2020
  Time: 13:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@include file="header.jsp" %>
<div class="container-fluid">
    <div class="row">
        <div class="col-10 mx-auto shadow-lg p-3 mb-5 bg-white rounded">
            <div class="form-group">
                <form:form method="post" action="/books/add" modelAttribute="book" title="New book">
                    <hr class="divider">
                    <input type="submit" value="Add" class="btn-dark shadow-lg p-3 mb-5 bg-dark rounded">
                </form:form>
            </div>
        </div>
    </div>
</div>
<%@include file="footer.jsp" %>

