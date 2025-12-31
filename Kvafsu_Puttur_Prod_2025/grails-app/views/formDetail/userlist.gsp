<%@ page import="com.hiideals.jobForm.FormDetail"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>KVAFSU Application</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1" name="viewport" />
<meta content="Preview page of Metronic Admin Theme #3 for form layouts"
	name="description" />
<meta content="" name="author" />
<!-- BEGIN GLOBAL MANDATORY STYLES -->
<link
	href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all"
	rel="stylesheet" type="text/css" />
<link
	href="assets1/global/plugins/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="assets1/global/plugins/simple-line-icons/simple-line-icons.min.css"
	rel="stylesheet" type="text/css" />
<link href="assets1/global/plugins/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="assets1/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css"
	rel="stylesheet" type="text/css" />
<link href="assets1/global/plugins/datatables/datatables.min.css"
	rel="stylesheet" type="text/css" />

<link
	href="assets1/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.css"
	rel="stylesheet" type="text/css" />
<link
	href="assets1/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.css"
	rel="stylesheet" type="text/css" />
<!-- END GLOBAL MANDATORY STYLES -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN THEME GLOBAL STYLES -->
<link href="assets1/global/css/components-rounded.min.css"
	rel="stylesheet" id="style_components" type="text/css" />
<link href="assets1/global/css/plugins.min.css" rel="stylesheet"
	type="text/css" />
<!-- END THEME GLOBAL STYLES -->
<!-- BEGIN THEME LAYOUT STYLES -->
<link href="assets1/layouts/layout3/css/layout.min.css" rel="stylesheet"
	type="text/css" />
<link href="assets1/layouts/layout3/css/themes/default.min.css"
	rel="stylesheet" type="text/css" id="style_color" />
<link href="assets1/layouts/layout3/css/custom.min.css" rel="stylesheet"
	type="text/css" />
<link
	href="assets1/global/plugins/bootstrap-datepicker/css/bootstrap-datepicker6.min.css"
	type="text/css" rel="stylesheet">
<!-- END THEME LAYOUT STYLES -->
<link rel="shortcut icon" href="assets1/global/img/Kvfsu.png" />
</head>
<style type="text/css">
@media print {
	#printPageButton4 {
		display: none;
	}
	.portlet.box.blue {
		border: 0px solid #60aee4 !important;
	}
	#printlogoButton {
		display: inline;
	}
	a[href]:after {
		content: none !important;
	}
}
</style>
<style>
.modal.modal-wide .modal-dialog {
	width: 90%;
}

.modal-wide .modal-body {
	overflow-y: auto;
}

/* irrelevant styling */
body {
	text-align: lift;
}

body p {
	max-width: 400px;
	margin: 20px auto;
}

#feeDetailss_


 


${
i



	



}
.modal-body p {
	margin-bottom: 900px
}
</style>
<style>
</style>

<!-- END HEAD -->

