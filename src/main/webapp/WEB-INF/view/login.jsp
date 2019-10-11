<%-- 
    Document   : login
    Created on : Oct 10, 2019, 12:49:03 PM
    Author     : artur
--%>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="<c:url value="/resources/css/login.css"/>" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Montserrat&display=swap" rel="stylesheet">
        <title>Log In</title>
    </head>
    <body>
        <c:if test="${error}">
            <span class="err">Ops! Something went wrong! Try again.. </span>
        </c:if>
        <div class="signin">
            <form action="login" method='POST'>
                <h2>Sign In</h2>
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                <input type='text' name='username' value='' placeholder="Enter username">
                <input type='password' name='password' placeholder="Enter password"/>
                <button class="btn" name="submit" type="submit">Sign In</button>
            </form>
        </div>
    </body>
</html>
