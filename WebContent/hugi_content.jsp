<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>    
<%
    String aa = "jdbc:mysql://localhost:3307/amudo?useSSL=false";
	String bb = "root";
	String cc = "1234";
	Connection conn = DriverManager.getConnection(aa, bb, cc);
	Statement stmt = conn.createStatement();
	
	String id = request.getParameter("id");
	
	// 쿼리작성 => 하나의 레코드만 읽어오는 쿼리
	String sql = "select * from hugi where id="+id;
	ResultSet rs = stmt.executeQuery(sql);
	rs.next();
%>	
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<table width="600">
		<tr>
			<td>작성자</td>
			<td><%=rs.getString("name")%></td>
		</tr>
		<tr>
			<td>제목</td>
			<td><%=rs.getString("title")%></td>
		</tr>
		<tr>
			<td>내용</td>
			<td><%=rs.getString("content")%></td>
		</tr>
		<tr>
			<td>사진</td>
			<td><img src="down/<%=rs.getString("img")%>" width="700"></td>
		</tr>
		<tr>
			<td>작성일</td>
			<td><%=rs.getString("writeday")%></td>
		</tr>
	</table>
</body>
</html>