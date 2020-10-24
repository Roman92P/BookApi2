<%--
  Created by IntelliJ IDEA.
  User: roman
  Date: 24.10.2020
  Time: 11:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@include file="header.jsp" %>
<div class="container-fluid ">
    <div class="col-md-10">
        <table class="table table-striped table-border table-hover shadow-lg p-3 mb-5 bg-white rounded"
               style="margin-bottom: 200px;margin-top: 50px; margin-left: 100px">
            <thead>
            <th scope="col">Title</th>
            <th scope="col">Author</th>
            <th scope="col">Publisher</th>
            <th scope="col">Type</th>
            <th scope="col">ISBN</th>
            </thead>
            <tbody>
            <c:forEach items="${books}" var="book">
                <tr>
                    <td scope="row"><c:out value="${book.title}"/></td>
                    <td><c:out value="${book.author}"/></td>
                    <td><c:out value="${book.publisher}"/></td>
                    <td><c:out value="${book.type}"/></td>
                    <td><c:out value="${book.isbn}"/></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <a class="btn-lg btn-dark shadow-lg p-3 mb-5 bg-dark rounded " style="text-decoration : none" href="/books/add" role="button">Add book</a>            </div>
        </div>
    </div>
</div>
<%@include file="footer.jsp" %>