<body class="page-container-bg-solid">
	<div class="page-wrapper">
		<div class="page-wrapper-row">
			<div class="page-wrapper-top">
				<!-- BEGIN HEADER -->
				<div class="page-header">
					<!-- BEGIN HEADER TOP -->
					<div class="page-header-top">
						<!-- BEGIN LOGO -->
						<img class="img1" src="assets1/layouts/layout3/img/jobport.png"
							style="width: 100%;">


					</div>
					<!-- END HEADER TOP -->
					<!-- BEGIN HEADER MENU -->

					<!-- END HEADER MENU -->
				</div>
				<!-- END HEADER -->
			</div>
		</div>
		<div class="page-wrapper-row full-height">
			<div class="page-wrapper-middle">
				<!-- BEGIN CONTAINER -->
				<div class="page-container">
					<!-- BEGIN CONTENT -->
					<div class="page-content-wrapper">
						<!-- BEGIN CONTENT BODY -->
						<!-- BEGIN PAGE HEAD-->
						<div class="page-head">
							<div class="container">
								<!-- BEGIN PAGE TITLE -->

								<!-- END PAGE TITLE -->
								<!-- BEGIN PAGE TOOLBAR -->

								<!-- END PAGE TOOLBAR -->
							</div>
						</div>
						<!-- END PAGE HEAD-->
						<!-- BEGIN PAGE CONTENT BODY -->
						<div class="page-content">
							<div class="container">
								<!-- BEGIN PAGE BREADCRUMBS -->
								<%--
								<img class="img2" src="assets1/layouts/layout3/img/caree.png" style="width:100%;">

								--%>
								<!-- END PAGE BREADCRUMBS -->
								<!-- BEGIN PAGE CONTENT INNER -->
								<div class="page-content-inner">
									<div class="row">
										<div class="col-md-12">
											<div class="tabbable-line boxless tabbable-reversed"></div>

											<div class="portlet light bordered">
												<div class="portlet-title">
													<div class="caption">
														<sec:ifAnyGranted roles="ROLE_ADMIN">
															<g:link controller="superadmin" action="indexx">
																<i class="icon-home font-dark"></i>
																<span class="caption-subject font-dark sbold">Home</span>
															</g:link>
														</sec:ifAnyGranted>

														<sec:ifAnyGranted roles="ROLE_COMMANUSERS">
															<g:link controller="superadmin" action="dashboard">
																<i class="icon-home font-dark"></i>
																<span class="caption-subject font-dark sbold">Home</span>
															</g:link>
														</sec:ifAnyGranted>
													</div>
													<div class="actions">
														<div class="btn-group btn-group-devided"
															data-toggle="buttons">

															<g:render template="/header/topBar"></g:render>

															<%--<label class="btn btn-transparent dark btn-outline btn-circle btn-sm">
                                                                    <input type="radio" name="options" class="toggle" id="option2">Settings</label>
                                                            --%>
														</div>
													</div>
												</div>
												<div class="portlet-body form">
													<!-- BEGIN FORM-->


													<div class="row">
														<div class="col-md-12">
															<!-- BEGIN EXAMPLE TABLE PORTLET-->
															<div class="portlet light ">
																<div>
																	<div class="portlet-title">
																		<div class="caption font-red">
																			<i class="icon-user font-red"></i> <span
																				class="caption-subject bold uppercase">User
																				List</span>
																		</div>
																		<div class="tools"></div>
																	</div>
																	<div class="portlet-body ">
																		<table
																			class="table table-striped table-checkable table-bordered table-hover "
																			id="sample_1">
																			<thead>
																				<tr>
																					<th>S.No</th>
																					<th>Username</th>
																					<th>Password</th>
																					<th>Email</th>
																					<th>Mobile No</th>
																					<th>Created Date</th>
																					<th>City</th>
																					<th>State</th>
																				</tr>
																			</thead>
																			<tbody>


																				<g:each in="${formdet}" status="i"
																					var="formDetailInstance">
																					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
																						<td>
																							${i+1}
																						</td>
																						<td>
																							${fieldValue(bean: formDetailInstance, field: "username")}
																						</td>
																						<td>
																							${fieldValue(bean: formDetailInstance, field: "password")}

																						</td>
																						<td>
																							${fieldValue(bean: formDetailInstance, field: "email")}

																						</td>
																						<td>
																							${fieldValue(bean: formDetailInstance, field: "phoneNo")}
																						</td>
																						<td class="left"><g:formatDate
																								date="${formDetailInstance.dateCreated}" /></td>

																						<td>
																							${fieldValue(bean: formDetailInstance.address, field: "city")}
																						</td>
																						<td>
																							${fieldValue(bean: formDetailInstance.address, field: "state")}
																						</td>


																					</tr>

																				</g:each>
																			</tbody>
																		</table>
																	</div>
																</div>
															</div>


														</div>

													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- END PAGE CONTENT INNER -->
				</div>
			</div>
			<!-- END PAGE CONTENT BODY -->
			<!-- END CONTENT BODY -->
		</div>
		<!-- END CONTENT -->
		<!-- BEGIN QUICK SIDEBAR -->
		<a href="javascript:;" class="page-quick-sidebar-toggler"> <i
			class="icon-login"></i>
		</a>

		<!-- END QUICK SIDEBAR -->
	</div>
	<!-- END CONTAINER -->
	<div class="page-wrapper-row">
		<div class="page-wrapper-bottom">
			<!-- BEGIN FOOTER -->
			<!-- BEGIN PRE-FOOTER -->

			<!-- END PRE-FOOTER -->
			<!-- BEGIN INNER FOOTER -->
			<div class="page-footer">
				<div class="container">
					2022 &copy; kvafsu Job Portle By <a target="_blank"
						href="http://hiideals.com">Hiideals</a>
				</div>
			</div>
			<div class="scroll-to-top">
				<i class="icon-arrow-up"></i>
			</div>
			<!-- END INNER FOOTER -->
			<!-- END FOOTER -->
		</div>
	</div>
	<!-- BEGIN QUICK NAV -->

	<div class="quick-nav-overlay"></div>
	<!-- END QUICK NAV -->
	<!--[if lt IE 9]>
