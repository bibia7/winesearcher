<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Wine Searcher</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link
	href="https://fonts.googleapis.com/css?family=Noto+Sans:400,400i,700,700i&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Noto+Serif:400,400i,700,700i&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Abril+Fatface&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href='<c:url value="/resources/css/open-iconic-bootstrap.min.css"/>'
	type="text/css">
<link rel="stylesheet"
	href='<c:url value="/resources/css/animate.css"/>' type="text/css">
<link rel="stylesheet"
	href='<c:url value="/resources/css/owl.carousel.min.css"/>'
	type="text/css">
<link rel="stylesheet"
	href='<c:url value="/resources/css/owl.theme.default.min.css"/>'
	type="text/css">
<link rel="stylesheet"
	href='<c:url value="/resources/css/magnific-popup.css"/>'
	type="text/css">
<link rel="stylesheet" href='<c:url value="/resources/css/aos.css"/>'
	type="text/css">
<link rel="stylesheet"
	href='<c:url value="/resources/css/ionicons.min.css"/>' type="text/css">
<link rel="stylesheet"
	href='<c:url value="/resources/css/bootstrap-datepicker.css"/>'
	type="text/css">
<link rel="stylesheet"
	href='<c:url value="/resources/css/jquery.timepicker.css"/>'
	type="text/css">
<link rel="stylesheet"
	href='<c:url value="/resources/css/flaticon.css"/>' type="text/css">
<link rel="stylesheet"
	href='<c:url value="/resources/css/icomoon.css"/>' type="text/css">
<link rel="stylesheet" href='<c:url value="/resources/css/style.css"/>'
	type="text/css">
</head>
<body>

	<!-- Start Home Section -->
	<section id="home" class="hero-wrap js-fullheight"
		style="background-image:url('<c:url value="/resources/images/bg-1.jpg"/>');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text js-fullheight align-items-center justify-content-center">
				<div class="col-lg-7 ftco-animate d-flex align-items-center">
					<div class="text text-center">
						<h1 class="logo">
							<a href="index.html"><span class="flaticon-camera-shutter"></span>WINESEARCHER<small>Team
									Etranger</small></a>
						</h1>
						<h1 class="mb-4">
							Login-Join
						</h1>
						<p class="mb-4">You don't have to take a picture, just show
							your wines using a camera app. voila! You can easily find the
							information about wine.</p>
						<p class="mt-5">
							<a href="#" class="btn-custom">Contact us <span
								class="ion-ios-arrow-round-forward"></span></a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End Home Section -->

	<!-- Start login Section -->
	<section class="ftco-section contact-section" id="loginJoin">
		<c:choose>
			<c:when test="${email != null}">
				<h3 class="text-center mb-4">${email}님환영합니다!</h3>
				<h4 class="text-center mb-4">
					<a href='<c:url value="/logout"/>'>로그아웃</a>
				</h4>
			</c:when>

			<c:otherwise>
				<div class="container">
					<div class="row block-9">
						<div class="col-md-6 ftco-animate">
							<form action='<c:url value="/login"/>'
								class="contact-form p-4 p-md-5 py-md-5" method="post">
								<div class="form-group">
									<input type="text" name="email" class="form-control"
										placeholder="Your Email">
								</div>
								<div class="form-group">
									<input type="password" name="password" class="form-control"
										placeholder="Your Password">
								</div>
								<div class="form-group">
									<input type="submit" value="login"
										class="btn btn-primary py-3 px-5">
								</div>

								<div class="form-group">
									<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
									<a id="custom-login-btn" href="javascript:loginWithKakao()">
										<img
										src="//mud-kage.kakao.com/14/dn/btqbjxsO6vP/KPiGpdnsubSq3a0PHEGUK1/o.jpg"
										width="300" />
									</a>
									<script type='text/javascript'>
										//<![CDATA[
										// 사용할 앱의 JavaScript 키를 설정해 주세요.
										Kakao
												.init('743a81b9285981e56b10a62ade2d2fff');
										function loginWithKakao() {
											// 로그인 창을 띄웁니다.
											Kakao.Auth
													.login({
														success : function(
																authObj) {
															alert(JSON
																	.stringify(authObj));
														},
														fail : function(err) {
															alert(JSON
																	.stringify(err));
														}
													});
										};
										//]]>
									</script>
								</div>

								<div class="form-group">
									<script type="text/javascript"
										src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js"
										charset="utf-8"></script>
									<!-- 네이버아이디로로그인 버튼 노출 영역 -->
									<div id="naverIdLogin"></div>
									<!-- //네이버아이디로로그인 버튼 노출 영역 -->
									<!-- 네이버아디디로로그인 초기화 Script -->
									<script type="text/javascript">
										var naverLogin = new naver.LoginWithNaverId(
												{
													clientId : "6pcogsakeagRCsy4J3YN",
													callbackUrl : "http://localhost:8080/wine/cb",
													isPopup : true, /* 팝업을 통한 연동처리 여부 */
													loginButton : {
														color : "white",
														type : 3,
														height : 49
													}
												/* 로그인 버튼의 타입을 지정 */
												});

										/* 설정정보를 초기화하고 연동을 준비 */
										naverLogin.init();
									</script>
									<!-- // 네이버아이디로로그인 초기화 Script -->


								</div>

								<div class="form-group">
									<!-- 네이버아이디로로그인 버튼 노출 영역 -->
									<div id="naver_id_login"></div>
									<!-- //네이버아이디로로그인 버튼 노출 영역 -->
									<script type="text/javascript"
										src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js"
										charset="utf-8"></script>
									<script type="text/javascript"
										src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
									<script type="text/javascript">
										var naver_id_login = new naver_id_login(
												"6pcogsakeagRCsy4J3YN",
												"http://localhost:8080/wine/cb");
										var state = naver_id_login
												.getUniqState();
										naver_id_login
												.setButton("white", 2, 40);
										naver_id_login
												.setDomain("http://localhost:8080/wine/");
										naver_id_login.setState(state);
										naver_id_login.setPopup();
										naver_id_login.init_naver_id_login();
									</script>
								</div>
							</form>
						</div>


						<div class="col-md-6 d-flex align-items-stretch">
							<form action='<c:url value="/join"/>' id="join" name="fr"
								class="contact-form p-4 p-md-5 py-md-5" method="post">
								<h3 class="mb-4">didn't you sign-in yet? join us</h3>
								<div class="form-group">
									<input type="text" id="email" name="email"
										class="form-control email" placeholder="Your Email">
								</div>
								<div class="form-group">
									<input type="password" id="password" name="password"
										class="form-control password" placeholder="Your Password">
								</div>
								<div class="form-group">
									<input type="submit" value="join"
										class="btn btn-primary py-3 px-5">
								</div>

							</form>
						</div>

					</div>
				</div>
			</c:otherwise>
		</c:choose>


	</section>
	
