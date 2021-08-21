<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
<title>Hotel Details</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet">

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>

<script type="text/javascript"
	src="<c:url value="/resources/js/jquery-3.6.0.min.js" />"></script>

<script type="text/javascript"
	src="<c:url value="/resources/js/hotel-reservation.js" />"></script>


</head>


<body>

	<div class="container">
		<div id="wrapper" class="ml-5 mr-5 mt-5 mb-5">
			<div id="header">
				<h2>Hotel details</h2>
				<h4>${ hotelDetails.name }</h4>
			</div>
		</div>

		<form:form action="guest-details" modelAttribute="hotelDetails"
			method="POST">

			<table class="table">
				<thead>
					<tr>
						<th scope="col">Room type</th>
						<th scope="col">Price</th>
						<th scope="col">GST</th>
						<th scope="col">Total</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>${ hotelDetails.roomType }</td>
						<td>&#8377 ${ hotelDetails.price }</td>
						<td>&#8377 ${ hotelDetails.gst }</td>
						<td>&#8377 ${ hotelDetails.price + hotelDetails.gst }</td>
					</tr>

				</tbody>
			</table>
			
			<input type="hidden" name ="hotelName" value="${ hotelDetails.name }"/>

			<button type="submit" class="btn btn-primary">Confirm</button>
			<a href="search" class="btn btn-secondary">Back</a>

		</form:form>
	</div>
</body>
</html>