<script src="assets1/global/plugins/respond.min.js"></script>
<script src="assets1/global/plugins/excanvas.min.js"></script> 
<script src="assets1/global/plugins/ie8.fix.min.js"></script> 
<![endif]-->
	<!-- BEGIN CORE PLUGINS -->
	<script src="assets1/global/plugins/jquery.min.js"
		type="text/javascript"></script>
	<script src="assets1/global/plugins/bootstrap/js/bootstrap.min.js"
		type="text/javascript"></script>
	<script src="assets1/global/plugins/js.cookie.min.js"
		type="text/javascript"></script>
	<script
		src="assets1/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js"
		type="text/javascript"></script>
	<script src="assets1/global/plugins/jquery.blockui.min.js"
		type="text/javascript"></script>
	<script
		src="assets1/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js"
		type="text/javascript"></script>
	<!-- END CORE PLUGINS -->
	<script src="assets1/global/scripts/datatable.js"
		type="text/javascript"></script>
	<script src="assets1/global/plugins/datatables/datatables.min.js"
		type="text/javascript"></script>
	<script
		src="assets1/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.js"
		type="text/javascript"></script>
	<!-- BEGIN PAGE LEVEL PLUGINS -->
	<!-- END PAGE LEVEL PLUGINS -->
	<!-- BEGIN THEME GLOBAL SCRIPTS -->
	<script src="assets1/global/scripts/app.min.js" type="text/javascript"></script>
	<!-- END THEME GLOBAL SCRIPTS -->
	<script src="assets1/pages/scripts/table-datatables-rowreorder.min.js"
		type="text/javascript"></script>
	<!-- BEGIN PAGE LEVEL SCRIPTS -->
	<script src="assets1/pages/scripts/form-samples.min.js"
		type="text/javascript"></script>
	<!-- END PAGE LEVEL SCRIPTS -->
	<!-- BEGIN THEME LAYOUT SCRIPTS -->
	<script src="assets1/layouts/layout3/scripts/layout.min.js"
		type="text/javascript"></script>
	<script src="assets1/layouts/layout3/scripts/demo.min.js"
		type="text/javascript"></script>
	<script src="assets1/layouts/global/scripts/quick-sidebar.min.js"
		type="text/javascript"></script>
	<script src="assets1/layouts/global/scripts/quick-nav.min.js"
		type="text/javascript"></script>
	<script
		src="assets1/global/plugins/bootstrap-datepicker/js/jquery.ui.datepicker1.js"></script>
	<!-- END THEME LAYOUT SCRIPTS -->
	<script>
		$(document).ready(function() {
			$('#clickmewow').click(function() {
				$('#radio1003').attr('checked', 'checked');
			});
		})
	</script>
	<script type="text/javascript">
		$(function() {
			$(".date-picker").datepicker({
				changeMonth : true,
				changeYear : true,
				yearRange : "1800:3000",
			});
		});

		// when .modal-wide opened, set content-body height based on browser height; 200 is appx height of modal padding, modal title and button bar

		$(".modal-wide").on("show.bs.modal", function() {
			var height = $(window).height() - 200;
			$(this).find(".modal-body").css("max-height", height);
		});
	</script>
	<script type="text/javascript">
		function printDiv(akash) {
			var printContents = document.getElementById(akash).innerHTML;
			var originalContents = document.body.innerHTML;

			document.body.innerHTML = printContents;

			window.print();

			document.body.innerHTML = originalContents;
		}
	</script>
</body>

</html>