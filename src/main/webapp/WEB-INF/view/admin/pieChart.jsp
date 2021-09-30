<jsp:include page="/WEB-INF/view/common/admin/header.jsp" />


<body>
	<div id="piechart"></div>
</body>

<script type="text/javascript" src="/app-assets/js/stt.js"></script>

<script type="text/javascript">
	// Load google charts
	google.charts.load('current', {
		'packages' : [ 'corechart' ]
	});
	google.charts.setOnLoadCallback(drawChart);

	// Draw the chart and set the chart values
	function drawChart() {
		var data = google.visualization.arrayToDataTable([
				[ 'Task', 'Hours per Day' ], [ 'Covid-19 Test', 6 ], [ 'Pathology', 2 ],
				[ 'Doctor Fee', 4 ], [ 'Medicine', 2 ], [ 'Cabin Rent', 5 ] ]);

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