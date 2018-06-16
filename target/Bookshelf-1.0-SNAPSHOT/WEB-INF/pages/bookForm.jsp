<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: mkach_000
  Date: 15.06.2018
  Time: 18:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <c:choose>
        
        <c:when test="${!empty book.author}">
            <title>Update book</title>
        </c:when>
        <c:otherwise>
            <title>Add new book</title>
        </c:otherwise>
        
    </c:choose>
</head>
<body class="w3-sand">

<div class="w3-container w3-blue-grey w3-opacity w3-centered">
    <h1>Book Shelf</h1>
    <c:choose>

        <c:when test="${!empty book.author}">
            <h3>Update book ${book.title} by ${book.author}</h3>
        </c:when>
        <c:otherwise>
            <h3>Add new book</h3>
        </c:otherwise>

    </c:choose>

</div>

<form:form action="/save" method="post" modelAttribute="book">
    <table align="center">
        <form:hidden path="id"/>

        <c:choose>

            <c:when test="${!empty book.author}">
                <tr>
                    <td width="100">AUTHOR: </td>
                    <td width="500">${book.author}</td>
                    <form:hidden path="author"/>
                </tr>
            </c:when>
            <c:otherwise>
                <tr>
                    <td width="100">AUTHOR: </td>
                    <td>
                        <form:input type="text" path="author" class="w3-input w3-animate-input w3-border w3-round-large" style="width: 80%"/>
                    </td>
                </tr>
            </c:otherwise>

        </c:choose>

        <tr>
            <td width="100">TITLE: </td>
            <td>
                <form:input type="text" path="title" class="w3-input w3-animate-input w3-border w3-round-large" style="width: 80%"/>
            </td>
        </tr>

        <tr>
            <td width="100">DESCRIPTION: </td>
            <td>
                <form:input path="description" type="text" class="w3-inut w3-animate-input w3-border w3-round-large" style="width:80%"/>
            </td>
        </tr>

        <tr>
            <td width="100">ISBN: </td>
            <td>
            <form:input path="isbn" type="text" class="w3-inut w3-animate-input w3-border w3-round-large" style="width:80%"/>
            </td>
        </tr>

        <tr>
            <td width="100">YEAR: </td>
            <td>
                <form:input path="printYear" type="text" class="w3-inut w3-animate-input w3-border w3-round-large" style="width:80%"/>
            </td>
        </tr>

        <tr>

            <td>
            </td>
            <td align="center">
            <button type="submit" class="w3-btn w3-blue-grey w3-round-large w3-margin-bottom">
                Save
            </button>
                <a class="w3-btn w3-blue-grey w3-round-large w3-margin-bottom" href="/">Back</a>
            </td>
        </tr>




    </table>

</form:form>



</body>
</html>
