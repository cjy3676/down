<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<h2>여행 후기</h2>
	<form method="post" action="hugi_ok.jsp" enctype="multipart/form-data">
		작성자 : <input type="text" name="name">
		<p>
	         제목 : <input type="text" name="title" size="50">
		<p>
		내용 : <textarea rows="4" cols="50" name="content"></textarea>
		<p>
		그림 : <input type="file" name="fname">
		<p>
		<input type="submit" value="저장">
	</form>
</body>
</html>