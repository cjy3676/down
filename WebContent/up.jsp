<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%
    String path = "C:/Users/alfo1-5/eclipse-workspace2/down/WebContent/down";
    int max = 1024*1024*10;
    MultipartRequest multi = new MultipartRequest(request,path,max,"utf-8",new DefaultFileRenamePolicy()); 
    
    // 업로드되는 파일의 정보를 가진 객체 => multi
    multi.getFilesystemName("fname");		
%>    
