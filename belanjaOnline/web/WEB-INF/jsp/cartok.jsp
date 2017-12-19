<%-- 
    Document   : cartok
    Created on : 18-Dec-2017, 16:28:26
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
                <h3><a href="#">Cart: ${cart.carts.size()}</a></h3>
                <c:forEach var="c" items="${cart.carts.values()}">
                    <label>Product Name: ${c.nama}</label></br>
                    <label>Harga: ${c.harga}</label></br>
                </c:forEach>
                    <a href="${pageContext.request.contextPath}/product/all">Belanja Lagi</a>
    </body>
</html>