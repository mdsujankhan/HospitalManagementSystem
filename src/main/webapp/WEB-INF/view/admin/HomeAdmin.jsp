<jsp:include page="/WEB-INF/view/common/admin/header.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<body>
	<div id="piechart"></div>
	<form action="">
		<c:forEach items="${report}" var="r">
			<input type="hidden" id="doctor" value="${r.doctorFee}">
			<input type="hidden" id="cavin" value="${r.cavinRent}">
			<input type="hidden" id="pathology" value="${r.pathologyBill}">
			<input type="hidden" id="medicine" value="${r.medicineBill}">
			<input type="hidden" id="covid" value="${r.covidTest}">
		</c:forEach>
	</form>
</body>

<script type="text/javascript" src="/app-assets/js/stt.js"></script>

<script type="text/javascript">
	// Load google charts
	google.charts.load('current', {
		'packages' : [ 'corechart' ]
	});
	google.charts.setOnLoadCallback(drawChart);

	function drawChart() {
		var covid = parseFloat(document.getElementById("covid").value)
		var medicine = parseInt(document.getElementById("medicine").value)
		var pathology = parseInt(document.getElementById("pathology").value)
		var cavin = parseInt(document.getElementById("cavin").value)
		var doctor = parseInt(document.getElementById("doctor").value)

		var data = google.visualization.arrayToDataTable([
				[ 'Task', 'Hours per Day' ], [ 'Covid-19 Test', covid ],
				[ 'Pathology', pathology ], [ 'Doctor Fee', doctor ],
				[ 'Medicine', medicine ], [ 'Cabin Rent', cavin ] ]);

		// Optional; add a title and set the width and height of the chart
		var options = {
			'title' : 'Total Income Report',
			'width' : 900,
			'height' : 750
		};

		// Display the chart inside the <div> element with id="piechart"
		var chart = new google.visualization.PieChart(document
				.getElementById('piechart'));
		chart.draw(data, options);
	}
</script>

<jsp:include page="/WEB-INF/view/common/admin/footer.jsp" />