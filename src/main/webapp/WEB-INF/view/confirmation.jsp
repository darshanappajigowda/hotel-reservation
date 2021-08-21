<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN"
          "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd">
<html>
<head>
<title>Confirmation</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet">

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>

</head>

<body>

	<div class="container">
		<div id="wrapper" class="ml-5 mr-5 mt-5 mb-5">
			<div id="header">
				<h2>${ hotelName }</h2>
			</div>
		</div>
		<div class="mb-3">
			<div class="alert alert-success" role="alert">
				<svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img"
					aria-label="Success:">
				<use xlink:href="#check-circle-fill" /></svg>
				<h4 class="alert-heading">Confirmation</h4>
				<p>Dear ${ guestDetails.guestName }, thank you for choosing ${ hotelName }.
					It is our pleasure to confirm your reservation.</p>
			</div>
		</div>
	</div>

</body>
</html>