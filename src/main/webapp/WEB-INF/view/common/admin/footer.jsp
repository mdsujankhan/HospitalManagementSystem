
</div>
</main>
<footer class="footer">
	<div class="container-fluid">
		<div class="row text-muted">

			<div class="col-6 text-start">
				<p class="mb-0"></p>
				<a class="text-muted" href="#" target="_blank"><strong>Md.
						Sujan Khan</strong></a> &copy;
			</div>

			<div class="col-6 text-end">
				<ul class="list-inline">
					<li class="list-inline-item"><a class="text-muted" href="#"
						target="_blank">Support</a></li>
					<li class="list-inline-item"><a class="text-muted" href="#"
						target="_blank">Help Center</a></li>
					<li class="list-inline-item"><a class="text-muted" href="#"
						target="_blank">Privacy</a></li>
					<li class="list-inline-item"><a class="text-muted" href="#"
						target="_blank">Terms and conditions</a></li>
				</ul>
			</div>

		</div>
	</div>
</footer>
</div>
</div>

<script src="/app-assets/js/dash/app.js"></script>
<script src="/app-assets/js/datatables.min.js"></script>

<!-- jQuery -->
  <script src="/app-assets/table/plugins/jquery/jquery.min.js"></script>
  <!-- Bootstrap 4 -->
  <script src="/app-assets/table/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- DataTables  & Plugins -->
  <script src="/app-assets/table/plugins/datatables/jquery.dataTables.min.js"></script>
  <script src="/app-assets/table/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
  <script src="/app-assets/table/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
  <script src="/app-assets/table/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
  <script src="/app-assets/table/plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
  <script src="/app-assets/table/plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
  <script src="/app-assets/table/plugins/jszip/jszip.min.js"></script>
  <script src="/app-assets/table/plugins/pdfmake/pdfmake.min.js"></script>
  <script src="/app-assets/table/plugins/pdfmake/vfs_fonts.js"></script>
  <script src="/app-assets/table/plugins/datatables-buttons/js/buttons.html5.min.js"></script>
  <script src="/app-assets/table/plugins/datatables-buttons/js/buttons.print.min.js"></script>
  <script src="/app-assets/table/plugins/datatables-buttons/js/buttons.colVis.min.js"></script>
  <!-- AdminLTE App -->
  <script src="/app-assets/table/dist/js/adminlte.min.js"></script>
  <!-- AdminLTE for demo purposes -->
  <script src="/app-assets/table/dist/js/demo.js"></script>
  <!-- Page specific script -->
  <script>
    $(function () {
      $("#example1").DataTable({
        "responsive": true, "lengthChange": false, "autoWidth": false,
        "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"]
      }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
    });
  </script>

</body>

</html>