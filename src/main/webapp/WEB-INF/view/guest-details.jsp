<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
<title>Guest details</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet">

<link href="<c:url value="/resources/css/hotel-reservation.css" />"
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
				<h2>Hotel Reservation System</h2>
			</div>
			<div id="header">
				<h4>Reservation form</h4>
			</div>
		</div>

		<form:form action="confirmation" modelAttribute="guestDetails"
			method="POST">
			<div class="mb-3">
				<small class="text-muted mb-3">Fields marked with asterisk
					(*) are mandatory</small>
			</div>
			<div class="mb-3">
				<label for="guestName" class="form-label">Guest name*</label>
				<form:input type="text" class="form-control" path="guestName"
					name="guestName" />
				<form:errors path="guestName" cssClass="error" />
			</div>

			<div class="mb-3">
				<label for="gender" class="form-label">Gender</label>
				<form:select class="form-select" path="gender" id="gender">
					<form:option value="Invalid">Please select...</form:option>
					<form:option value="Male">Male</form:option>
					<form:option value="Female">Female</form:option>
					<form:option value="Others">Others</form:option>
				</form:select>
			</div>

			<div class="mb-3">
				<label for="age" class="form-label">Age*</label>
				<form:input type="text" class="form-control" path="age" name="age" />
				<form:errors path="age" cssClass="error" />
			</div>

			<div class="mb-3">
				<label for="emailId" class="form-label">Email ID*</label>
				<form:input type="email" class="form-control" path="emailId"
					name="emailId" />
				<form:errors path="emailId" cssClass="error" />
			</div>

			<div class="mb-3">
				<label for="mobileNumber" class="form-label">Mobile number*</label>
				<form:input type="text" class="form-control" path="mobileNumber"
					name="mobileNumber" />
				<form:errors path="mobileNumber" cssClass="error" />
			</div>

			<input type="hidden" name="hotelName" value="${ hotelName }" />
			<button type="submit" class="btn btn-primary">Reserve</button>

		</form:form>
	</div>
</body>
</html>