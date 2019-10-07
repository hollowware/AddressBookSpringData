<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="<c:url value="/resources/css/main.css"/>" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Montserrat&display=swap" rel="stylesheet">
        <title>Person List</title>
    </head>
    <body>
        <div class="content">
            <h1>Person List:</h1>
            <c:forEach var="p" items="${list}">
                <span><b>ID: </b>${p.id}</span>
                <span><b>Vardas: </b>${p.firstName}</span>
                <span><b>Pavarde: </b>${p.lastName}</span>
                <span><b>Metai: </b><fmt:formatDate value="${p.birthDate}" pattern="yyyy-MM-dd"></fmt:formatDate></span>
                <span><b>Pinigu: </b>${p.salary}</span>
                <a class="red" href="delete?id=${p.id}">Delete</a>
                <a class="blue" href="edit?id=${p.id}">Edit</a>
                <a class="yellow" href="personAddressList?id=${p.id}">Show Address List</a>
                <a class="yellow" href="personContactList?id=${p.id}">Show Contact List</a>
                <hr>
            </c:forEach>
            <a class="green new" href="edit">New</a>
        </div>
    </body>
</html>
