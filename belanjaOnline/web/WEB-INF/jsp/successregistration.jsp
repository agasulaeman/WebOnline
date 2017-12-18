<%-- 
    Document   : successregistration
    Created on : 18-Dec-2017, 16:33:09
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Registrasi berhasil</h1>
        <h3>${data.namaLengkap} </h3> 
        <p>
            <a href="${pageContext.request.contextPath}/login">Please Login</a>
        </p>
    </body>
</html>
