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
<link href="css/uploadfile.css" type="text/css" rel="stylesheet">

<!-- END THEME LAYOUT STYLES -->
<link rel="shortcut icon" href="assets1/global/img/Kvfsu.png" />
</head>

<style>
.modal.modal-wide .modal-dialog {
	width: 70%;
}

.modal-wide .modal-body {
	overflow-y: auto;
}
/* irrelevant styling */
body p {
	max-width: 400px;
	margin: 20px auto;
}

#feeDetails_


 


${
i




}
.modal-body p {
	margin-bottom: 900px
}
</style>
<!-- END HEAD -->

<body class="page-container-bg-solid" onload="noBack();"
	onpageshow="if (event.persisted) noBack();" onunload="">
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
														<g:link controller="formDetail" action="adminformDetails">
															<i class="icon-home font-dark"></i>
															<span class="caption-subject font-dark sbold">Home</span>
														</g:link>
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

													<%--<marquee scrollamount="15" width="100%" direction="left"
														height="35px" style="font-size: 22px; color: red;">
														<img src="assets1/layouts/layout3/img/preview.gif"
															height="40px" width="10%"> <b>Candidates who
															belong to Kalyan Karnataka Region can Only apply for the
															job.</b>
													</marquee>

												--%>
												</div>
												<div class="portlet-body form">
													<!-- BEGIN FORM-->

													<g:form
														url="[resource:formDetailInstance, action:'Manualthankyou']"
														class="form-horizontal" enctype='multipart/form-data'>
														<div class="form-body">
															<h1 class="form-section caption-subject font-red bold"
																style="TEXT-ALIGN: center !important;">Manual
																Payment Form</h1>



															<div class="row">
																<div class="col-md-6">
																	<div class="form-group">
																		<label class="control-label col-md-3">payment
																			Id<span style="color: red">*</span>
																		</label>
																		<div class="col-md-9">
																			<input type="text" class="form-control" required
																				name="paymentId" value=""
																				placeholder="E0000000GNO000">
																		</div>
																	</div>
																</div>
																<div class="col-md-6">
																	<div class="form-group">
																		<label class="control-label col-md-3">Transaction
																			Id<span style="color: red">*</span>
																		</label>
																		<div class="col-md-9">
																			<input type="text" class="form-control" required
																				name="transactionId" value="" placeholder="0000000">
																		</div>
																	</div>
																</div>
															</div>
															<div class="row">
																<div class="col-md-6">
																	<div class="form-group">
																		<label class="control-label col-md-3">payment
																			Request Id<span style="color: red">*</span>
																		</label>
																		<div class="col-md-9">
																			<input type="text" class="form-control" required
																				name="paymentrequestId" value=""
																				placeholder="e000d0000c0c00af0b">
																		</div>
																	</div>
																</div>
																<div class="col-md-6">
																	<div class="form-group">
																		<label class="control-label col-md-3">User Id<span
																			style="color: red">*</span></label>
																		<div class="col-md-9">
																			<input type="text" class="form-control" name="userId"
																				readonly
																				value="${manualPaymenformdets?.commonUserId?.username}"
																				placeholder="User Id">
																		</div>
																	</div>
																</div>
															</div>
															<div class="row">
																<div class="col-md-6">
																	<div class="form-group">
																		<label class="control-label col-md-3">Created
																			Date<span style="color: red">*</span>
																		</label>
																		<div class="col-md-9">
																			<input type="text" class="form-control" required
																				name="createddate" value="" placeholder="0000-00-00">
																		</div>
																	</div>
																</div>
																<div class="col-md-6">
																	<div class="form-group">
																		<label class="control-label col-md-3">Total
																			Amount<span style="color: red">*</span>
																		</label>
																		<div class="col-md-9">
																			<input type="text" class="form-control" required
																				name="totalamount" value=""
																				placeholder="Total Amount Paid">
																		</div>
																	</div>
																</div>
															</div>
															<div class="row">
																<div class="col-md-6">
																	<div class="form-group">
																		<label class="control-label col-md-3">Pay
																			Method<span style="color: red">*</span>
																		</label>
																		<div class="col-md-9">
																			<input type="text" class="form-control" required
																				name="paymethod" value="" placeholder="Pay Method">
																		</div>
																	</div>
																</div>


																<div class="col-md-6">
																	<div class="form-group">
																		<label class="control-label col-md-3">Status<span
																			style="color: red">*</span></label>
																		<div class="col-md-9">
																			<select id="status" name="status"
																				class="form-control">

																				<option value="success">success</option>

																			</select>
																		</div>
																	</div>
																</div>
															</div>
															<div class="row">
																<div class="col-md-6">
																	<div class="form-group">
																		<label class="control-label col-md-3">Terms<span
																			style="color: red">*</span></label>
																		<div class="col-md-9">
																			<input type="text" class="form-control" name="terms"
																				required value="" placeholder="Terms">
																		</div>
																	</div>
																</div>

																<div class="col-md-6">

																	<div class="form-group">
																		<label class="control-label col-md-3">Application
																			Number<span style="color: red">*</span>
																		</label>

																		<div class="col-md-9">
																			<input type="text" class="form-control" readonly
																				name="apllicationNo"
																				value="${manualPaymenformdets?.apllicationNo}">
																		</div>

																	</div>
																</div>

															</div>
														</div>

														<div class="form-actions">
															<div class="row">
																<div class="col-md-offset-3 col-md-9">
																	<g:submitButton name="create" class="btn green"
																		value="${message(code: 'default.button.Submit.label', default: 'Submit')}" />
																</div>
															</div>
														</div>
													</g:form>



													<!-- END FORM-->
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
	<!-- BEGIN PAGE LEVEL PLUGINS -->
	<!-- END PAGE LEVEL PLUGINS -->
	<!-- BEGIN THEME GLOBAL SCRIPTS -->
	<script src="assets1/global/scripts/app.min.js" type="text/javascript"></script>
	<!-- END THEME GLOBAL SCRIPTS -->
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


</body>

</html>