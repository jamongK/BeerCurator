<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" 	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="../CSS/main.css" type="text/css">
<link rel="stylesheet" href="../CSS/industry.css" type="text/css">
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
        <h1>세계 맥주 시장</h1>
        <p class="page-details">세계 맥주 기업 & 산하 브랜드들</p>
        <div class="brIndustry">
            <div class="carlsGroup">
                <div class="carls-logo">
                    <a href="https://www.carlsberggroup.com/">
                        <img src="../img/CarlsbergGroup.png" alt="CarlsbergGroup green logo">
                    </a>
                </div>
                <div class="yelArrow1">
                    <img src="../img/yellow-arrow.png" alt="yellow arrow">
                </div>
                <div class="carls">
                    <img src="../img/칼스버그.png" alt="Carlsberg">
                </div>
                <div class="kronen">
                    <img src="../img/크로넨버그.png" alt="Kronenberg">
                </div>
                <div class="staro">
                    <img src="../img/스타로프라넨.png" alt="Staropramen">
                </div>
                <div class="wars">
                    <img src="../img/봐슈타이너.png" alt="Warsteiner">
                </div>
            </div>
            <div class="abGroup">
                <div class="abInBev-logo">
                    <a href="https://www.ab-inbev.com/">
                        <img src="../img/330px-ABInbev_Logo.svg.png" alt="AB-InBev Group logo">
                    </a>
                </div>
                <div class="yelArrow2">
                    <img src="../img/yellow-arrow.png" alt="yellow arrow">
                </div>
                <div class="leffe">
                    <img src="../img/레페.png" alt="Leffe">
                </div>
                <div class="bud">
                    <img src="../img/버드와이저.png" alt="Budweiser">
                </div>
                <div class="becks">
                    <img src="../img/벡스.png" alt="Becks">
                </div>
                <div class="corona">
                    <img src="../img/코로나.png" alt="Corona">
                </div>
            </div>
            <div class="RadeGruppe">
                <div class="Rade-logo">
                    <a href="https://www.radeberger-gruppe.de/index.html">
                        <img src="../img/330px-Logo_Radeberger_Gruppe.svg.png" alt="Radeberger Gruppe logo">
                    </a>
                </div>
                <div class="yelArrow3">
                    <img src="../img/yellow-arrow.png" alt="yellow arrow">
                </div>
                <div class="berKindl">
                    <img src="../img/베를리너킨들.png" alt="Berliner Kindl">
                </div>
                <div class="berPils">
                    <img src="../img/베를리너필스너.png" alt="Berliner Pilsner">
                </div>
                <div class="schoff">
                    <img src="../img/쇼퍼호퍼.png" alt="Schofferhofer">
                </div>
                <div class="tucher">
                    <img src="../img/투허.png" alt="Tucher">
                </div>
            </div>
            <div class="mcGroup">
                <div class="molson-logo">
                    <a href="https://www.molsoncoors.com/">
                        <img src="../img/Molson-Coors-logo_web.jpg" alt="Molson Coors logo">
                    </a>
                </div>
                <div class="yelArrow4">
                    <img src="../img/yellow-arrow.png" alt="yellow arrow">
                </div>
                <div class="blMoon">
                    <img src="../img/블루문.png" alt="Blue Moon">
                </div>
                <div class="miller">
                    <img src="../img/밀러.png" alt="Miller">
                </div>
                <div class="carling">
                    <img src="../img/칼링.png" alt="Carling">
                </div>
                <div class="grol">
                    <img src="../img/그롤쉬.png" alt="Grolsch">
                </div>
            </div>
            <div class="ashGroup">
                <div class="asahi-logo">
                    <a href="https://www.asahigroup-holdings.com/en/">
                        <img src="../img/Asahi_logo.svg.png" alt="Asahi Group Holdings logo">
                    </a>
                </div>
                <div class="yelArrow5">
                    <img src="../img/yellow-arrow.png" alt="yellow arrow">
                </div>
                <div class="asahi">
                    <img src="../img/아사히.png" alt="Asahi">
                </div>
                <div class="peroni">
                    <img src="../img/페로니.png" alt="Peroni">
                </div>
                <div class="pilsUrq">
                    <img src="../img/필스너우르켈.png" alt="Pilsner Urquell">
                </div>
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