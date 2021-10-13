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

<title>Jhonatan's Profile</title>
</head>
<body>
<form method="POST" action="/editProfile" modelAttribute="profileData">
		<div class="container">
			<div class="container rounded bg-white mt-5 mb-5">
				<div class="row">
					<div class="col-md-3 border-right">
						<div class="d-flex flex-column align-items-center text-center p-3 py-5">
							<img class="rounded-circle mt-5" width="200px" height="200px" src="/resources/uploads/jhonatanpicture.jpeg">
							
							<br><span class="text-black-50">Jhonatan Araneda</span><span> </span>
							
						</div>
					</div>
					<div class="col-md-5 border-right">
					
						<div class="p-3 py-5">
							<div
								class="d-flex justify-content-between align-items-center mb-3">
								<h4 class="text-right">Profile Settings</h4>
							</div>
							<div class="row mt-2">
								<div class="col-md-6">
									<label class="labels">Name: ${profileData.name}</label>
								</div>
								<div class="col-md-6">
									<label class="labels">Surname: ${profileData.lastName}</label>
								</div>
							</div>
							<div class="row mt-3">
								 <div class="col-md-12">
									<label class="labels">PhoneNumber:  ${profileData.phoneNumber}</label>
								</div>
								<div class="col-md-12">
									<label class="labels">Address:  ${profileData.address}</label>
								</div>
								<div class="col-md-12">
									<label class="labels">Email:  ${profileData.email}</label>
								</div>
								<div class="col-md-12">
									<label class="labels">Description:  ${profileData.description}</label>
								</div>
							</div>
							<div class="mt-5 text-center">
								<input type="submit" class="btn btn-primary" value="Edit Profile">
							</div>
						</div>
						
					</div>
					
				</div>
			</div>
		</div>
	</form>
</body>
</html>