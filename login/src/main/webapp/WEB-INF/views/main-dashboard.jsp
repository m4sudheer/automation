<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="utf-8">
<title>Dashboard</title>
<base target="_self">
<meta name="description"
	content="A Bootstrap 4 admin dashboard theme that will get you started. The sidebar toggles off-canvas on smaller screens. This example also include large stat blocks, modal and cards. The top navbar is controlled by a separate hamburger toggle button." />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="google" value="notranslate">
<link rel="shortcut icon" href="/images/cp_ico.png">


<!--stylesheets / link tags loaded here-->


<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" />
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet" />
<link href="js/mainboard.css" rel="stylesheet" id="bootstrap">


</head>

<body>
	<nav class="navbar navbar-fixed-top navbar-toggleable-sm navbar-inverse bg-primary mb-3">
		<button class="navbar-toggler navbar-toggler-right" type="button"
			data-toggle="collapse" data-target="#collapsingNavbar">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="flex-row d-flex">
			<a class="navbar-brand mb-1" href="#">Hi, ${username}</a>
			<button type="button" class="hidden-md-up navbar-toggler"
				data-toggle="offcanvas" title="Toggle responsive left sidebar">
				<span class="navbar-toggler-icon"></span>
			</button>
		</div>
		<div class="navbar-collapse collapse" id="collapsingNavbar">
			<ul class="navbar-nav">

				<li class="nav-item active"><a class="nav-link" href="#">Home
						<span class="sr-only">Home</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="#features">Features</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="#myAlert"
					data-toggle="collapse">About</a></li>

			</ul>


			<ul class="navbar-nav ml-auto">
				<li class="nav-item"><a class="nav-link" href=""
					data-target="#myModal" data-toggle="modal">Logout</a></li>
			</ul>


		</div>
	</nav>
	
	
	<div class="container-fluid" id="main">
		<div class="row row-offcanvas row-offcanvas-left">
			<div class="col-md-3 col-lg-2 sidebar-offcanvas" id="sidebar"
				role="navigation">
				<ul class="nav flex-column pl-1">
					<li class="nav-item"><a class="nav-link" href="/main-dashboard?COB=DSF">DSF</a></li>
					<li class="nav-item"><a class="nav-link" href="/main-dashboard?COB=Retail"
						data-toggle="collapse" data-target="#submenu1">RETAIL</a>
						<ul class="list-unstyled flex-column pl-3 collapse" id="submenu1"
							aria-expanded="false">
							<li class="nav-item"><a class="nav-link" href="/main-dashboard?COB=Retail">Application
									1</a></li>
							<li class="nav-item"><a class="nav-link" href="/main-dashboard?COB=Retail">Application
									2</a></li>
						</ul></li>
					<li class="nav-item"><a class="nav-link" href="/main-dashboard?COB=Manufacturing">MANUFACTURING</a></li>
					<li class="nav-item"><a class="nav-link" href="/main-dashboard?COB=TandS">T&S</a></li>
					<li class="nav-item"><a class="nav-link" href="">COB 5</a></li>
					<li class="nav-item"><a class="nav-link" href="">COB 6</a></li>
					<li class="nav-item"><a class="nav-link" href="">COB 7</a></li>
					<li class="nav-item"><a class="nav-link" href="">COB 8</a></li>
					<li class="nav-item"><a class="nav-link" href="">COB 9</a></li>
				</ul>
			</div>
			<!--/col-->

			<div class="col-md-9 col-lg-10 main">

				<!--toggle sidebar button
            <p class="hidden-md-up">
                <button type="button" class="btn btn-primary-outline btn-sm" data-toggle="offcanvas"><i class="fa fa-chevron-left"></i> Menu</button>
            </p>-->

				<h3 class="display-2 hidden-xs-down">Dashboard</h3>
				<p class="lead hidden-xs-down">(Shell Application Dashboard)</p>

				<div class="alert alert-warning fade collapse" role="alert"
					id="myAlert">
					<button type="button" class="close" data-dismiss="alert"
						aria-label="Close">
						<span aria-hidden="true"></span> <span class="sr-only">Close</span>
					</button>
					<strong>Shell Dashboard !</strong> This dashboard will display all the applications across the shell
				</div>

				<div class="row mb-3">

					<div class="col-xl-3 col-lg-6"
						onclick="window.location='/main-dashboard?COB=DSF'">
						<div class="card card-inverse card-success">
							<div class="card-block bg-success">
								<div class="rotate">
									<i class="fa fa-list fa-5x"></i>
								</div>
								<h6 class="text-uppercase">DSF</h6>
								<h1 class="display-1">134</h1>
							</div>
						</div>
					</div>

					<div class="col-xl-3 col-lg-6"
						onclick="window.location='/main-dashboard?COB=Retail'">
						<div class="card card-inverse card-danger">
							<div class="card-block bg-danger">
								<div class="rotate">
									<i class="fa fa-list fa-5x"></i>
								</div>
								<h6 class="text-uppercase">Retail</h6>
								<h1 class="display-1">87</h1>
							</div>
						</div>
					</div>

					<div class="col-xl-3 col-lg-6"
						onclick="window.location='/main-dashboard?COB=Manufacturing'">
						<div class="card card-inverse card-info">
							<div class="card-block bg-info">
								<div class="rotate">
									<i class="fa fa-list fa-5x"></i>
								</div>
								<h6 class="text-uppercase">Manufacturing</h6>
								<h1 class="display-1">125</h1>
							</div>
						</div>
					</div>

					<div class="col-xl-3 col-lg-6"
						onclick="window.location='/main-dashboard?COB=TandS'">
						<div class="card card-inverse card-warning">
							<div class="card-block bg-warning">
								<div class="rotate">
									<i class="fa fa-list fa-5x"></i>
								</div>
								<h6 class="text-uppercase">T&S</h6>
								<h1 class="display-1">36</h1>
							</div>
						</div>
					</div>

				</div>
				<!--/row-->

				<hr>

				<div class="row placeholders mb-3">
					<div class="col-6 col-sm-3 placeholder text-center">
						<img src="//placehold.it/200/dddddd/fff?text=1"
							class="center-block img-fluid rounded-circle"
							alt="Generic placeholder thumbnail">
						<h4>DSF</h4>
						<span class="text-muted">No. of issues identified</span>
					</div>
					<div class="col-6 col-sm-3 placeholder text-center">
						<img src="//placehold.it/200/e4e4e4/fff?text=2"
							class="center-block img-fluid rounded-circle"
							alt="Generic placeholder thumbnail">
						<h4>Retail</h4>
						<span class="text-muted">No. of issues identified</span>
					</div>
					<div class="col-6 col-sm-3 placeholder text-center">
						<img src="//placehold.it/200/d6d6d6/fff?text=3"
							class="center-block img-fluid rounded-circle"
							alt="Generic placeholder thumbnail">
						<h4>Manufacturing</h4>
						<span class="text-muted">No. of issues identified</span>
					</div>
					<div class="col-6 col-sm-3 placeholder text-center">
						<img src="//placehold.it/200/e0e0e0/fff?text=4"
							class="center-block img-fluid rounded-circle"
							alt="Generic placeholder thumbnail">
						<h4>T&S</h4>
						<span class="text-muted">No. of issues identified</span>
					</div>
				</div>

				<hr>
			</div>

		</div>
	</div>
	<!--/.container-->
	<footer class="container-fluid">
		<p class="text-right small">©2018-2019 Company</p>
	</footer>


	<!-- Modal -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="myModalLabel">Logout</h4>

				</div>
				<div class="modal-body">Are you sure you want to logout
					completely from Dashboard.</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary-outline"
						data-dismiss="modal" onclick="location.href='/login'">OK</button>
				</div>
			</div>
		</div>
	</div>



	<script>
		// sandbox disable popups
		if (window.self !== window.top && window.name != "view1") {
			window.alert = function() {
				/*disable alert*/
			};
			window.confirm = function() {
				/*disable confirm*/
			};
			window.prompt = function() {
				/*disable prompt*/
			};
			window.open = function() {
				/*disable open*/
			};
		}

		// prevent href=# click jump
		document.addEventListener("DOMContentLoaded", function() {
			var links = document.getElementsByTagName("A");
			for (var i = 0; i < links.length; i++) {
				if (links[i].href.indexOf("#") != -1) {
					links[i].addEventListener("click", function(e) {
						console.debug("prevent href=# click");
						if (this.hash) {
							if (this.hash == "#") {
								e.preventDefault();
								return false;
							} else {
								/*
								    var el = document.getElementById(this.hash.replace(/#/, ""));
								    if (el) {
								      el.scrollIntoView(true);
								    }
								 */
							}
						}
						return false;
					});
				}
			}
		}, false);
	</script>

	<!--scripts loaded here-->

	<script
		src="//ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
	<script
		src="//cdnjs.cloudflare.com/ajax/libs/tether/1.2.0/js/tether.min.js"></script>
	<script
		src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"></script>


	<script>
		$(document).ready(function() {
			$("[data-toggle=offcanvas]").click(function() {
				$(".row-offcanvas").toggleClass("active");
			});
		});
	</script>

</body>

</html>
