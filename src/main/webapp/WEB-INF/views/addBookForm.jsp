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
    <div class="row">
        <div class="col-2">
            <label for="author">Author</label>
        </div>
        <div class="col-10">
            <form:input path="author"/>
            <form:errors path="author" class="alert alert-danger"/>
        </div>
    </div>
    <div class="row">
        <div class="col-2">
            <label for="title">Title</label>
        </div>
        <div class="col-10">
            <form:input path="title"/>
            <form:errors path="title" class="alert alert-danger"/>
        </div>
    </div>
    <div class="row">
        <div class="col-2">
            <label for="publisher">Publisher</label>
        </div>
        <div class="col-10">
            <form:input path="publisher"/>
            <form:errors path="publisher" class="alert alert-danger"/>
        </div>
    </div>
    <div class="row">
        <div class="col-2">
            <label for="type">Type</label>
        </div>
        <div class="col-10">
            <form:input path="type"/>
            <form:errors path="type" class="alert alert-danger"/>
        </div>
    </div>
    <div class="row">
        <div class="col-2">
            <label for="isbn">ISBN</label>
        </div>
        <div class="col-10">
            <form:input path="isbn"/>
            <form:errors path="isbn" class="alert alert-danger"/>
        </div>
    </div>
    <hr class="divider">
    <input type="submit" value="Add" class="btn-dark shadow-lg p-3 mb-5 bg-dark rounded">
</form:form>
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <a class="btn-lg btn-dark shadow-lg p-3 mb-5 bg-dark rounded "
                   style="text-decoration : none" href="/books" role="button"><i class="fas fa-home"></i></a>
            </div>
        </div>
    </div>
</div>
</div>
</div>
<%@include file="footer.jsp" %>

