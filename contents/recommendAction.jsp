<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" 	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="../CSS/main.css" type="text/css">
<title>맥주 큐레이터</title>
</head>
<body>
<%
	int bitterness = Integer.parseInt(request.getParameter("bitterness"));
	int maltiness = Integer.parseInt(request.getParameter("maltiness"));
	int fizziness = Integer.parseInt(request.getParameter("fizziness"));
	
	if (bitterness == 1) {
		session.setAttribute("bitterness", 1);
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("location.href = 'recommend.jsp'");
		script.println("</script>");
	} else if (bitterness == 2) {
		session.setAttribute("bitterness", 2);
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("location.href = 'recommend.jsp'");
		script.println("</script>");
	} else if (bitterness == 3) {
		session.setAttribute("bitterness", 3);
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("location.href = 'recommend.jsp'");
		script.println("</script>");
	} else {
		session.setAttribute("bitterness", 0);
	}
	
	if (maltiness == 1) {
		session.setAttribute("maltiness", 1);
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("location.href = 'recommend.jsp'");
		script.println("</script>");
	} else if (maltiness == 2) {
		session.setAttribute("maltiness", 2);
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("location.href = 'recommend.jsp'");
		script.println("</script>");
	} else if (maltiness == 3) {
		session.setAttribute("maltiness", 3);
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("location.href = 'recommend.jsp'");
		script.println("</script>");
	} else {
		session.setAttribute("maltiness", 0);
	}
	
	if (fizziness == 1) {
		session.setAttribute("fizziness", 1);
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("location.href = 'recommend.jsp'");
		script.println("</script>");
	} else if (fizziness == 3) {
		session.setAttribute("fizziness", 3);
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("location.href = 'recommend.jsp'");
		script.println("</script>");
	} else {
		session.setAttribute("fizziness", 0);
	}
%>
</body>
</html>