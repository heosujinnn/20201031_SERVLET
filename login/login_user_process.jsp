<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import="java.sql.*"%>
<%@ include file="../db/db_conn.jsp" %>

<%
    // 1. 로그인 정보 받아오기
    request.setCharacterEncoding("UTF-8");
    String j_username = request.getParameter("j_username");
    String j_password = request.getParameter("j_password");

    String sql = "SELECT * FROM member WHERE id = ? AND password = ?";
    pstmt = conn.prepareStatement(sql);
    pstmt.setString(1, j_username);
    pstmt.setString(2, j_password);

    rs = pstmt.executeQuery();

if (rs.next()) {
    String userId = rs.getString("id");
    session.setAttribute("loggedInUserId", userId);  // 세션 어트리뷰트
    
    response.sendRedirect("../index.jsp");
        
    } else {
       
        response.sendRedirect("../login.jsp?error=1"); 
    }
%>