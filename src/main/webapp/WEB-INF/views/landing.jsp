<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-uWxY/CJNBR+1zjPWmfnSnVxwRheevXITnMqoEIeG1LJrdI0GlVs/9cVSyPYXdcSF"
	crossorigin="anonymous">

<title>Team Trikaja</title>
</head>
<body>
	<form method="POST" action="/kadynPage" modelAttribute="profileData">
		<div class="container">
			<div class="container rounded bg-white mt-5 mb-5">
				<div class="row flex-center justify-content-center">
					<div class="col-md-3 border-right">
						<div
							class="d-flex flex-column align-items-center text-center p-3 py-5">
							<img class="border border-black rounded-circle mt-5"
								width="200px" height="200px"
								src="/resources/images/kadyn_selfie.jpg"> <br> <span
								class="text-black-50">Kadyn Neale - 3002244358 </span><span>
							</span>
							<div class="row">
								<div class="col">
									<input type="submit" class="btn btn-dark" value="About Kadyn">
								</div>
							</div>
	</form>
	<form method="POST" action="/jhonatanPage" modelAttribute="profileData">
	</div>
	</div>

	<div class="col-md-3 border-right">
		<div
			class="d-flex flex-column align-items-center text-center p-3 py-5">
			<img class="rounded-circle mt-5" width="200px" height="200px"
				src="/resources/uploads/jhonatanpicture.jpeg"> <br> <span
				class="text-black-50">Jhonatan Araneda - 300321686</span><span>
			</span>
			<div class="row">
				<div class="col">
					<input type="submit" class="btn btn-dark" value="About Jhonatan">
				</div>
			</div>
		</div>
	</div>
	</form>

	</div>
	<label class="labels text-center">Hello and welcome to our home
		page! We are team Trikaja. For this class we aim to complete a
		helpdesk application using springboot. To find out more about one of
		us please click on a button below one of our profile pics.</label>
	</div>


</body>
</html>