
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible"
	content="IE=edge text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>States</title>

<!-- Bootstrap Core CSS -->
<!-- <link href="/css/bootstrap.min.css" rel="stylesheet"> -->

<link rel="stylesheet" href="css/bootstrap.min.css">

<!-- Custom CSS -->
<link href="css/grayscale.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">

<link
	href="http://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic"
	rel="stylesheet" type="text/css">
<link href="http://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css">



<script type="text/javascript"
	src="http://maps.googleapis.com/maps/api/js?sensor=false">
	
	</script>


<script>
var map;
var geocoder;
function InitializeMap() {

    var latlng = new google.maps.LatLng(${state.latitude}, ${state.longitude});
    var myOptions =
    {
            zoom: 6,
            center: latlng,
            mapTypeId: google.maps.MapTypeId.ROADMAP,
            disableDefaultUI: true,
            zoomControl: true,
            fullscreenControl: true,
            streetViewControl: true,
            scaleControl: true, 
            
            styles: [{
                "featureType": "water",
                "elementType": "geometry",
                "stylers": [{
                    "color": "#000000"
                }, {
                    "lightness": 17
                }]
            }, {
                "featureType": "landscape",
                "elementType": "geometry",
                "stylers": [{
                    "color": "#000000"
                }, {
                    "lightness": 20
                }]
            }, {
                "featureType": "road.highway",
                "elementType": "geometry.fill",
                "stylers": [{
                    "color": "#000000"
                }, {
                    "lightness": 17
                }]
            }, {
                "featureType": "road.highway",
                "elementType": "geometry.stroke",
                "stylers": [{
                    "color": "#000000"
                }, {
                    "lightness": 10
                }, {
                    "weight": 0.2
                }]
            }, {
                "featureType": "road.arterial",
                "elementType": "geometry",
                "stylers": [{
                    "color": "#000000"
                }, {
                    "lightness": 18
                }]
            }, {
                "featureType": "road.local",
                "elementType": "geometry",
                "stylers": [{
                    "color": "#000000"
                }, {
                    "lightness": 16
                }]
            }, {
                "featureType": "poi",
                "elementType": "geometry",
                "stylers": [{
                    "color": "#000000"
                }, {
                    "lightness": 21
                }]
            }, {
                "elementType": "labels.text.stroke",
                "stylers": [{
                    "visibility": "off"
                }, {
                    "color": "#000000"
                }, {
                    "lightness": 16
                }]
            }, {
                "elementType": "labels.text.fill",
                "stylers": [{
                    "saturation": 36
                }, {
                    "color": "#000000"
                }, {
                    "lightness": 40
                }]
            }, {
                "elementType": "labels.icon",
                "stylers": [{
                    "visibility": "on"
                }]
            }, {
                "featureType": "transit",
                "elementType": "geometry",
                "stylers": [{
                    "color": "#000000"
                }, {
                    "lightness": 19
                }]
            }, {
                "featureType": "administrative",
                "elementType": "geometry.fill",
                "stylers": [{
                    "color": "#000000"
                }, {
                    "lightness": 20
                }]
            }, {
                "featureType": "administrative",
                "elementType": "geometry.stroke",
                "stylers": [{
                    "color": "#000000"
                }, {
                    "lightness": 17
                }, {
                    "weight": 1.2
                }]
            }]
         

           
            
        };
    map = new google.maps.Map(document.getElementById("map"), myOptions);
}

function FindLocaiton() {
    geocoder = new google.maps.Geocoder();
    InitializeMap();

    var address = document.getElementById("addressinput").value;
    geocoder.geocode({ 'address': address }, function (results, status) {
        if (status == google.maps.GeocoderStatus.OK) {
            map.setCenter(results[0].geometry.location);
            var marker = new google.maps.Marker({
                map: map,
                position: results[0].geometry.location
            });
        }
        else {
            alert("Geocode was not successful for the following reason: " + status);
        }
 
    });    
}

function Button1_onclick() {
    FindLocaiton();
    
}

window.onload = InitializeMap;



</script>





</head>

<body>


	<!-- Navigation -->
	<nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-main-collapse">
					<i class="fa fa-bars"></i>
				</button>
				<a class="navbar-brand page-scroll" href="index.jsp"> <i
					class="fa fa-play-circle"></i> <span class="light">Home</span>
				</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div
				class="collapse navbar-collapse navbar-right navbar-main-collapse">
				<ul class="nav navbar-nav">
					<!-- Hidden li included to remove active class from about link when scrolled up past about section -->
					<li class="hidden"><a href="#page-top"></a></li>
					<li><a class="page-scroll" href="#about"></a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container -->
	</nav>
	<div class="intro">
		<div class="intro-body">
			<div class="container">

				<div class="jumbotron smargtop" id="main-div">

					<!-- start title and picture -->


					<div class="row">
						<div class="col-xs-12">

							<div id="mainTitle">
								<h2>States</h2>



							</div>


						</div>

					</div>



					<div class="row">
						<div class="col-xs-12">

							<div class="row">
								<div class="col-xs-12 col-sm-6 col-md-6 text-center stateInfo">
									<div class="panel panel-default nobrdr">
										<div class="panel-body ">
											<c:choose>
												<c:when test="${! empty state}">

													<div class="col-xs-12 infoLine">
														<b>Abreviation: </b>${state.abbreviation}
													</div>
													<div class="col-xs-12 infoLine">
														<b>State:</b>${state.name}
													</div>
													<div class="col-xs-12 infoLine">
														<b>Capital: </b>${state.capital}
													</div>
													<div class="col-xs-12 infoLine">
														<b>Population: </b>${state.population}
													</div>
										</div>

									</div>




								</div>

								<div class="col-xs-12 col-sm-6 col-md-6 text-center">

									<img id="flag" class=" img-responsive img-rounded"
										src="${state.imgpath}" alt="Flag Image">
								</div>
							</div>


							</c:when>
							<c:otherwise>
								<p>No state found</p>
							</c:otherwise>
							</c:choose>


						</div>
					</div>
		

					<br>
					<div class="row ">
						<div class="col-xs-12">
							<div class="smMargAll" id="arrowButtons">
								<form action="GetStateData.do" method="GET">
									<button type="submit" name="previous" 										class="btn btn-default btn-lg brdrless col-xs-6">
										<span class="glyphicon glyphicon-triangle-left"
											aria-hidden="true"></span>
									</button>

									<button type="submit" name="next" 
										class="btn btn-default btn-lg col-xs-6">
										<span class="glyphicon glyphicon-triangle-right"
											aria-hidden="true"></span>
									</button>
								</form>

							</div>

						</div>
					</div>



					<div class="row">
						<div class="col-xs-12">

							<div id="map"></div>



						</div>

						<br>


					</div>


				</div>


			</div>




		</div>




		<!-- jQuery -->
		<script src="js/jquery.js"></script>

		<!-- Bootstrap Core JavaScript -->
		<script src="js/bootstrap.min.js"></script>

		<!-- Plugin JavaScript -->
		<script src="js/jquery.easing.min.js"></script>

		<!-- Custom Theme JavaScript -->
</body>

</html>







