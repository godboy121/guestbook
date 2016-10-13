<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.bit2016.guestbook.dao.guestbookDao"%>
<%@page import="com.bit2016.guestbook.vo.guestbookVo"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%! guestbookVo vo=new guestbookVo();
	guestbookDao dao=new guestbookDao();%>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String name=request.getParameter("name");
	String content=request.getParameter("content");
	String passwd=request.getParameter("passwd");
	
	
	
	vo.setName(name);
	vo.setContext(content);
	vo.setPasswd(passwd);
	dao.insert(vo);
	
	response.sendRedirect("index.jsp");
%>

</body>
</html>