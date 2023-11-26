<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<html>

<head>
   
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    <title>상품 삭제</title>
</head>

<body>
    <jsp:include page="top_menu_ad.jsp" />
    <div class="jumbotron">
        <div class="container">
            <h1 class="display-3">상품 삭제</h1>
        </div>
    </div>
    <%@ include file="../db/db_conn.jsp" %>
    <%
        String productId = request.getParameter("id");

        // SQL 문을 사용하여 상품 삭제
        String sql = "DELETE FROM product WHERE p_id = ?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, productId);

        // 삭제 성공 여부 확인
        int result = pstmt.executeUpdate();

        if (result > 0) {
    %>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="alert alert-success" role="alert">
                    상품이 성공적으로 삭제되었습니다.
                </div>
                <a href="product_edit.jsp?edit=delete" class="btn btn-primary">상품 목록으로 돌아가기</a>
            </div>
        </div>
    </div>
    <%
        } else {
    %>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="alert alert-danger" role="alert">
                    상품 삭제 중 오류가 발생했습니다. 다시 시도해 주세요.
                </div>
                <a href="product_edit.jsp?edit=delete" class="btn btn-primary">상품 목록으로 돌아가기</a>
            </div>
        </div>
    </div>
    <%
        }

        // 리소스 해제
        if (pstmt != null)
            pstmt.close();
        if (conn != null)
            conn.close();
    %>

    <hr>
    <jsp:include page="footer_ad.jsp" />
</body>

</html>