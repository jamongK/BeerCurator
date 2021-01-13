<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="board.Board" %>
<%@ page import="board.BoardDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" 	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="../CSS/main.css" type="text/css">
<link rel="stylesheet" href="../CSS/view.css?after" type="text/css">
<title>맥주 큐레이터</title>
</head>
<body>
	<% // type.jsp에 활용
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}
		int brdID = 0;
		if (request.getParameter("brdID") != null) {
			brdID = Integer.parseInt(request.getParameter("brdID"));
		}
		if (brdID == 0) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('유효하지 않는 글입니다')");
			script.println("location.href = 'board.jsp'");
			script.println("</script>");
		}
		Board board = new BoardDAO().getBoard(brdID); // 이거 특히 중요
	%>
	<header class="clearfix">
		<div class="header-group">
			<div class="logo" onclick="location.href='main.jsp'">
				<div class="logo-img">
					<img src="../img/Beer_color.png" class="logo-img" alt="beer logo">
				</div>
				<div class="logo-title">
					<h1>맥주 큐레이터</h1>
				</div>
			</div>
			<nav>
				<div class="main-menu">
					<div class="menu-intro">
						<a href="intro.jsp">맥주 소개</a>
						<div class="sub-menu">
							<a href="intro.jsp">맥주 소개</a>
							<a href="type.jsp">맥주 종류</a>
							<a href="glassware.jsp">맥주 잔 종류</a>
							<a href="industry.jsp">세계맥주시장</a>
						</div>
					</div>
					<div class="menu-recommend">
						<a href="recommend.jsp">맥주추천</a>
					</div>
					<div class="menu-qna">
						<a href="board.jsp">문의게시판</a>
					</div>
					<div class="user-access" style="margin: 0px;">
						<%
							if (userID == null) {
						%>
						<div class="login">
							<a href="login.jsp">로그인</a>
						</div>
						<div class="join">
							<a href="join.jsp">회원가입</a>
						</div>
						<%
							} else {
						%>
						<div class="logout">
							<a href="logoutAction.jsp">로그아웃</a>
						</div>
						<%
							}
						%>
					</div>
				</div>
			</nav>
		</div>
	</header>
	<main>
		<div class="container">
			<div class="row">
				<table class="table table-striped">
					<thead>
						<tr>
							<th colspan="3">게시판 글 보기</th>
						</tr>
					</thead>
					<tbody>
						<tr class="content-title">
							<td style="width: 20%;">글 제목</td>
							<td colspan="2"><%=board.getBrdTitle().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n","<br>")%></td>
						</tr>
						<tr class="content-writer">
							<td>작성자</td>
							<td colspan="2"><%=board.getUserID()%></td>
						</tr>
						<tr class="content-date">
							<td>작성일</td>
							<td colspan="2"><%=board.getBrdDate().substring(0, 11) + board.getBrdDate().substring(11, 13) + "시" + board.getBrdDate().substring(14, 16) + "분"%></td>
						</tr>
						<tr class="contents">
							<td>내용</td>
							<td colspan="2" style="min-height: 200px; text-align: left;"><%=board.getBrdContent().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n",
		"<br>")%></td>
						</tr>
					</tbody>
				</table>
				<a href="board.jsp" class="btn btn-primary">목록</a>
				<%
					if (userID != null && userID.equals(board.getUserID())) {
				%>
				<a href="update.jsp?brdID=<%=brdID%>" class="btn btn-info">수정</a>
				<a onclick="return confirm('게시글을 삭제하시겠습니까?')"
					href="deleteAction.jsp?brdID=<%=brdID%>" class="btn btn-danger">삭제</a>
				<%
					}
				%>
				<a href="write.jsp" class="btn btn-primary pull-right write-btn" role="button">글쓰기</a>
			</div>
		</div>
	</main>
	<footer>
        <div class="ccMark">
            <a rel="license" href="http://creativecommons.org/licenses/by-nc-nd/4.0/">
                <img alt="크리에이티브 커먼즈 라이선스" style="border-width:0"
                    src="https://i.creativecommons.org/l/by-nc-nd/4.0/88x31.png" />
            </a><br /> 이 저작물은 
            <a rel="license" href="http://creativecommons.org/licenses/by-nc-nd/4.0/">크리에이티브 커먼즈 저작자표시-비영리-변경금지
                4.0 국제 라이선스</a>에 따라 이용할 수 있습니다.
        </div>
        <div class="crByME">
            <p>Copyright 2020. Kim Jakyeong all rights reserved.</p>
        </div>
    </footer>
</body>
</html>