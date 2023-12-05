<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import="java.sql.*"%>
<%@ include file="../db/db_conn.jsp" %>

<%
    // 앞에서 받아온 id
    String id = request.getParameter("id");
    
    // db 연동
    String sql = "select * from member"; 
	pstmt = conn.prepareStatement(sql);
	rs = pstmt.executeQuery(); 
    while (rs.next()) {
        String test = rs.getString("id");
        
        if(id.equals(test)) {
            String sql1 = "delete from member where id = ?";
            pstmt = conn.prepareStatement(sql1);
            pstmt.setString(1, id);
            
            pstmt.executeUpdate(); 
            
        }
    }
    response.sendRedirect("member_view.jsp?edit=m_delete");
%>