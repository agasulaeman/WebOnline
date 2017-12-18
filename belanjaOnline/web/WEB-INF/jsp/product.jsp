<%-- 
    Document   : product
    Created on : 18-Dec-2017, 16:30:39
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
        <h1>${product.productNama}</h1>
        <p>
            Harga: ${product.harga} IDR
            Stok: ${product.stok} pcs
        </p>
    </body>
</html>