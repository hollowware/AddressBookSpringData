<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="<c:url value="/resources/css/main.css"/>" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Montserrat&display=swap" rel="stylesheet">
        <title>Person Address List</title>
    </head>
    <body>
        <div class="content short-content">
            <h1>Person Address List:</h1>
            <c:forEach var="a" items="${addressList}">
                <span><b>ID: </b>${a.id}</span>
                <span><b>Address: </b>${a.address}</span>
                <span><b>City: </b>${a.city}</span>
                <span><b>Postal Code: </b>${a.postalCode}</span>
                <a class="red" href="deleteAddress?id=${a.id}">Delete</a>
                <a class="blue" href="editAddress?id=${a.id}">Edit</a>
                <hr>
            </c:forEach>
            <a class="green new" href="editAddress">New</a>
            <a class="red new" href="./">Cancel</a> 
        </div>
    </body>
</html>
