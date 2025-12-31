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
<link href="assets1/global/plugins/font-awesome/css/font-awesome"
	grails-app/views/formDetail/report.gsp".min.css"
	rel="stylesheet"
	type="text/css" />
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
<!-- END THEME LAYOUT STYLES -->
<link rel="shortcut icon" href="assets1/global/img/Kvfsu.png" />
</head>

<style type="text/css">
@media print {
	a[href]:after {
		content: none !important;
	}
}
</style>

<style>
.tb1 {
	border: 1px solid black;
	color: black;
	height: 26px;
}

.tb2 {
	border-top: 1px solid black;
}

.tb3 {
	border-bottom: 1px solid black;
}
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
								<img class="img2" src="assets1/layouts/layout3/img/caree.png"
									style="width: 100%;">

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
															<g:link controller="formDetail" action="adminformDetails">
																<i class="icon-home font-dark"></i>
																<span class="caption-subject font-dark sbold">Home</span>
															</g:link>
														</sec:ifAnyGranted>

														<sec:ifAnyGranted roles="ROLE_COMMANUSERS">
															<g:link controller="formDetail" action="index">
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




												<table width="75%" border="0" align="center"
													class="tb2_grid tb1"
													style="border-top: 2px solid black; border-right: 2px solid black; border-bottom: 2px solid black; border-left: 2px solid black; background-color: #ffffff;">
													<tr>
														<td width="635"><table width="100%" border="0">
																<tr>
																	<td align="right" valign="top" colspan="3"><table
																			width="100%" border="0">
																			<tr>
																				<td colspan="2" align="center" valign="top">&nbsp;</td>
																			</tr>
																			<tr>
																				<td width="100%" align="center" valign="top"><img
																					class="img1"
																					src="assets1/layouts/layout3/img/jobport1.png"
																					style="width: 95%;">&nbsp;</td>

																			</tr>
																			<tr>
																				<td align="center" valign="top"
																					style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 18px;"><strong>Payment
																						Receipt for Teaching Post </strong></td>
																			</tr>

																			<tr>
																				<td align="center" valign="top"></td>
																			</tr>
																			<tr>
																				<td colspan="2" align="center" valign="top"
																					style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px;"><strong>Application
																						No : ${formdet?.apllicationNo}
																				</strong></td>
																			</tr>

																			<tr>
																				<td colspan="2" align="center" valign="top"
																					style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px;"><strong>Applied
																						for Post : ${formdet?.appliyingPost}
																				</strong></td>
																			</tr>

																		</table>
																</tr>
																<tr>
																	<td height="93" colspan="3">

																		<table width="100%" style="border: 1px solid black">
																			<tr>
																				<td height="3" colspan="3"></td>
																			</tr>
																			<tr>
																				<td height="25" colspan="3" class="bgcolor_02">&nbsp;&nbsp;<span
																					class="admin"><b>Personal Information</b> </span></td>
																			</tr>
																			<tr>
																				<td width="1" class="bgcolor_02"></td>
																				<td align="left" valign="top">
																					<table width="100%">

																						<tr>
																							<td><table width="100%" border="0"
																									cellspacing="2" cellpadding="0" align="center">
																									<tr>
																										<td align="left" class="narmal tb1">&nbsp;
																											First Name</td>

																										<td align="left" class="narmal tb1">&nbsp;
																											${formdet?.firstName}
																										</td>
																										<td align="left" class="narmal">&nbsp;</td>
																									</tr>
																									<tr>
																										<td align="left" class="narmal tb1">&nbsp;
																											Father Name</td>

																										<td align="left" class="narmal tb1">&nbsp;
																											${formdet?.fName}
																										</td>
																										<td align="left" class="narmal">&nbsp;</td>
																									</tr>

																									<tr>



																										<td align="left" class="narmal tb1"
																											width="50%">&nbsp; Mother Name</td>

																										<td align="left" class="narmal tb1"
																											width="50%">&nbsp; ${formdet?.mName}
																										</td>
																										<!--  <td align="left" class="narmal" width="25%"
																											><g:if
																												test="${formdet?.picture !=null }">
																												<a
																													href="${createLink(controller:'formDetail', action:'viewimg', id:formdet?.picture?.id)}"
																													download> <img
																													src="${createLink(controller:'formDetail', action:'viewimg', id:formdet?.picture?.id)}"
																													width="150" height="150" alt="Image"
																													style="border:2px solid blue;position:absolute; bottom:276px; left:800px;" title="Images" align="left">
																												</a>

																											</g:if> <g:else>
																												<img
																													src="assets1/layouts/layout/img/user.jpg"
																													class="img-responsive pic-bordered" alt=""
																													align="right" />
																											</g:else></td>-->


																									</tr>
																									<tr>
																										<td align="left" class="narmal tb1">&nbsp;
																											Date Of Birth</td>

																										<td align="left" class="narmal tb1">&nbsp;
																											<g:formatDate date="${formdet.dob}"
																												format="mm-dd-yyyy" />
																										</td>
																									</tr>
																									<tr>
																										<td align="left" class="narmal tb1">&nbsp;
																											Gender</td>

																										<td align="left" class="narmal tb1">&nbsp;
																											${formdet?.gender}
																										</td>
																									</tr>

																									<tr>
																										<td align="left" class="narmal tb1"
																											width="50%">&nbsp Email ID</td>

																										<td align="left" class="narmal tb1"
																											width="50%">&nbsp; ${formdet?.email}
																										</td>
																									</tr>

																									<tr>
																										<td align="left" class="narmal tb1">&nbsp;
																											Mobile Number</td>

																										<td align="left" class="narmal tb1">&nbsp;
																											${formdet?.phoneNumber}
																										</td>
																									</tr>
																									<tr>
																										<td align="left" class="narmal tb1">&nbsp
																											Address</td>

																										<td align="left" class="narmal tb1">&nbsp;&nbsp;
																											${formdet?.hNo},${formdet?.street},${formdet?.village},
																											${formdet?.city},${formdet?.taluka},${formdet?.district},${formdet?.state},${formdet?.pinCode},
																											${formdet?.country}
																										</td>
																									</tr>
																									<tr>
																										<td align="left" class="narmal tb1">&nbsp;
																											Social Category</td>

																										<td align="left" class="narmal tb1">&nbsp;
																											${formdet?.socialcategory}
																										</td>
																									</tr>

																									<tr>
																										<td align="left" class="narmal tb1">&nbsp;
																											Sub-Caste</td>

																										<td align="left" class="narmal tb1">&nbsp;
																											${formdet?.subcast}
																										</td>
																									</tr>
																									<tr>
																										<td align="left" class="narmal tb1">&nbsp;
																											Religion</td>

																										<td align="left" class="narmal tb1">&nbsp;
																											${formdet?.religion}
																										</td>
																									</tr>



																								</table></td>
																						</tr>

																						<tr>
																							<td><g:if
																									test="${formdet?.paymentInfoId?.paymentId != null}">
																									<div class="portlet-body">
																										<div>
																											<table
																												class="table table-bordered table-hover">
																												<thead>
																													<tr>
																														<th>Payment Id</th>
																														<th>Transaction Id</th>
																														<th>Payment Status</th>
																														<th>Payment Date</th>
																														<th>Total Amount</th>


																													</tr>
																												</thead>
																												<tbody>
																													<tr>
																														<td>
																															${formdet?.paymentInfoId?.paymentId}
																														</td>
																														<td>
																															${formdet?.paymentInfoId?.transactionId}
																														</td>
																														<td>
																															${formdet?.paymentInfoId?.status}
																														</td>
																														<td><g:formatDate
																																date="${formdet?.paymentInfoId?.createddate}" />

																														</td>


																														<td>
																															${formdet?.paymentInfoId?.totalamount}
																														</td>

																													</tr>
																												</tbody>
																											</table>

																										</div>
																									</div>
																								</g:if></td>

																						</tr>



																					</table>



																				</td>
																				<td width="1" class="bgcolor_02"></td>
																			</tr>
																			<tr>
																				<td width="1" class="bgcolor_02"></td>
																				<td height="10">&nbsp;</td>
																				<td width="1" class="bgcolor_02"></td>
																			</tr>
																			<tr>
																				<td height="1" colspan="3" class="bgcolor_02"></td>
																			</tr>
																		</table>
																		<style>
