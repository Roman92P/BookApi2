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
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">

    <title>BookApi2</title>

    <%--    Nav bar--%>
    <nav class="navbar navbar-dark bg-dark mx-auto shadow-lg p-3 mb-5 bg-dark rounded">
        <!-- Navbar content -->
        <a class="navbar-brand">
            <i class="fa fa-book"></i>
            <span>Book manager</span>
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
            <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                <li class="nav-item">
                    <a class="nav-link" href="/books"><i class="fa fa-list-alt" aria-hidden="true"></i> Books list </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/books/add"><i class="fa fa-plus-square" aria-hidden="true"></i>
                         Add book</a>
                </li>
                <li class="nav-item">
                    <form:form action="/logout" method="post">
                        <input type="submit" value="Sign Out"/>
                    </form:form>
                    <a class="nav-link" href="#"><i class="fa fa-user" aria-hidden="true"></i>
                        Log out</a>
                </li>
            </ul>
        </div>
    </nav>
        <%--    Nav bar--%>
        </head>
<body>
