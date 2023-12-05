<%@ page contentType="text/html; charset=utf-8" %>
<nav class="navbar navbar-expand-lg bg-danger">
    <div class="dropdown">
        <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            여행 정보
        </button>
        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
            <a class="dropdown-item" href="#">국내여행</a>
            <a class="dropdown-item" href="#">해외여행</a>
            <a class="dropdown-item" href="#">당일치기</a>
        </div>
    </div>

    <div>
        <img src="image\logo3.png" class="img-fluid" alt="main_image">
    </div>

    <div class="container">
           <a class="navbar-brand" href="../index.jsp" style="color: white; ">메뉴바 : 홈페이지</a>
           <a style="color:white;" class="navbar-brand" href="../member/member_view.jsp?edit=m_view">회원보기</a>
            <a style="color:white;" class="navbar-brand" href="../member/member_view.jsp?edit=m_update">회원수정</a>
            <a style="color:white;" class="navbar-brand" href="../member/member_view.jsp?edit=m_delete">회원삭제</a>
            <a class="navbar-brand" href="index_ad.jsp" style="color: white; ">상품 보기</a>
            <a class="navbar-brand" href="product_add.jsp" style="color: white; ">등록</a>
            <a class="navbar-brand" href="product_edit.jsp?edit=update" style="color: white; ">수정</a>
            <a class="navbar-brand" href="product_edit.jsp?edit=delete" style="color: white; ">삭제</a>            
            <a class="navbar-brand" href="../index.jsp" style="color: white; ">일반모드</a>
                                                      

    </div>
</nav>