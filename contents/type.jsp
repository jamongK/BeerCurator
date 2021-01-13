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
<link rel="stylesheet" href="../CSS/type.css" type="text/css">
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
		<h1>맥주 타입</h1>
        <p class="page-details">맥주 타입명을 클릭해 보세요</p>
		
        <div class="row1">
            <div class="card">
                <h5 class="card-header"><a href="typeView.jsp?typeID=1">필스너 &nbsp; Pilsner</a></h5>
                <div class="card-body">
                    <img class="card-img-top" src="../img/types/pilsner.png" alt="Card image cap">
                    <hr>
                    <p class="card-text">독일식 라거의 일종</p>
                </div>
            </div>
            <div class="card">
                <h5 class="card-header"><a href="typeView.jsp?typeID=2">라거 &nbsp; Lager</a></h5>
                <div class="card-body">
                    <img class="card-img-top" src="../img/types/lager.png" alt="Card image cap">
                    <hr>
                    <p class="card-text">투명한 황금빛과 강한 탄산감</p>
                </div>
            </div>
            <div class="card">
                <h5 class="card-header" style="font-size: 11pt; padding: 14px 8px;"><a href="typeView.jsp?typeID=3">아메리칸 라거 &nbsp; American Lager</a></h5>
                <div class="card-body">
                    <img class="card-img-top" src="../img/types/american-lager.png" alt="Card image cap">
                    <hr>
                    <p class="card-text">세계 맥주시장의 70% 차지</p>
                </div>
            </div>
            <div class="card">
                <h5 class="card-header"><a href="typeView.jsp?typeID=4">헬레스 &nbsp; Helles</a></h5>
                <div class="card-body">
                    <img class="card-img-top" src="../img/types/helles.png" alt="Card image cap">
                    <hr>
                    <p class="card-text">독일식 페일 라거</p>
                </div>
            </div>
        </div>
        <div class="row2">
            <div class="card">
                <h5 class="card-header"><a href="typeView.jsp?typeID=5">메르첸 &nbsp; Märzen</a></h5>
                <div class="card-body">
                    <img class="card-img-top" src="../img/types/marzen.png" alt="Card image cap">
                    <hr>
                    <p class="card-text">옥토버페스트에서 제공되는 맥주</p>
                </div>
            </div>
            <div class="card">
                <h5 class="card-header"><a href="typeView.jsp?typeID=6">쾰쉬 &nbsp; Kölsch</a></h5>
                <div class="card-body">
                    <img class="card-img-top" src="../img/types/kolsch.png" alt="Card image cap">
                    <hr>
                    <p class="card-text">독일 쾰른에서 양조되는 맥주</p>
                </div>
            </div>
            <div class="card">
                <h5 class="card-header"><a href="typeView.jsp?typeID=7">켈러비어 &nbsp; Kellerbier</a></h5>
                <div class="card-body">
                    <img class="card-img-top" src="../img/types/kellerbier.png" alt="Card image cap">
                    <hr>
                    <p class="card-text">여과하지 않은 라거 맥주</p>
                </div>
            </div>
            <div class="card">
                <h5 class="card-header"><a href="typeView.jsp?typeID=8">바이젠 &nbsp; Weizenbier</a></h5>
                <div class="card-body">
                    <img class="card-img-top" src="../img/types/weiss.png" alt="Card image cap">
                    <hr>
                    <p class="card-text">밀 맥주 (= Wheat beer)</p>
                </div>
            </div>
        </div>
        <div class="row3">
            <div class="card">
                <h5 class="card-header"><a href="typeView.jsp?typeID=9">포터 &nbsp; Porter</a></h5>
                <div class="card-body">
                    <img class="card-img-top" src="../img/types/porter.png" alt="Card image cap">
                    <hr>
                    <p class="card-text">영국 흑맥주의 대표</p>
                </div>
            </div>
            <div class="card">
                <h5 class="card-header"><a href="typeView.jsp?typeID=10">스타우트 &nbsp; Stout</a></h5>
                <div class="card-body">
                    <img class="card-img-top" src="../img/types/stout.png" alt="Card image cap">
                    <hr>
                    <p class="card-text">아일랜드 흑맥주의 대표</p>
                </div>
            </div>
            <div class="card">
                <h5 class="card-header"><a href="typeView.jsp?typeID=11">라우흐비어 &nbsp; Rauchbier</a></h5>
                <div class="card-body">
                    <img class="card-img-top" src="../img/types/rauchbier.png" alt="Card image cap">
                    <hr>
                    <p class="card-text">훈제 향이 나는 독일 흑맥주</p>
                </div>
            </div>
            <div class="card">
                <h5 class="card-header"><a href="typeView.jsp?typeID=12">복 &nbsp; Bock</a></h5>
                <div class="card-body">
                    <img class="card-img-top" src="../img/types/bock.png" alt="Card image cap">
                    <hr>
                    <p class="card-text">강한 맛, 높은 도수를 가진 흑맥주</p>
                </div>
            </div>
        </div>
        <div class="row4">
            <div class="card">
                <h5 class="card-header"><a href="typeView.jsp?typeID=13">페일 에일 &nbsp; Pale Ale</a></h5>
                <div class="card-body">
                    <img class="card-img-top" src="../img/types/pale-ale.png" alt="Card image cap">
                    <hr>
                    <p class="card-text">전형적인 에일 맥주 형태</p>
                </div>
            </div>
            <div class="card">
                <h5 class="card-header"><a href="typeView.jsp?typeID=14">인디안페일에일 &nbsp; IPA</a></h5>
                <div class="card-body">
                    <img class="card-img-top" src="../img/types/IPA.png" alt="Card image cap">
                    <hr>
                    <p class="card-text">홉의 풍미가 더 강한 페일에일</p>
                </div>
            </div>
            <div class="card">
                <h5 class="card-header"><a href="typeView.jsp?typeID=15">블론드에일 &nbsp; Blonde Ale</a></h5>
                <div class="card-body">
                    <img class="card-img-top" src="../img/types/belgian-ale.png" alt="Card image cap">
                    <hr>
                    <p class="card-text">벨기에 대표 에일 맥주</p>
                </div>
            </div>
            <div class="card">
                <h5 class="card-header" style="font-size: 10pt; padding: 15px 2px;"><a href="typeView.jsp?typeID=16">벨기에식 밀맥주 Belgian Wheat Beer</a></h5>
                <div class="card-body">
                    <img class="card-img-top" src="../img/types/belgian-wheat.png" alt="Card image cap">
                    <hr>
                    <p class="card-text">바이젠과 다른 벨기에식 밀맥주</p>
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