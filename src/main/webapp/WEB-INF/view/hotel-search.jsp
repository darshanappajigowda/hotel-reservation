<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
<title>Hotel Reservation</title>
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
		</div>

		<form:form action="hotel-details" modelAttribute="model" method="POST">
			<div class="mb-3">
				<small class="text-muted mb-3">Fields marked with asterisk
					(*) are mandatory</small>
			</div>
			<div class="mb-3">
				<label for="city" class="form-label">City*</label>
				<form:select class="form-select" path="city" name="city">
					<form:option value="">Please select...</form:option>
					<form:options items="${cities}" />
				</form:select>
				<form:errors path="city" cssClass="error" />
			</div>

			<div class="mb-3" id="hotelContainer">
				<label for="hotel" class="form-label">Hotel*</label>
				<form:select class="form-select" path="hotel" id="hotel">
					<form:option value="">Please select...</form:option>
					<c:if test="${ not empty hotels }">
						<form:options items="${hotels}" />
					</c:if>
				</form:select>
				<form:errors path="hotel" cssClass="error" />
			</div>

			<div class="mb-3">
				<label for="date" class="form-label">Date*</label>
				<form:input path="date" class="form-control" type="date" />
				<form:errors path="date" cssClass="error" />
			</div>

			<button type="submit" class="btn btn-primary">Check
				availability</button>

		</form:form>
	</div>
</body>
</html>