.fee_card {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 9px;
}
</style>

																	</td>
																</tr>

																<tr>
																	<td colspan="3" align="right"><b>Best wishes<br>
																			<span style="margin-right: 15px;">
																				${formdet?.firstName}

																		</span>
																	</b></td>

																</tr>
																<g:if test="${formDetailInstance?.paymentInfoId?.status != "success" }">
																	<tr>
																		<td colspan="3" align="right"><input
																			type="button" id="printbutton" value="&nbsp;PRINT"
																			onclick="return printing();" class="btn blue" /></td>

																	</tr>
																</g:if>

															</table></td>
													</tr>
													<script type="text/javaScript">
														function printing() {
															document
																	.getElementById("printbutton").style.display = "none";
															window.print();
															window.close();
														}
													</script>

												</table>







												<br>

												<%--<div class="form-actions">
													<div class="row">
														<div class="col-md-offset-3 col-md-9">
															<g:form
																url="[resource:formdet, action:'delete']"
																method="DELETE">
																<fieldset class="buttons">
																	<g:link class="btn green" action="edit"
																		resource="${formdet}">
																		<g:message code="default.button.edit.label"
																			default="Edit" />
																	</g:link>
																	<g:if
																		test="${formdet?.paymentInfoId?.paymentId == null}">
																		<g:link class="btn green" action="makePayment"
																			resource="${formdet}">
																			<g:message code="default.button.Pay Now.label"
																				default="Pay Now" />
																		</g:link>
																	</g:if>
																	<input type="hidden" name="formId">
																</fieldset>
															</g:form>


														</div>
													</div>
												</div>
												--%>
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
	</script>
</body>

</html>