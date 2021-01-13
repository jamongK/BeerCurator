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
<link rel="stylesheet" href="../CSS/glassware.css" type="text/css">
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
        <h1>맥주 잔 종류</h1>
        <p class="page-details">맥주 잔 종류 & 어울리는 맥주 타입</p>
        <div class="row1">
            <div class="card tulip">
                <h5 class="card-header">튤립 &nbsp; Tulip</h5>
                <div class="card-body">
                    <img class="card-img-top" src="../img/glasses/tulip.png" alt="Card image cap">
                    <div class="card-text">
                        <p>벨기에 맥주제품 "Duvel"</p>
                        <p>필스너 &nbsp; Pilsner</p>
                        <p>바이젠 &nbsp; Weizen</p>
                    </div>
                </div>
            </div>
            <div class="card flute">
                <h5 class="card-header">플루트 &nbsp; Flute</h5>
                <div class="card-body">
                    <img class="card-img-top" src="../img/glasses/flute.png" alt="Card image cap">
                    <div class="card-text">
                        <p>헬레스 &nbsp; Helles</p>
                        <p>필스너 &nbsp; Pilsner</p>
                        <p>사이더 &nbsp; Cider</p>
                    </div>
                </div>
            </div>
            <div class="card goblet">
                <h5 class="card-header">고블렛 &nbsp; Goblet</h5>
                <div class="card-body">
                    <img class="card-img-top" src="../img/glasses/goblet.png" alt="Card image cap">
                    <div class="card-text">
                        <p style="color: #D1A55D;">* 챌리스(Chalice)라고도 불림</p>
                        <p>벨기에 맥주 &nbsp; Belgian Beers</p>
                        <p>ex. Stella Artois</p>
                    </div>
                </div>
            </div>
            <div class="card yard">
                <h5 class="card-header">야드 &nbsp; Yard</h5>
                <div class="card-body">
                    <img class="card-img-top" src="../img/glasses/yard.png" alt="Card image cap">
                    <div class="card-text">
                        <p>에일 &nbsp; Ale</p>
                        <p>&nbsp;</p>
                        <p>&nbsp;</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="row2">
            <div class="card weizen">
                <h5 class="card-header">바이젠 &nbsp; Weizen</h5>
                <div class="card-body">
                    <img class="card-img-top" src="../img/glasses/weizen.png" alt="Card image cap">
                    <div class="card-text">
                        <p>바이젠 &nbsp; Weizen</p>
                        <p>&nbsp;</p>
                        <p>&nbsp;</p>
                    </div>
                </div>
            </div>
            <div class="card stein">
                <h5 class="card-header">슈타인 &nbsp; Stein</h5>
                <div class="card-body">
                    <img class="card-img-top" src="../img/glasses/stein.png" alt="Card image cap">
                    <div class="card-text">
                        <p style="color: #D1A55D;">* 19세기에 위생을 위해 <br> 곤충 유입 등을 방지하기 위해 <br> 만들어진 잔 </p>
                        <!-- <p>&nbsp;</p> -->
                    </div>
                </div>
            </div>
            <div class="card snifter">
                <h5 class="card-header">스니프터 &nbsp; Snifter</h5>
                <div class="card-body">
                    <img class="card-img-top" src="../img/glasses/snifter.png" alt="Card image cap">
                    <div class="card-text">
                        <p>아이스복 &nbsp; Eisbock</p>
                        <p>스타우트 &nbsp; Stout</p>
                        <p>&nbsp;</p>
                    </div>
                </div>
            </div>
            <div class="card stange">
                <h5 class="card-header">슈탕에 &nbsp; Stange</h5>
                <div class="card-body">
                    <img class="card-img-top" src="../img/glasses/stange.png" alt="Card image cap">
                    <div class="card-text">
                        <p>쾰쉬 &nbsp; Kolsch</p>
                        <p>&nbsp;</p>
                        <p>&nbsp;</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="row3">
            <div class="card mug">
                <h5 class="card-header">머그 &nbsp; Mug</h5>
                <div class="card-body">
                    <img class="card-img-top" src="../img/glasses/mug.png" alt="Card image cap">
                    <div class="card-text">
                        <p style="color: #D1A55D;">* 옥토버페스트에 사용되는 잔</p>
                        <p>독일 라거 &nbsp; German Lagers</p>
                        <p>메르첸 &nbsp; Märzen</p>
                    </div>
                </div>
            </div>
            <div class="card thistle">
                <h5 class="card-header">디슬 &nbsp; Thistle</h5>
                <div class="card-body">
                    <img class="card-img-top" src="../img/glasses/thistle.png" alt="Card image cap">
                    <div class="card-text">
                        <p>스카치에일 &nbsp; Scotch Ale</p>
                        <p>다크에일 &nbsp; Dark Ale</p>
                        <p>&nbsp;</p>
                    </div>
                </div>
            </div>
            <div class="card nonic">
                <h5 class="card-header">노닉파인트 &nbsp; Nonic Pint</h5>
                <div class="card-body">
                    <img class="card-img-top" src="../img/glasses/nonic.png" alt="Card image cap">
                    <div class="card-text">
                        <p>영국 맥주 &nbsp; British Beers</p>
                        <p>&nbsp;</p>
                        <p>&nbsp;</p>
                    </div>
                </div>
            </div>
            <div class="card teku">
                <h5 class="card-header">테쿠 &nbsp; TeKu</h5>
                <div class="card-body">
                    <img class="card-img-top" src="../img/glasses/teku.png" alt="Card image cap">
                    <div class="card-text">
                        <p>인디안 페일에일 &nbsp; IPA</p>
                        <p>페일에일 &nbsp; Pail Ale</p>
                        <p>벨지안에일 &nbsp; Belgian Ale</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="icon-attribution">
            <div>Icons made by <a href="https://www.flaticon.com/authors/flat-icons" title="Flat Icons">Flat Icons</a> from <a href="https://www.flaticon.com/" title="Flaticon">www.flaticon.com</a></div>
            <div>Icons made by <a href="https://www.flaticon.com/authors/freepik" title="Freepik">Freepik</a> from <a href="https://www.flaticon.com/" title="Flaticon">www.flaticon.com</a></div>
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