<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>    
<%
    // DB연결
    String aa = "jdbc:mysql://localhost:3307/amudo?useSSL=false";
	String bb = "root";
	String cc = "1234";
	Connection conn = DriverManager.getConnection(aa, bb, cc);
	Statement stmt = conn.createStatement();
	
	// 일어오는 쿼리
	String sql = "select * from hugi";
	ResultSet rs = stmt.executeQuery(sql);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
     <table width="600" border="1">
     <tr>
     <td>작성자</td>
     <td>제목</td>
     <td>조회수</td>
     <td>작성일</td>
     </tr>
     <%
     while(rs.next()) {
     %>
     <tr>
     <td><%=rs.getString("name")%></td>
     <td><a href="hugi_content.jsp?id=<%=rs.getString("id")%>"><%=rs.getString("title")%></a></td>
     <td><%=rs.getString("readnum")%></td>
     <td><%=rs.getString("writeday")%></td>
     </tr>
     <%	 
     }
     %>
     </table>
</body>
</html>