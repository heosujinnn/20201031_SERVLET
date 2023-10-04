<%@ page import="example.*" %>
<%@ page errorPage = "exception/main_server_downtime.jsp" %>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />
<html>
<title>상품 상세 정보</title>
<body>
    <%@ include file="../top_banner.jsp" %>
	<%@ include file="../top_menu.jsp" %>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 정보 에러!! 홈페이지 관리자에게 문의해 주세요.</h1>
		</div>
	</div>
    <%@ include file="../footer.jsp" %>
</body>
</html>