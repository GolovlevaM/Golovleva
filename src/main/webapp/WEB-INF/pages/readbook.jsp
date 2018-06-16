<%--
  Created by IntelliJ IDEA.
  User: mkach_000
  Date: 15.06.2018
  Time: 16:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<p>
<head>
    <title>Browsed Book</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body class="w3-sand">

<div class="w3-container w3-blue-grey w3-opacity w3-centered">
    <h1>Book Shelf</h1>
    <h3>Book settings</h3>
</div>

        <h3 align="center">${book.title}</h3>

        <h5 align="center">by</h5>

        <h4 align="center">${book.author}</h4>
        <h5 align="center">This book's description</h5>
        <h4 align="center">
            ${book.description}
        </h4>
        <h4 align="center"> This book printed in ${book.printYear}</h4>
        <h4 align="center">ISBN: ${book.isbn}</h4>

        <h4 align="center">
        <c:choose>
            <c:when test="${book.readAlready}">
                <a class="show-hide-columns-button">ReadAlready</a>
            </c:when>
            <c:otherwise>
                <a class="w3-btn w3-blue-grey w3-round-large" href="reading?id=${book.id}">Read?</a>
            </c:otherwise>
        </c:choose>

        <a class="w3-btn w3-blue-grey w3-round-large" href="edit?id=${book.id}">Edit</a>

        <a class="w3-btn w3-blue-grey w3-round-large" href="/">Back</a>

        </h4>

</body>
</html>
