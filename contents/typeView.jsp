<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="type.TypeDAO" %>
<%@ page import="type.Type" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" 	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="../CSS/main.css" type="text/css">
<link rel="stylesheet" href="../CSS/typeView.css" type="text/css">
<title>맥주 큐레이터</title>
</head>
<body>
	<%
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}
		int typeID = 0;
		if (request.getParameter("typeID") != null) {
			typeID = Integer.parseInt(request.getParameter("typeID"));
		}
		if (typeID == 0) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('유효하지 않는 글입니다')");
			script.println("location.href = 'type.jsp'");
			script.println("</script>");
		}
		Type type = new TypeDAO().getType(typeID);
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
	<%
		int idx = type.getTypeID();
		String url = "";
		
		switch(idx) {
		case 1:
			url = "../img/typeview/pilsner.png";
            break;
        case 2:
        	url = "../img/typeview/lager.png";
            break;
        case 3:
        	url = "../img/typeview/american-lager.png";
            break;
        case 4:
        	url = "../img/typeview/helles.png";
            break;
        case 5:
        	url = "../img/typeview/marzen.png";
            break;
        case 6:
        	url = "../img/typeview/kolsch.png";
            break;
        case 7:
        	url = "../img/typeview/kellerbier.png";
            break;
        case 8:
        	url = "../img/typeview/weiss.png";
            break;
        case 9:
        	url = "../img/typeview/porter.png";
            break;
        case 10:
        	url = "../img/typeview/stout.png";
            break;
        case 11:
        	url = "../img/typeview/rauchbier.png";
            break;
        case 12:
        	url = "../img/typeview/bock.png";
            break;
        case 13:
        	url = "../img/typeview/pale-ale.png";
            break;
        case 14:
        	url = "../img/typeview/IPA.png";
            break;
        case 15:
        	url = "../img/typeview/belgian-ale.png";
            break;
        case 16:
        	url = "../img/typeview/belgian-wheat.png";
            break;
        default:
        	url = "#";
            break;
		}
		
		
		
	%>
		<h1>맥주 타입 상세 정보</h1>
        
        <article class="type-info">
            <div class="type-img">
                <img src=<%= url %> alt="beer type pictogram image">
            </div>
            <div class="type-data">
                <h3 class="type-name"><%=type.getTypeName()%></h3>
                <p class="type-color"><b>색</b> : <%=type.getColor()%></p>
                <p class="type-taste"><b>맛</b> : <%=type.getTaste()%></p>
                <p class="type-feature"><%=type.getFeature()%></p>
                <p class="type-product"><b>대표제품</b> : <%=type.getProduct()%></p>
            </div>
        </article>
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