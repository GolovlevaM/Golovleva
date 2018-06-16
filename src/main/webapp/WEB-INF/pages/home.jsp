<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>



<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Book Shelf</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body class="w3-sand">

    <div class="w3-container w3-blue-grey w3-opacity w3-centered">
        <h1>Welcome on Book Shelf</h1>
    </div>

    <div>
    <table class="w3-table w3-bordered w3-border w3-centered w3-striped">
        <tr>
            <th width="120">
                Filtres for Books
            </th>
            <th width="100">
                <form action="">
                    Find
                    <input type="text" name="lookFor" size="20" value="${lookFor}">
                </form>

            </th>
            <th width="140">
                <form action="">
                    Printed from
                    <input type="text" name="year" size="15" value="${year}">
                    year
                </form>
            </th>
            <th width="80">
                <form action="">
                    Read/Unread
                    <input type="text" name="readingFilter" list="list" value="${readAlready}">
                    <datalist id="list">
                        <option value="read">
                        <option value="unread">
                    </datalist>
                </form>
            </th>
            <th width="40">
                <br>
                <a class="w3-btn w3-blue-grey w3-round-large" href="/">All</a>
            </th>

            <th width="200" class="w3-container w3-right">
                <br>
        <a class="w3-btn w3-blue-grey w3-round-large" href="add">Add New Book</a>
            </th>
        </tr>
    </table>

    </div>

    <table class="w3-table w3-bordered w3-border w3-small w3-hoverable w3-centered w3-striped">
        <tr>
            <th width="80">ID</th>
            <th width="120">Author</th>
            <th width="120">Title</th>
            <th width="100">Actions</th>
        </tr>
        <c:forEach items="${booksList}" var="book">
            <tr>
                <td>${book.id}</td>
                <td>${book.author}</td>
                <td>${book.title}</td>
                <td>
                    <c:choose>
                        <c:when test="${book.readAlready}">
                            <a class="show-hide-columns-button">ReadAlready</a>
                        </c:when>
                        <c:otherwise>
                            <a class="w3-btn w3-blue-grey w3-round-large" href="reading?id=${book.id}">Read?</a>
                        </c:otherwise>
                    </c:choose>
                    <a class="w3-btn w3-blue-grey w3-round-large" href="browse?id=${book.id}">Browse</a>
                    <a class="w3-btn w3-blue-grey w3-round-large" href="edit?id=${book.id}">Edit</a>
                    <a class="w3-btn w3-blue-grey w3-round-large" href="delete?id=${book.id}">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>

    <div class="w3-center">
        <div class="w3-bar w3-border w3-round">

            <c:url value="/" var="prev">
                <c:param name="page" value="${page-1}"/>
            </c:url>
            <c:if test="${page > 1}">
                <a class="w3-button" href="<c:out value="${prev}&lookFor=${param.lookFor}&year=${param.year}&readingFilter=${param.readAlready}" />">Previous</a>
            </c:if>

            <c:forEach begin="1" end="${pageCount}" step="1" varStatus="i">
                <c:choose>
                    <c:when test="${page == i.index}">
                        <a class="w3-button w3-green">${i.index}</a>
                    </c:when>
                    <c:otherwise>
                        <c:url value="/" var="url">
                            <c:param name="page" value="${i.index}"/>
                        </c:url>
                        <a class="w3-button" href="<c:out value="${url}&lookFor=${param.lookFor}&year=${param.year}&readingFilter=${param.readAlready}" />">${i.index}</a>
                    </c:otherwise>
                </c:choose>
            </c:forEach>
            <c:url value="/" var="next">
                <c:param name="page" value="${page + 1}"/>
            </c:url>
            <c:if test="${page + 1 <= pageCount}">
                <a class="w3-button" href="<c:out value="${next}&lookFor=${param.lookFor}&year=${param.year}&readingFilter=${param.readAlready}" />">Next</a>
            </c:if>
        </div>
    </div>

</body>
</html>