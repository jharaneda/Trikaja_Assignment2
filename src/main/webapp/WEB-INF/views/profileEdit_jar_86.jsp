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
<form method="POST" action="/saveInformation" modelAttribute="profileData" enctype="multipart/form-data">
		<div class="container">
			<div class="container rounded bg-white mt-5 mb-5">
				<div class="row">
					<div class="col-md-3 border-right">
						<div class="d-flex flex-column align-items-center text-center p-3 py-5">
							<img class="rounded-circle mt-5"  width="200px" height="200px" src="/resources/uploads/${profileData.pictureName}">
							<br><span class="text-black-50">Jhonatan Araneda</span><span> </span> <input type="file" name="file" />
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
									<label class="labels">Name</label>
									<form:input type="text" class="form-control"
										placeholder="first name" value="" path="profileData.name"
										id="name" name="name"/>
								</div>
								<div class="col-md-6">
									<label class="labels">Surname</label>
									<form:input type="text" class="form-control" value=""
										placeholder="surname" path="profileData.lastName"
										id="lastname" />
								</div>
							</div>
							<div class="row mt-3">
								<div class="col-md-12">
									<label class="labels">PhoneNumber</label><form:input  type="text"
										class="form-control" placeholder="enter phone number" value=""
										path="profileData.phoneNumber" id="phoneNumber"/>
								</div>
								<div class="col-md-12">
									<label class="labels">Address</label>
									<form:input type="text" class="form-control"
										placeholder="enter address" value=""
										path="profileData.address" id="address" />
								</div>
								<div class="col-md-12">
									<label class="labels">Email ID</label>
									<form:input type="text" class="form-control"
										placeholder="enter email id" value="" path="profileData.email"
										id="email" />
								</div>
								<div class="col-md-12">
									<label class="labels">Description</label>
									<form:textarea class="form-control"
										placeholder="description" value=""
										path="profileData.description" id="description" />
								</div>
							</div>
							<div class="mt-5 text-center">
								<input type="submit" class="btn btn-primary"
									value="Save profile">
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
</form>
</body>
</html>