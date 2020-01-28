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


	<nav id="navbar" class="navbar">
		<ul class="nav-menu">
			<li><a data-scroll="home" href="#home" class="dot active"> <span>Home</span>
			</a></li>
			<li><a data-scroll="loginJoin" href="#loginJoin"
				class="dot active"> <span>login-Join</span>
			</a></li>
			<li><a data-scroll="about" href="#about" class="dot"> <span>About</span>
			</a></li>
			<li><a data-scroll="services" href="#services" class="dot">
					<span>Services</span>
			</a></li>
			<li><a data-scroll="work" href="#work" class="dot"> <span>Gallery</span>
			</a></li>
			<li><a data-scroll="testimonial" href="#testimonial" class="dot">
					<span>Testimony</span>
			</a></li>
			<li><a data-scroll="contact" href="#contact" class="dot"> <span>Contact</span>
			</a></li>
		</ul>
	</nav>
	<!-- End Nav Section -->

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
							We Can Find<br> What you need
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
		<div class="container">
			<div class="row block-9">
				<div class="col-md-6 ftco-animate">
					<form action="login" class="contact-form p-4 p-md-5 py-md-5">
						<div class="form-group">
							<input type="text" class="form-control" placeholder="Your Email">
						</div>
						<div class="form-group">
							<input type="password" class="form-control"
								placeholder="Your Password">
						</div>
						<div class="form-group">
							<input type="submit" value="LOG-IN"
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
								Kakao.init('743a81b9285981e56b10a62ade2d2fff');
								function loginWithKakao() {
									// 로그인 창을 띄웁니다.
									Kakao.Auth.login({
										success : function(authObj) {
											alert(JSON.stringify(authObj));
										},
										fail : function(err) {
											alert(JSON.stringify(err));
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
											callbackUrl : "http://localhost:8080/wine/login-cb",
											isPopup : false, /* 팝업을 통한 연동처리 여부 */
											loginButton : {
												color : "green",
												type : 3,
												height : 48
											}
										/* 로그인 버튼의 타입을 지정 */
										});

								/* 설정정보를 초기화하고 연동을 준비 */
								naverLogin.init();
							</script>
							<!-- // 네이버아이디로로그인 초기화 Script -->
						</div>
					</form>
				</div>

								<!-- Progress bar 1 -->
								<div class="progress mx-auto" data-value='90'>
									<span class="progress-left"> <span
										class="progress-bar border-primary"></span>
									</span> <span class="progress-right"> <span
										class="progress-bar border-primary"></span>
									</span>
									<div
										class="progress-value w-100 h-100 rounded-circle d-flex align-items-center justify-content-center">
										<div class="h5">
											90<sup class="small">%</sup>
										</div>
									</div>
								</div>
								<!-- END -->
							</div>
						</div>

						<div class="col-md-4 mb-md-0 mb-4 ftco-animate">
							<div class="">
								<h2 class="text-center mb-4">Development</h2>

								<!-- Progress bar 1 -->
								<div class="progress mx-auto" data-value='80'>
									<span class="progress-left"> <span
										class="progress-bar border-primary"></span>
									</span> <span class="progress-right"> <span
										class="progress-bar border-primary"></span>
									</span>
									<div
										class="progress-value w-100 h-100 rounded-circle d-flex align-items-center justify-content-center">
										<div class="h5">
											80<sup class="small">%</sup>
										</div>
									</div>
								</div>
								<!-- END -->
							</div>
						</div>

						<div class="col-md-4 mb-md-0 mb-4 ftco-animate">
							<div class="">
								<h2 class="text-center mb-4">Production</h2>

								<!-- Progress bar 1 -->
								<div class="progress mx-auto" data-value='75'>
									<span class="progress-left"> <span
										class="progress-bar border-primary"></span>
									</span> <span class="progress-right"> <span
										class="progress-bar border-primary"></span>
									</span>
									<div
										class="progress-value w-100 h-100 rounded-circle d-flex align-items-center justify-content-center">
										<div class="h5">
											75<sup class="small">%</sup>
										</div>
									</div>
								</div>
								<!-- END -->
							</div>
						</div>

						<div class="p-md-4 mt-4">
							<div class="col-md-8 ftco-animate">
								<p>Far far away, behind the word mountains, far from the
									countries Vokalia and Consonantia, there live the blind texts.
									Separated they live in Bookmarksgrove right at the coast.</p>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-5 d-flex align-items-stretch">
					<div class="img w-100"
						style="background-image:url('<c:url value="/resources/images/about-2.jpg"/>');">
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End Services Section -->

	<!-- Start Testimonials Section -->
	<section id="work" class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-4 heading-section text-center ftco-animate pb-5">
					<h2 class="mb-4">Selected Projects</h2>
					<p>A small river named Duden flows by their place and supplies
						it with the necessary regelialia. It is a paradisematic country.</p>
				</div>
			</div>
		</div>

		<!-- 와인 목록 -->
		<div class="container-fluid px-md-0">
			<div class="row no-gutters">
				<c:forEach var="wl" items="${wineList }">
					<div class="col-md-4 ftco-animate">
						<div class="model img d-flex align-items-end"
							style="background-image:url('<c:url value="/resources/images/${wl.wine_image }" />');">
							<a data-toggle="modal" href="#myModal"
								class="icon d-flex justify-content-center align-items-center">
								<span class="icon-expand"></span>
							</a>
							<div class="desc w-100 px-4">
								<div class="text w-100 mb-3">
									<span>${wl.wine_type }</span>
									<h2>
										<a href="work-single.html">${wl.wine_name }</a>
									</h2>
								</div>
							</div>
						</div>
					</div>

					<!-- Modal -->
					<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
						aria-labelledby="ModalLabel" aria-hidden="true">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title" id="ModalLabel" style="color: #9d8f8f">${wl.wine_name }</h5>
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>
								<div class="modal-body">${wl.wine_name }</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-primary"
										data-dismiss="modal">Close</button>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
		<!-- 와인 목록 끝 -->

	</section>
	<!-- End Project Section -->

	<section class="ftco-section testimony-section" id="testimonial">
		<div class="container">
			<div class="row justify-content-center mb-5 pb-3">
				<div class="col-md-4 heading-section ftco-animate">
					<span class="subheading">Testimony</span>
					<h2 class="mb-4">Our satisfied customer says</h2>
					<p>Far far away, behind the word mountains, far from the
						countries Vokalia and Consonantia, there live the blind texts.
						Separated they live in</p>
				</div>
			</div>
			<div class="row ftco-animate">
				<div class="col-md-12">
					<div class="carousel-testimony owl-carousel">
						<div class="item">
							<div class="testimony-wrap p-4 pb-5">
								<div class="user-img mb-4"
									style="background-image:url('<c:url value="/resources/images/person_1.jpg"/>');">
									<span
										class="quote d-flex align-items-center justify-content-center">
										<i class="icon-quote-left"></i>
									</span>
								</div>
								<div class="text">
									<p class="mb-5 pl-4 line">Far far away, behind the word
										mountains, far from the countries Vokalia and Consonantia,
										there live the blind texts.</p>
									<div class="pl-5">
										<p class="name">Garreth Smith</p>
										<span class="position">CEO Founder of Commercial
											Building</span>
									</div>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="testimony-wrap p-4 pb-5">
								<div class="user-img mb-4"
									style="background-image:url('<c:url value="/resources/images/person_2.jpg"/>');">
									<span
										class="quote d-flex align-items-center justify-content-center">
										<i class="icon-quote-left"></i>
									</span>
								</div>
								<div class="text">
									<p class="mb-5 pl-4 line">Far far away, behind the word
										mountains, far from the countries Vokalia and Consonantia,
										there live the blind texts.</p>
									<div class="pl-5">
										<p class="name">Garreth Smith</p>
										<span class="position">CEO Founder of Interior Design</span>
									</div>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="testimony-wrap p-4 pb-5">
								<div class="user-img mb-4"
									style="background-image:url('<c:url value="/resources/images/person_3.jpg"/>');">
									<span
										class="quote d-flex align-items-center justify-content-center">
										<i class="icon-quote-left"></i>
									</span>
								</div>
								<div class="text">
									<p class="mb-5 pl-4 line">Far far away, behind the word
										mountains, far from the countries Vokalia and Consonantia,
										there live the blind texts.</p>
									<div class="pl-5">
										<p class="name">Garreth Smith</p>
										<span class="position">Exterior Designer</span>
									</div>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="testimony-wrap p-4 pb-5">
								<div class="user-img mb-4"
									style="background-image:url('<c:url value="/resources/images/person_1.jpg"/>');">
									<span
										class="quote d-flex align-items-center justify-content-center">
										<i class="icon-quote-left"></i>
									</span>
								</div>
								<div class="text">
									<p class="mb-5 pl-4 line">Far far away, behind the word
										mountains, far from the countries Vokalia and Consonantia,
										there live the blind texts.</p>
									<div class="pl-5">
										<p class="name">Garreth Smith</p>
										<span class="position">Landscape Designer</span>
									</div>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="testimony-wrap p-4 pb-5">
								<div class="user-img mb-4"
									style="background-image:url('<c:url value="/resources/images/person_1.jpg"/>');">
									<span
										class="quote d-flex align-items-center justify-content-center">
										<i class="icon-quote-left"></i>
									</span>
								</div>
								<div class="text">
									<p class="mb-5 pl-4 line">Far far away, behind the word
										mountains, far from the countries Vokalia and Consonantia,
										there live the blind texts.</p>
									<div class="pl-5">
										<p class="name">Garreth Smith</p>
										<span class="position">System Analyst</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- Start Contact Section -->
	<section class="ftco-section contact-section" id="contact">
		<div class="container">
			<div class="row justify-content-center mb-5 pb-3">
				<div class="col-md-4 heading-section text-center ftco-animate">
					<h2 class="mb-4">Contact Us</h2>
					<p>A small river named Duden flows by their place and supplies
						it with the necessary regelialia. It is a paradisematic country.</p>
				</div>
			</div>

			<div class="row mb-5">
				<div class="col-md-3 d-flex ftco-animate">
					<div class="align-self-stretch box text-center p-4">
						<div class="icon d-flex align-items-center justify-content-center">
							<span class="icon-map-signs"></span>
						</div>
						<div>
							<h3 class="mb-4">Address</h3>
							<p>198 West 21th Street, Suite 721 New York NY 10016</p>
						</div>
					</div>
				</div>
				<div class="col-md-3 d-flex ftco-animate">
					<div class="align-self-stretch box text-center p-4">
						<div class="icon d-flex align-items-center justify-content-center">
							<span class="icon-phone2"></span>
						</div>
						<div>
							<h3 class="mb-4">Contact Number</h3>
							<p>
								<a href="tel://1234567920">+8110 9989 8564</a>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-3 d-flex ftco-animate">
					<div class="align-self-stretch box text-center p-4">
						<div class="icon d-flex align-items-center justify-content-center">
							<span class="icon-paper-plane"></span>
						</div>
						<div>
							<h3 class="mb-4">Email Address</h3>
							<p>
								<a href="mailto:info@yoursite.com">iamheb777@gmail.com</a>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-3 d-flex ftco-animate">
					<div class="align-self-stretch box text-center p-4">
						<div class="icon d-flex align-items-center justify-content-center">
							<span class="icon-globe"></span>
						</div>
						<div>
							<h3 class="mb-4">Website</h3>
							<p>
								<a href="#">github.com/bibia7/winesearcher</a>
							</p>
						</div>
					</div>
				</div>
			</div>

			<div class="row block-9">
				<div class="col-md-6 ftco-animate">
					<form action="#" class="contact-form p-4 p-md-5 py-md-5">
						<div class="form-group">
							<input type="text" class="form-control" placeholder="Your Name">
						</div>
						<div class="form-group">
							<input type="text" class="form-control" placeholder="Your Email">
						</div>
						<div class="form-group">
							<input type="text" class="form-control" placeholder="Subject">
						</div>
						<div class="form-group">
							<textarea name="" id="" cols="30" rows="7" class="form-control"
								placeholder="Message"></textarea>
						</div>
						<div class="form-group">
							<input type="submit" value="Send Message"
								class="btn btn-primary py-3 px-5">
						</div>
					</form>
				</div>

				<div class="col-md-6 d-flex align-items-stretch">
					<div id="map"></div>
				</div>
			</div>
		</div>
	</section>
	<!-- End Contact Section -->


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