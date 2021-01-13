<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" 	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="../CSS/main.css" type="text/css">
<link rel="stylesheet" href="../CSS/write.css" type="text/css">
<title>맥주 큐레이터</title>
</head>
<body>
	<%
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}
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
				<form method="post" action="writeAction.jsp">
					<table class="table table-striped">
						<thead>
							<tr>
								<th colspan="2" class="form-th">게시판 글쓰기</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><input type="text" class="form-control" placeholder="글 제목" name="brdTitle" maxlength="50"></td>
							</tr>
							<tr>
								<td><textarea class="form-control form-content" placeholder="글 내용" name="brdContent" maxlength="2048"></textarea></td>
							</tr>
						</tbody>
					</table>
					<input type="submit" class="btn btn-primary pull-right write-btn" value="글쓰기">
				</form>
			</div>
		</div>
	</main>
	<footer>
        <div class="ccMark">
            <a rel="license" href="http://creativecommons.org/licenses/by-nc-nd/4.0/">
                <img alt="크리에이티브 커먼즈 라이선스" style="border-width:0"
                    src="https://i.creativecommons.org/l/by-nc-nd/4.0/88x31.png" />
            </a><br />
            이 저작물은 <a rel="license" href="http://creativecommons.org/licenses/by-nc-nd/4.0/">크리에이티브 커먼즈 저작자표시-비영리-변경금지
                4.0 국제 라이선스</a>에 따라 이용할 수 있습니다.
        </div>
        <div class="crByME">
            <p>Copyright 2020. Kim Jakyeong all rights reserved.</p>
        </div>
    </footer>
</body>
</html>