<!-- End login Section -->

 <script src='<c:url value="/resources/js/jquery-3.4.1.js"/>'></script>
	<script type="text/javascript">
		$(document).ready(function(){
			$("#submit").on("click", function(){
				if($("#email").val()==""){
					alert("아이디를 입력해주세요.");
					$("#email").focus();
					return false;
				}
				if($("#password").val()==""){
					alert("비밀번호를 입력해주세요.");
					$("#password").focus();
					return false;
				}
			});
			
				
			
		})
	</script>



	<!-- Start Footer Section -->
	<footer class="ftco-footer py-5">
		<div class="container text-center">
			<div class="row">
				<div class="col-md-12 text-center">

					<p>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						Copyright &copy;
						<script>
							document.write(new Date().getFullYear());
						</script>
						All rights reserved | This template is made with <i
							class="icon-heart" aria-hidden="true"></i> by <a
							href="https://colorlib.com" target="_blank">Colorlib</a>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					</p>

					<ul class="ftco-footer-social p-0">
						<li class="ftco-animate"><a href="#"><span
								class="icon-twitter"></span></a></li>
						<li class="ftco-animate"><a href="#"><span
								class="icon-facebook"></span></a></li>
						<li class="ftco-animate"><a href="#"><span
								class="icon-instagram"></span></a></li>
					</ul>
				</div>
			</div>
		</div>
	</footer>
	<!-- End Footer Section -->


	<!-- loader -->
	<div id="ftco-loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px">
			<circle class="path-bg" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke="#eeeeee" />
			
			<circle class="path" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
	</div>


	<script src='<c:url value="/resources/js/jquery.min.js"/>'
		type="text/javascript"></script>
	<script
		src='<c:url value="/resources/js/jquery-migrate-3.0.1.min.js"/>'
		type="text/javascript"></script>
	<script src='<c:url value="/resources/js/popper.min.js"/>'
		type="text/javascript"></script>
	<script src='<c:url value="/resources/js/bootstrap.min.js"/>'
		type="text/javascript"></script>
	<script src='<c:url value="/resources/js/jquery.easing.1.3.js"/>'
		type="text/javascript"></script>
	<script src='<c:url value="/resources/js/jquery.waypoints.min.js"/>'
		type="text/javascript"></script>
	<script src='<c:url value="/resources/js/jquery.stellar.min.js"/>'
		type="text/javascript"></script>
	<script src='<c:url value="/resources/js/owl.carousel.min.js"/>'
		type="text/javascript"></script>
	<script
		src='<c:url value="/resources/js/jquery.magnific-popup.min.js"/>'
		type="text/javascript"></script>
	<script src='<c:url value="/resources/js/aos.js"/>'
		type="text/javascript"></script>
	<script
		src='<c:url value="/resources/js/jquery.animateNumber.min.js"/>'
		type="text/javascript"></script>
	<script src='<c:url value="/resources/js/scrollax.min.js"/>'
		type="text/javascript"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src='<c:url value="/resources/js/google-map.js"/>'
		type="text/javascript"></script>
	<script src='<c:url value="/resources/js/main.js"/>'
		type="text/javascript"></script>

</body>
</html>