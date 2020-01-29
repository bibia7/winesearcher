<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Snapshot - Free Bootstrap 4 Template by Colorlib</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
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
		      <a data-scroll="about" href="index.html#about" class="dot">
		        <span>About</span>
		      </a>
		    </li>
		    <li>
		      <a data-scroll="services" href="index.html#services" class="dot">
		        <span>Services</span>
		      </a>
		    </li>
		    <li>
		      <a data-scroll="work" href="index.html#work" class="dot active">
		        <span>Gallery</span>
		      </a>
		    </li>
		    <li>
		      <a data-scroll="testimonial" href="index.html#testimonial" class="dot">
		        <span>Testimony</span>
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
		<section id="home" class="hero-wrap js-fullheight" style="background-image: url(<c:url value='/resources/images/bg-1.jpg'/>)" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center">
          <div class="col-lg-7 ftco-animate d-flex align-items-center">
          	<div class="text text-center">
          		<h1 class="logo"><a href="index.html"><span class="flaticon-camera-shutter"></span>Snapshot<small>Photographer / San Francisco</small></a></h1>
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
					<div class="col-md-6 d-flex align-items-stretch">
						<div class="img w-100" style="background-image: url(<c:url value="/resources/images/model-5.jpg"/>"></div>
					</div>
					<div class="col-md-6 py-md-5">
						<div class="text pl-md-5 py-5">
							<h2><a href="work-single.html">Beautiful Work</a></h2>
							<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
							<p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
							<blockquote class="blockquote mt-5">
		          	<p class="mb-2">"Far far away, behind the word mountains, far from the countries Vokalia and Consonantia.."</p>
		          	<span>&mdash; Lucy Lee</span>
		          </blockquote>
								
							<div class="work-info mb-4">
								<span>Project Name</span>
								<h3>Beautiful Girl</h3>
							</div>

							<div class="work-info mb-4">
								<span>My Role</span>
								<h3>Experimental</h3>
							</div>

							<div class="work-info mb-4">
								<span>Project Name</span>
								<h3><span class="mr-2">Agency</span> <span class="mr-2">Fashion</span> <span class="mr-2">Model</span> <span class="mr-2">Photo</span></h3>
							</div>

							<ul class="ftco-footer-social p-0">
	              <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
	              <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
	              <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
	            </ul>

						</div>
					</div>
				</div>
			</div>
		</section>

		<section>
		<div>Teachable Machine Image Model</div>
<button type="button" onclick="init()">Start</button>
<div id="webcam-container"></div>
<div id="label-container"></div>
<script src="https://cdn.jsdelivr.net/npm/@tensorflow/tfjs@1.3.1/dist/tf.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@teachablemachine/image@0.8/dist/teachablemachine-image.min.js"></script>
<script type="text/javascript">
    // More API functions here:
    // https://github.com/googlecreativelab/teachablemachine-community/tree/master/libraries/image

    // the link to your model provided by Teachable Machine export panel
    const URL = "./my_model/";

    let model, webcam, labelContainer, maxPredictions;

    // Load the image model and setup the webcam
    async function init() {
        const modelURL = URL + "model.json";
        const metadataURL = URL + "metadata.json";

        // load the model and metadata
        // Refer to tmImage.loadFromFiles() in the API to support files from a file picker
        // or files from your local hard drive
        // Note: the pose library adds "tmImage" object to your window (window.tmImage)
        model = await tmImage.load(modelURL, metadataURL);
        maxPredictions = model.getTotalClasses();

        // Convenience function to setup a webcam
        const flip = true; // whether to flip the webcam
        webcam = new tmImage.Webcam(200, 200, flip); // width, height, flip
        await webcam.setup(); // request access to the webcam
        await webcam.play();
        window.requestAnimationFrame(loop);

        // append elements to the DOM
        document.getElementById("webcam-container").appendChild(webcam.canvas);
        labelContainer = document.getElementById("label-container");
        for (let i = 0; i < maxPredictions; i++) { // and class labels
            labelContainer.appendChild(document.createElement("div"));
        }
    }

    async function loop() {
        webcam.update(); // update the webcam frame
        await predict();
        window.requestAnimationFrame(loop);
    }

    // run the webcam image through the image model
    async function predict() {
        // predict can take in an image, video or canvas html element
        const prediction = await model.predict(webcam.canvas);
        for (let i = 0; i < maxPredictions; i++) {
            const classPrediction =
                prediction[i].className + ": " + prediction[i].probability.toFixed(2);
            labelContainer.childNodes[i].innerHTML = classPrediction;
        }
    }
</script>
		
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
<!--     <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script> -->
<%--     <script src='<c:url value="/resources/js/google-map.js"/>' type="text/javascript"></script> --%>
    <script src='<c:url value="/resources/js/main.js"/>' type="text/javascript"></script>
  </body>
</html>