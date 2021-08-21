<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN"
          "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd">
<html>
<head>
<title>No hotels</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet">

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>

</head>

<body>

	<div class="container">
		<div class="mb-3 mt-3">
			<div class="alert alert-danger d-flex align-items-center"
				role="alert">
				<svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img"
					aria-label="Danger:"> <use
					xlink:href="#exclamation-triangle-fill" /></svg>
				<div>Sorry, this hotel is not available for the chosen date.
					Please click on the below button to choose another hotel.</div>
			</div>

			<a href="search" class="btn btn-primary"> <svg
					xmlns="http://www.w3.org/2000/svg" width="16" height="16"
					fill="currentColor" class="bi bi-chevron-left" viewBox="0 0 16 16">
				<path fill-rule="evenodd"
					d="M11.354 1.646a.5.5 0 0 1 0 .708L5.707 8l5.647 5.646a.5.5 0 0 1-.708.708l-6-6a.5.5 0 0 1 0-.708l6-6a.5.5 0 0 1 .708 0z" />
				</svg> Choose again
			</a>
		</div>
	</div>

</body>
</html>