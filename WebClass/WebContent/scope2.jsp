<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>scope 2</h1>
<form action="/Webclass/scope" method="post">
<input type="text" name="id">
<input type="password" name="pwd">
<input type="hidden" name="pwd" value="test">
<button type="submit">����</button>
</form>

<h1>id : <%= request.getParameter("id") %></h1>
<h1>pwd : <%= request.getParameter("pwd") %></h1>
<h1>request scope : <%= request.getAttribute("key") %></h1>
<h1>session scope : <%= session.getAttribute("key") %></h1>
<h1>application scope : <%= application.getAttribute("key") %></h1>

<hr>

<form action="/WebCLass/jsp/scope2.jsp" method="post">
<button type="submit">���� 2</button>
</form>

</body>
</html>