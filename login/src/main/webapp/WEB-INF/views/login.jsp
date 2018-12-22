<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>System Health Check</title>
<link href="webjars/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script src="webjars/jquery/3.2.1/jquery.min.js"></script>
<script src="webjars/bootstrap/4.1.1/js/bootstrap.min.js"></script>

</head>
<body>
	<!-- <h2 class="text-center">System Health Check</h2> -->
	<div class="container pt-3">
		<div class="row justify-content-sm-center">
			<div class="col-sm-6 col-md-4">

				<div class="card border-info text-center">
					<div class="card-header">Sign in to continue</div>
					<div class="card-body">
						<img src="images/holmes-logo.png">
						<h4 class="text-center" style="color:#198375">Application Dashboard</h4>
						<form class="form-signin" method="post">
							<input type="text" name="username" class="form-control mb-2"
								placeholder="Username" required autofocus> <input
								type="password" name="password" class="form-control mb-2"
								placeholder="Password" required>
							<button class="btn btn-lg btn-primary btn-block mb-1"
								type="submit">Sign in</button>
							<label class="checkbox float-left"> <input
								type="checkbox" value="remember-me"> Remember me
							</label> <a href="#" class="float-right">Need help?</a>
						</form>
					</div>
					<c:if test="${not empty error_msg}">
						<div class="alert alert-danger">
							<strong>${error_msg}</strong>
						</div>
					</c:if>
				</div>
				<a href="#" class="float-right">Create an account </a>
			</div>
		</div>
	</div>


</body>
</html>