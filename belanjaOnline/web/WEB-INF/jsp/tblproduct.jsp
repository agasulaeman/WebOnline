<%-- 
    Document   : tblproduct
    Created on : 18-Dec-2017, 17:06:55
    Author     : user
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="https://v40.pingendo.com/assets/bootstrap/bootstrap-4.0.0-beta.1.css" type="text/css">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="header.jsp"/>  
        <!--
        <c:forEach var="c" items="${tblproduct}">
            <p>
                <a href="${c.id}"> ${c.productNama}</a> 
                <a href="${pageContext.request.contextPath}/order/add/${c.id}">Add to cart</a>
            </p> -->
        </c:forEach>
        
        <!--<!--
        
            <p>
                <a href="1"> Boneka Beruang</a> 
                <a href="/myannotation/order/add/1">Add to cart</a>
            </p>
        
            <p>
                <a href="2"> Boneka Elmo</a> 
                <a href="/myannotation/order/add/2">Add to cart</a>
            </p>
        
            <p>
                <a href="101"> Boneka Panda</a> 
                <a href="/myannotation/order/add/101">Add to cart</a>
            </p>
        
            <p>
                <a href="102"> Boneka Santet</a> 
                <a href="/myannotation/order/add/102">Add to cart</a>
            </p>
        
            <p>
                <a href="103"> Boneka Couple</a> 
                <a href="/myannotation/order/add/103">Add to cart</a>
            </p>
        
            <p>
                <a href="104"> Boneka Chucky</a> 
                <a href="/myannotation/order/add/104">Add to cart</a>
            </p>
        
        -->
	<div class="container-fluid">
      <div class="row bg-dark">
        <div class="p-0 col-md-4 col-6">
            <div class="card"></div>
            <img src="<c:url value='/resources/img/beruang.jpg'/>"  class="img-fluid"> </div>
        <div class="col-md-4 col-6 p-0">
            <img src="<c:url value='/resources/img/elmo.jpg'/>"   class="img-fluid"> </div>
        <div class="col-md-4 col-6 p-0">
            <img src="<c:url value='/resources/img/panda.jpg'/>"  class="img-fluid"> </div>
        <div class="col-md-4 col-6 p-0">
            <img src="<c:url value='/resources/img/santet.jpg'/>" class="img-fluid"> </div>
        <div class="col-md-4 col-6 p-0">
            <img src="<c:url value='/resources/img/couple.jpg'/>"  class="img-fluid"> </div>
        <div class="col-md-4 col-6 p-0">
            <img src="<c:url value='/resources/img/chucky.jpg'/>" class="img-fluid"> </div>
      </div>
    </div>
        
		<div class="py-5 bg-dark gradient-overlay"></div>
		<div class="container">
      <div class="row">
        
        <div class="p-3 align-self-center col-md-4">
          <div class="card">
            <div class="card-block p-5">
              <h1><sup>Rp</sup> 150000.0 </h1>
              <h3>Boneka Beruang</h3>
              <hr>
              <p>Cocok untuk anda yang ingin memberikan Kado romantis untuk pasangan anda.&nbsp;</p>
              <a href="/belanjaOnline/order/add/1" class="btn btn-dark">add to my Cart</a>
            </div>
          </div>
        </div>
        
        <div class="p-3 align-self-center col-md-4">
          <div class="card">
            <div class="card-block p-5">
              <h1><sup>Rp</sup> 250000.0 </h1>
              <h3>Boneka Elmo</h3>
              <hr>
              <p>Boneka Yang sangat pas untuk pasangan anda ketika hati sedang gundah gulana.&nbsp;</p>
              <a href="/belanjaOnline/order/add/2" class="btn btn-dark">Add to my cart</a>
            </div>
          </div>
        </div>
        
        <div class="p-3 align-self-center col-md-4">
          <div class="card">
            <div class="card-block p-5">
              <h1><sup>Rp</sup> 75000.0 </h1>
              <h3>Boneka Panda</h3>
              <hr>
              <p>Boneka yang Unyu unyu ini pas untuk merayakan hari anniversary kalian .&nbsp;</p>
              <a href="/belanjaOnline/order/add/{productID}" class="btn btn-dark">Add to my cart</a>
            </div>
          </div>
        </div>
        
        <div class="p-3 align-self-center col-md-4">
          <div class="card">
            <div class="card-block p-5">
              <h1><sup>Rp</sup> 120000.0 </h1>
              <h3>Boneka Santet</h3>
              <hr>
              <p>Pasangan Anda Selingkuh ? Tenang kami menyediakan Boneka santet untuk mengobati rasa kekecewaan anda.&nbsp;</p>
              <a href="/belanjaOnline/order/add/102" class="btn btn-dark">Add to my cart</a>
            </div>
          </div>
        </div>
        
        <div class="p-3 align-self-center col-md-4">
          <div class="card">
            <div class="card-block p-5">
              <h1><sup>Rp</sup> 35000.0 </h1>
              <h3>Boneka Couple</h3>
              <hr>
              <p>Berikan boneka ini sebagai tanda kasih sayang anda.&nbsp;</p>
              <a href="/belanjaOnline/order/add/103" class="btn btn-dark">Add to my cart</a>
            </div>
          </div>
        </div>
        
        <div class="p-3 align-self-center col-md-4">
          <div class="card">
            <div class="card-block p-5">
              <h1><sup>Rp</sup> 75000.0 </h1>
              <h3>Boneka Chucky</h3>
              <hr>
              <p>Kami menyediakan Santet untuk pasangan anda melalui media boneka chucky ini.&nbsp;</p>
              <a href="/belanjaOnline/order/add/104" class="btn btn-dark">Add to my cart</a>
            </div>
          </div>
        </div>
        
      </div>
    </div>
                <!--
        <p>
            <a href = "1"> Boneka Beruang</a>
            <a href ="/myannotation/order/add/1">Add to cart</a>
        </p>
        
        <p>
            <a href = "2"> Boneka Elmo</a>
            <a href ="/myannotation/order/add/2">Add to cart</a>
        </p>
        
        <p>
            <a href = "3"> Boneka panda</a>
            <a href ="/myannotation/order/add/3">Add to cart</a>
        </p>
        
        <p>
            <a href = "4"> Boneka Santet</a>
            <a href ="/myannotation/order/add/4">Add to cart</a>
        </p>
        
        <p>
            <a href = "5"> Boneka Couple</a>
            <a href ="/myannotation/order/add/5">Add to cart</a>
        </p>
        
        <p>
            <a href = "6"> Boneka Chucky</a>
            <a href ="/myannotation/order/add/6">Add to cart</a>
        </p>
        -->
  <div class="py-5 bg-dark gradient-overlay"></div>
    
  <div class="p-5 gradient-overlay">
    <div class="container">
      <div class="row">
        <c:forEach var="c" items="${tblproduct}">
        <div class="p-3 align-self-center col-md-4">
          <div class="card">
            <div class="card-block p-5">
              <h1><sup>Rp</sup> ${c.harga} </h1>
              <h3>${c.productNama}</h3>
              <hr>
              <p>Perfect for small business and growing teams.&nbsp;</p>
              <a href="${pageContext.request.contextPath}/order/add/${c.id}" class="btn btn-dark">Add to my Cart</a>
            </div>
          </div>
        </div>
        </c:forEach>
      </div>
    </div>
  </div>
    </body>
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
</html>