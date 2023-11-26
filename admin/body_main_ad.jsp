<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />

<%! String greeting = "현재 페이지는 상품 목록입니다.";
   String tagline = "여기어때 현재 페이지는 상품 목록"; %>

<div class="container">
    <div class="jumbotron">
        <div class="container">
            <img src="../admin/image/bodymain.png" alt="이미지 설명" style="max-width: 100%; height: auto;">

            <p><%=tagline%></p> 
        </div>
    </div>
</div>
    <%
    ProductRepository dao = ProductRepository.getInstance();
    ArrayList<Product> listOfProducts = dao.getAllProducts();
    %>
    <div class="container">
        <div class="row" align="center">
            <%
            for (int i = 0; i < listOfProducts.size(); i++) {
                Product product = listOfProducts.get(i);
                %>
            <div class = "col-md-4">
                <div class = "card bg-dark text-white">
                    <img src="../image/product/<%=product.getFilename()%>" class="card-img" alt="...">
                    <div class="card-img-overlay">
                       
                    </div>
                </div>
                <h3><%=product.getPname()%></h3>
                <p><%=product.getDescription()%>
                <p><%=product.getUnitPrice()%>원
                <p><a href="product_detail_ad.jsp?id=<%=product.getProductId()%>" class="btn btn-secondary" role="button">상품 상세 정보 &raquo;</a>
            </div>
            <%
            }
            %>
        </div>
        <hr>
    </div>
<div class="container">
    <div class="text-center">
        <h3>
            <%=tagline%>
        </h3>
    </div>
    <hr>
</div>


<div class="card bg-dark text-grey">
    <img src="image/trip.png" class="card-img" alt="...">
    <div class="card-img-overlay">
    <h5 class="card-title">울릉도 동남쪽 뱃길따라 이백리</h5>
    <p class="card-text"></p>
  </div>
  </div>

<div class="card bg-dark text-grey">
    <img src="image/trip2.png" class="card-img" alt="...">
    <div class="card-img-overlay">
    <h5 class="card-title">황금연휴 여기 어땡?</h5>
    <p class="card-text"></p>
  </div>
  </div>
    