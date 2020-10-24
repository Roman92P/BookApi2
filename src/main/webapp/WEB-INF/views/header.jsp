<%--
  Created by IntelliJ IDEA.
  User: roman
  Date: 24.10.2020
  Time: 11:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
<%--    font awesome--%>
    <link href="<c:url value="/theme/all.css"/>"
          rel="stylesheet" type="text/css">
    <%--    --%>
    <link rel="stylesheet" href="<c:url value="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/>"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <title>BookApi2</title>

    <%--    Nav bar--%>
    <nav class="navbar navbar-dark bg-dark mx-auto shadow-lg p-3 mb-5 bg-dark rounded">
        <!-- Navbar content -->
        <a class="navbar-brand">
            <i class="fas fa-book"></i>
            <span>Book manager</span>
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
            <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                <li class="nav-item active">
                    <a class="nav-link" href="#">Books list <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/books/add">Add book</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Log out</a>
                </li>
            </ul>
        </div>
    </nav>
        <%--    Nav bar--%>
        </head>
<body>
