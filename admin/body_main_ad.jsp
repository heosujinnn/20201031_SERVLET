<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>

<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />
<%! String greeting = "현재 페이지는 VGA 그래픽 카드 상품 목록입니다.";
	String tagline = "하단 페이지 : 확인";%>

    <div class="container">
	<div class="jumbotron">
		<div class="container">
			<h3 class="display-4">
				<%=greeting%>
            </h3>
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
			<div class="col-md-4">
                        <div class="card bg-dark text-white">
<img src="../image/product/<%=product.getFilename()%>" class="card-img" alt="...">

                        <div class="card-img-overlay">
                        <h5 class="card-title">그래픽 카드 이미지 샘플</h5>
                        <p class="card-text">출처 : 구글 검색</p>
                        </div>
                        </div>

				<h3><%=product.getPname()%></h3>
				<p><%=product.getDescription()%>
				<p><%=product.getUnitPrice()%>원
                <p><a href="product_detail.jsp?id=<%=product.getProductId()%>" class="btn btn-secondary" role="button"> 상품 상세 정보 &raquo;</a>

			</div>
			<%
				}
			%>
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
    