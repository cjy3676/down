<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@ page import="java.sql.*"%> 
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>      
<%
    String path = "C:/Users/alfo1-5/eclipse-workspace2/down/WebContent/down";
    int max = 1024*1024*10;
    MultipartRequest multi = new MultipartRequest(request,path,max,"utf-8",new DefaultFileRenamePolicy()); 
    
    String aa = "jdbc:mysql://localhost:3307/amudo?useSSL=false";
	String bb = "root";
	String cc = "1234";
	Connection conn = DriverManager.getConnection(aa, bb, cc);
	Statement stmt = conn.createStatement();
	
    // 파일과 입력값 읽어오기
    String name = multi.getParameter("name");
    String title = multi.getParameter("title");
    String content = multi.getParameter("content");
    String img = multi.getFilesystemName("fname");
    String oimg = multi.getOriginalFileName("fname");
    Date today = new Date();
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
    String writeday = sdf.format(today);
    
    // 쿼리 작성
    String sql = "insert into hugi(name,title,content,img,oimg,writeday) values('"+name+"','"+title+"','"+content+"','"+img+"','"+oimg+"','"+writeday+"')";
    
    stmt.executeUpdate(sql);
    
    response.sendRedirect("hugi_list.jsp");
%> 