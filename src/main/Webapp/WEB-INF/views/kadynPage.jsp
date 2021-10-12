<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<title>About Kadyn</title>
</head>
<body>
	<c:if test="${ likes !=null }">
		<p>${likes}
		<p>
	</c:if>
	<form method="POST" action="/getLikes" modelAttribute="likesData">
		<div class="row">
			<div class="col">
			<p>Hello, my name is Kadyn Neale, I am 26 year old student of Douglas College,
			I was born in Powell River, British Columbia.<p>
			
			<p>I got into computers from a young age through video games and playing around on an
			old computer with windows 98 back in the day.<p>
			
			<p>This will be my last semester at douglas college, after which I will be transfering
			to Simon Fraser University to finish my last 2 years of a full Csis degree<p>
			</div>
			<div class="col">
				<img src="${host}/img/selfie_placeholder.jpg" />
			</div>
		</div>
		<div class="row">
			<div class="col">
				<input type="submit" class="btn btn-primary" value="Get Likes">
			</div>
		</div>
	</form>

	<!-- Optional JavaScript; choose one of the two! -->

	<!-- Option 1: Bootstrap Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>

	<!-- Option 2: Separate Popper and Bootstrap JS -->
	<!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    -->
</body>
</html>