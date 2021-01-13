<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="../CSS/main.css" type="text/css">
<link rel="stylesheet" href="../CSS/intro.css" type="text/css">
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
        <h1>맥주 소개</h1>

        <div class="beer-wiki">
            <img src="../img/bWikiImg.jpg" width="280" alt="beer bottle and beer with glass">
            <h3>맥주</h3>
            <p>
                 맥주는 곡식을 이용한 발효주로는 가장 오래된 술로 알려진 대중적 알코올 음료 중 하나이다. <br>
                 보리를 가공한 맥아(malt)를 주재료로 발효시키고 여기에 향신료인 홉(hop)을 첨가하여 맛을 낸 술이다. <br>
                 2013년 한국 주세법 기준으로는 맥주는 "엿기름(밀엿기름 포함), 홉(홉 성분 추출물 포함) 및 <br>
                 쌀, 보리, 옥수수, 수수, 감자, 녹말, 당분, 캐러멜 중 하나 또는 그 이상의 것과 물을 원료로 하여 <br>
                 발효시켜 제성하거나 여과하여 제성한 것"으로 정의하고 있다. <br>
                 맥주를 뜻하는 Beer의 어원은 '마시다'는 뜻을 가진 라틴어 비베레(bibere)와 <br>
                 '곡물'을 뜻하는 게르만어 베오레(bior)에서 나왔다는 두 가지 설이 있다.
            </p>
        </div>
        
        <div class="beer-history">
            <img src="../img/wheat.jpg" width="300" alt="barley">
            <h3>맥주 역사</h3>
            <p>
                맥주는 인류가 유목 생활에서 정착 생활로 전환해 농경 생활을 하면서부터 만들어진 음료이다. <br>
                기원전 4000년경 메소포타미아의 수메르인들에 의해 탄생했다는 것이 현재 정설로 받아들여지고 있다. <br>
                수메르인들은 곡물로 만든 빵을 분쇄한 후 맥아를 넣고 물을 부은 뒤 발효시키는 방법으로 맥주를 제조했다고 한다.<br>
                또한 기원전 3000년경부터는 이집트 지역에서도 맥주를 생산하기 시작했다.<br>
                이후 맥주는 그리스인과 로마인들에 의해 유럽으로 건너갔고, 중세 시대에는 수도원에서 맥주 양조를 담당했다. <br>
                수도사들이 금식 기간 동안 기분 좋은 맛을 내는 음료를 마시기 원했기 때문이었다. <br>
                8세기경 영국의 에일(ale)과 포터(porter)가 만들어졌고, 10세기 경부터는 맥주에 쌉쌀한 맛을 내는 홉을 첨가했다.<br>
                맥주는 19세기 산업혁명 시기에 비약적 발전을 했다. 영국의 제임스 와트가 만든 증기기관은<br>
                물의 이송과 맥아의 분쇄, 맥즙의 교반 등에 동력을 사용할 수 있게 하며 맥주의 대량 생산을 가능하게 했다. <br>
                또한 독일의 카를 폰 린데(Carl von Linde)는 냉동기를 발명해 겨울에만 만들 수 있었던 "하면발효" 맥주를<br>
                계절에 관계없이 양조할 수 있도록 했다. <br>
                프랑스의 루이 파스퇴르는 술이 효모의 작용에 의해 생성된다는 사실과 열처리 살균법을 발명했고, <br>
                덴마크의 에밀 한센은 파스퇴르의 이론을 응용해 효모의 순수배양법을 개발하면서 맥주의 품질을 높였다.<br>
                우리나라의 처음 맥주가 들어온 것은 1883년이며 맥주를 우아(벗우, 아이아)로 표기하였는데<br>
                비어(beer)의 영어 발음을 한자로 표기한 것으로 추측된다.<br>
            </p>
        </div>

        <div class="b-process">
            <h3>맥주 제조 과정</h3>
            <p>
                <ol type="1">
                    <li>보리를 물에 담궈 싹 틔움 (발아)</li>
                    <li>싹이 난 맥아를 볶는다.</li>
                    <li>볶은 맥아를 분쇄한다.</li>
                    <li>분쇄한 맥아를 효소가 따뜻한 물에 담그면 효소로 인해 맥아로부터 당이 추출되어 맥즙이 된다.</li>
                    <li>맥아 가루 찌꺼기를 여과한 맥즙을 끓이면서 홉을 넣는다</li>
                    <li>홉 찌꺼기와 기타 침전물 등을 걷어낸다.</li>
                    <li>고온에서 생존할 수 없는 효모가 잘 활동할 수 있는 온도로 식히기 위해 맥즙을 급속 냉각시킨다.</li>
                    <li>1차 발효 : 효모를 투입해 발효시킨다. 이 과정을 통해 알코올, 이산화탄소(맥즙 탄산화시킴)가 생겨난다.</li>
                    <li>2차 발효 : <b>상면발효맥주(Ale)</b>-16~21℃에서 3~6일 정도 발효 / <b>하면발효맥주(Lager)</b>-4~10℃에서 6~10일 정도 발효.</li>
                    <li>숙성(<b>상면발효맥주(Ale)</b>-2주 숙성 / <b>하면발효맥주(Lager)</b>-낮은 온도에서 30일 이상 숙성) 후 여과</li>
                </ol>
            </p>
        </div>
        <div class="beerTypeCpn">
            <div class="ale_content">
                <div class="aleOval">
                    <img src="../img/상면발효맥주.png" alt="상면발효맥주, Ale" width="150">
                </div>
                <div class="aleArrow">
                    <img src="../img/arrow_gray.png" alt="arrow_right" width="20">
                </div>
                <div class="aleH3">
                    <h3>에일 &nbsp; &nbsp; IPA &nbsp; &nbsp; 포터 &nbsp; &nbsp; 스타우트 &nbsp; &nbsp; 바이젠</h3>
                </div>
            </div>
            <div class="lager_content">
                <div class="lagOval">
                    <img src="../img/하면발효맥주.png" alt="하면발효맥주, Lager" width="150">
                </div>
                <div class="lagArrow">
                    <img src="../img/arrow_gray.png" alt="arrow_right" width="20">
                </div>
                <div class="lagH3">
                    <h3>라거 &nbsp; &nbsp; 헬레스 &nbsp; &nbsp; 필스너 &nbsp; &nbsp; 복 &nbsp; &nbsp; 메르첸 &nbsp;</h3>
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