<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Review</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"> 
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans:400,400i,700,700i&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Noto+Serif:400,400i,700,700i&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Abril+Fatface&display=swap" rel="stylesheet">
    <link rel="stylesheet" href='<c:url value="/resources/css/open-iconic-bootstrap.min.css"/>' type="text/css">
    <link rel="stylesheet" href='<c:url value="/resources/css/animate.css"/>' type="text/css">
    <link rel="stylesheet" href='<c:url value="/resources/css/owl.carousel.min.css"/>' type="text/css">
    <link rel="stylesheet" href='<c:url value="/resources/css/owl.theme.default.min.css"/>' type="text/css">
    <link rel="stylesheet" href='<c:url value="/resources/css/magnific-popup.css"/>' type="text/css">
    <link rel="stylesheet" href='<c:url value="/resources/css/aos.css"/>' type="text/css">
    <link rel="stylesheet" href='<c:url value="/resources/css/ionicons.min.css"/>' type="text/css">
    <link rel="stylesheet" href='<c:url value="/resources/css/bootstrap-datepicker.css"/>' type="text/css">
    <link rel="stylesheet" href='<c:url value="/resources/css/jquery.timepicker.css"/>' type="text/css">
    <link rel="stylesheet" href='<c:url value="/resources/css/flaticon.css"/>' type="text/css">
    <link rel="stylesheet" href='<c:url value="/resources/css/icomoon.css"/>' type="text/css">
    <link rel="stylesheet" href='<c:url value="/resources/css/style.css"/>' type="text/css">
    <link rel="stylesheet" href='<c:url value="/resources/css/style_etranger.css"/>' type="text/css">
  </head>
  <body>

  	<nav id="navbar-2" class="navbar-2">
		  <ul class="nav-menu">
		    <li>
		      <a data-scroll="home" href="index.html#home" class="dot">
		        <span>Home</span>
		      </a>
		    </li>
		    <li>
		      <a data-scroll="work" href="index.html#work" class="dot active">
		        <span>Gallery</span>
		      </a>
		    </li>
		    <li>
		      <a data-scroll="testimonial" href="index.html#testimonial" class="dot">
		        <span>Review</span>
		      </a>
		    </li>
		    <li>
		      <a href="index.html#contact" class="dot">
		        <span>Contact</span>
		      </a>
		    </li>
		  </ul>
		</nav>
		<!-- End Nav Section -->

		<!-- Start Home Section -->
		<section id="home" class="hero-wrap js-fullheight2" style="background-image: url('<c:url value="/resources/images/model-5.jpg"/>');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight2 align-items-center justify-content-center" >
          <div class="col-lg-7 ftco-animate d-flex align-items-center">
          	<div class="text text-center">
          		<h1 class="logo"><a href="index.html"><span class="flaticon-camera-shutter"></span>Review<small></small></a></h1>
	            <h1 class="bread">Work Single</h1>
	            <p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home</a></span> <span>About us</span></p>
            </div>
          </div>
        </div>
      </div>
    </section>
		<!-- End Home Section -->

		<section class="ftco-section work-single ftco-no-pt ftco-no-pb">
			<div class="container">
				<div class="row">
					<div class="col-md-8 ftco-animate" style="border: 1px solid #9da1a5;">
			<div id="article-info">
			<h2>제목</h2>
			<div class="writer"><strong>memberEmail</strong> 님</div>
			</div> <!-- article-info끝 -->
			<div id="article-content-wrapper">
			<div class="content-header">
			<div id="article-time">
			시간
			</div>
<!-- 			<div id="article-readcnt">조회수 : n회</div> -->
<!-- 			<div id="article-commentcnt">댓글 : n개</div> -->
			</div><!-- content-header끝 -->
			
			<div class="content-stararea">
			<div id="stars"> 
			<!-- 별점 -->
			</div>
			</div><!-- content-star끝 -->
			
			<div class="content-view">
<%-- 			<p><img src="reviewUpload/<%=article.getReview_image()%>" style="max-width: 100%; height: auto;"></p> --%>
			<p>내용</p>
			<!--레이아웃 위한 pre 삽입  -->
			<pre>
			
			
			
			
			
			</pre>
			</div>
			<!-- content-view끝 -->
			<div class="content-footer">
			
					<div id="modi-del">
					<a href="#" class="btncontrol btncontrol-sm btn-default"><i class="fa fa-pencil-alt"></i>수정</a>
					<a id="btn_ReviewDelete" href="#layer2ReviewDelete" class="btncontrol btnforshare-rv btn-default"><i class="fa fa-trash"></i>삭제</a>
   					</div>
   					
					<a href="#" class="btncontrol btnforshare-rv btn-default"><i class="fa fa-list"></i>목록</a>
			</div>
			</div><!-- article-content-wrapper끝  -->
			
            <!--     	본문 내용 들어가는 곳  끝-->
            
			<!-- 댓글시작 -->
            <div class="pt-5 mt-5">
            
<%--               <jsp:include page="commentlist.jsp"/> --%>
            </div> <!-- 댓글 끝 -->

          </div> <!-- .col-md-8 -->
					
				</div>
			</div>
		</section>

		<!-- Start Footer Section -->
		<footer class="ftco-footer py-5">
		  <div class="container text-center">
		    <div class="row">
          <div class="col-md-12 text-center">

            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>

					  <ul class="ftco-footer-social p-0">
              <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
              <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
              <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
            </ul>
          </div>
        </div>
		  </div>
		</footer>
		<!-- End Footer Section -->
   

    <!-- loader -->
    <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>

    <script src='<c:url value="/resources/js/jquery.min.js"/>' type="text/javascript"></script>
    <script src='<c:url value="/resources/js/jquery-migrate-3.0.1.min.js"/>' type="text/javascript"></script>
    <script src='<c:url value="/resources/js/popper.min.js"/>' type="text/javascript"></script>
    <script src='<c:url value="/resources/js/bootstrap.min.js"/>' type="text/javascript"></script>
    <script src='<c:url value="/resources/js/jquery.easing.1.3.js"/>' type="text/javascript"></script>
    <script src='<c:url value="/resources/js/jquery.waypoints.min.js"/>' type="text/javascript"></script>
    <script src='<c:url value="/resources/js/jquery.stellar.min.js"/>' type="text/javascript"></script>
    <script src='<c:url value="/resources/js/owl.carousel.min.js"/>' type="text/javascript"></script>
    <script src='<c:url value="/resources/js/jquery.magnific-popup.min.js"/>' type="text/javascript"></script>
    <script src='<c:url value="/resources/js/aos.js"/>' type="text/javascript"></script>
    <script src='<c:url value="/resources/js/jquery.animateNumber.min.js"/>' type="text/javascript"></script>
    <script src='<c:url value="/resources/js/scrollax.min.js"/>' type="text/javascript"></script>
    <script src='<c:url value="/resources/js/google-map.js"/>' type="text/javascript"></script>
    <script src='<c:url value="/resources/js/main.js"/>' type="text/javascript"></script>
  </body>
</html>