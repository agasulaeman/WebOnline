<%-- 
    Document   : tblproduct
    Created on : 18-Dec-2017, 17:06:55
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

         <jsp:include page="header.jsp"/> 
         
        <c:forEach var="c" items="${tblproduct}">
            <div class="p-3 align-self-center col-md-4">
                <div class="card">
                    <div class="card-block p-5">
                        <img src="<c:url value='/resources/img/beruang.jpg'/>"  class="img-fluid">
                        <h1><sup>Rp</sup> ${c.harga}</h1>
                        <h3>${c.nama}</h3>
                        <hr>
                        <p>Kami menyediakan Santet untuk pasangan anda melalui media boneka chucky ini.&nbsp;</p>
                        <a href="${pageContext.request.contextPath}/cart/add/${c.id}" class="btn btn-dark">Add to my cart</a>
                    </div>
                </div>
            </div>
        </c:forEach>

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
                            <a href="/belanjaOnline/order/add/" class="btn btn-dark">add to my Cart</a>
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
                            <a href="/belanjaOnline/order/add/101" class="btn btn-dark">Add to my cart</a>
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
        <div class="py-5 bg-dark gradient-overlay"></div>

        <div class="p-5 gradient-overlay">
            <div class="container">
                <div class="row">
                    <c:forEach var="c" items="${tblproduct}">
                        <div class="p-3 align-self-center col-md-4">
                            <div class="card">
                                <div class="card-block p-5">
                                    <h1><sup>Rp</sup> ${c.harga} </h1>
                                    <h3>${c.Nama}</h3>
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
    
</html>