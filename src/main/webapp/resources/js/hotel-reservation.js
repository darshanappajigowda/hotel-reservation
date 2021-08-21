
$(document).ready(function() {

	$("#city").on('change', function() {
		var url = "hotels/" + $("#city").val()
		$.ajax({
			url: url,
			type: 'GET',
			dataType: 'json',
			cache: false,
			success: function(data) {
				$("#hotel").empty();
				$("#hotel").append("<option value=''>Please select...</option>");
				$.each(data, function(key, value) {
					$("#hotel").append('<option value=' + value.id + '>' + value.name + '</option>');
				});
			}
		});
	});

});
