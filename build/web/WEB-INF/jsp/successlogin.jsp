<%-- 
    Document   : success
    Created on : Oct 18, 2017, 3:09:38 PM
    Author     : zulfahmi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet">
    </head>
    <body>
        <jsp:include page="head.jsp"/> 
        <div class="container">
            <div align="center" class="jumbotron">
            <h1>${user.username}, Anda berhasil Login</h1>
            <h2 align="center"><a href="${pageContext.request.contextPath}/product">Lihat Product Kami</a></h2>
        </div>
        </div>
    </body>
</html>
