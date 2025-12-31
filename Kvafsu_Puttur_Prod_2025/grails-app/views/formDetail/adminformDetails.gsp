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
																			<i class="icon-settings font-red"></i> <span
																				class="caption-subject bold uppercase">List
																				of Teaching Applications</span>
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
																					<th>Payment Status</th>
																					<th>Application No.</th>
																					<th>Appliying for Post</th>
																					<th>Applying For Subject</th>
																					<th>First Name</th>
																					<th>Last Name</th>
																					<th>Father Name</th>
																					<th>Mother Name</th>
																					<th>Gender</th>
																					<th>Date Of Birth (mm-dd-yyyy)</th>
																					<th>Email Id</th>
																					<th>Mobile Number</th>
																					<th>House No</th>
																					<th>Street
																						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
																					<th>Village</th>
																					<th>Taluka</th>
																					<th>District</th>
																					<th>State</th>
																					<th>PinCode</th>
																					<th>Nationality&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
																					<th>Social Category</th>
																					<th>RD No</th>
																					<th>Subcast</th>
																					<th>Religion</th>
																					<th>KVC No</th>
																					<th>KVC Validity Date</th>
																					<th>Do you have NET Certificate?</th>
																					<th>Age</th>
																					<th>Are you claiming Age Relaxation</th>
																					<th>Age Relaxation Category</th>


																					<th>SSLC Registration No</th>
																					<th>Obtained Marks</th>
																					<th>Maximum Marks</th>
																					<th>Percentage of Marks</th>
																					<th>Date of Passing</th>
																					<th>Board</th>




																					<th>PUC Registration No</th>
																					<th>Obtained Marks</th>
																					<th>Maximum Marks</th>
																					<th>Percentage of MArks</th>
																					<th>Date of Passing</th>
																					<th>Board</th>

																					<th>Have you passed in Kannada Language</th>
																					<th>Have you passed KPSC departmental Kannada
																						Language Exam</th>

																					<th>Degree Name</th>
																					<th>Bachelors Degree Registration No</th>
																					<th>Percentage of Marks</th>
																					<th>Date of Passing Bachelors Degree</th>
																					<th>University</th>

																					<th>Subject / Specification</th>
																					<th>Masters Degree Registration No</th>
																					<th>Percentage of Marks</th>
																					<th>Date of Passing MastersDegree</th>
																					<th>University</th>

																					<th>PhD Registration No</th>
																					<th>PhD Subject</th>
																					<th>Percentage of Marks</th>
																					<th>Date of Passing</th>
																					<th>University</th>

																					<th>Additional Qualifications</th>

																					<%--<th>Languages</th>

																					--%>
																					<th>Achievements in Sports & Cultural / NCC /
																						NSS / Scouts & Guides Activities</th>


																					<th>Special Attainment in Academic Field</th>


																					<th>Patent / Technology / App Developed</th>



																					<th>Externally Funded Projects</th>



																					<th>Workshops / Trainings</th>



																					<th>Confidential Reports</th>



																					<th>Woman</th>
																					<th>Rural Study</th>
																					<th>Ex-Serviceman</th>
																					<th>Kannada Medium</th>
																					<th>Person with Disability Certificate(PWD)</th>
																					<th>Kalyana Karnataka Certificate(371J)</th>
																					<th>Kalyana Karnataka Certificate(371J) Rd No.</th>
																					<th>Kalyana Karnataka Certificate(371J) Issue
																						Date</th>



																					<th>Experience</th>


																					<th>Scientific Publication</th>



																					<th>Medal / Awards / Recognition</th>




																					<th>Actions
																						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
																				</tr>
																			</thead>
																			<tbody>


																				<g:each in="${formdet?.reverse()}" status="i"
																					var="formDetailInstance">
																					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
																						<td>
																							${i+1}
																						</td>
																						<g:if
																							test="${formDetailInstance?.paymentInfoId?.status != "success" }">
																							<td><g:link action="makePayment"
																									resource="${formDetailInstance}">
																									<span class="label label-sm label-danger"><b>Payment
																											Pending</b></span>
																								</g:link><br> <br> <g:link
																									controller="formDetail"
																									resource="${formDetailInstance}"
																									action="manualPayment">
																									<span class="label label-sm label-info"><b>Manual
																											Payment</b></span>
																								</g:link></td>
																						</g:if>
																						<g:else>
																							<td><g:link action="report"
																									resource="${formDetailInstance}">
																									<span class="label label-sm label-success"><b>Payment
																											Successful! </b></span>
																								</g:link></td>
																						</g:else>

																						<td>${fieldValue(bean: formDetailInstance, field: "apllicationNo")}

																						</td>
																						<td>
																							${fieldValue(bean: formDetailInstance, field: "appliyingPost")}

																						</td>
																						<td>
																							${fieldValue(bean: formDetailInstance, field: "appliyingSub")}

																						</td>
																						<td>
																							${fieldValue(bean: formDetailInstance, field: "firstName")}
																						</td>
																						<td>
																							${fieldValue(bean: formDetailInstance, field: "lastName")}
																						</td>
																						<td>
																							${fieldValue(bean: formDetailInstance, field: "fName")}
																						</td>
																						<td>
																							${fieldValue(bean: formDetailInstance, field: "mName")}
																						</td>

																						<td>
																							${fieldValue(bean: formDetailInstance, field: "gender")}
																						</td>
																						<td><g:formatDate
																								date="${formDetailInstance?.dob}"
																								format="mm-dd-yyyy" /></td>
																						<td>
																							${fieldValue(bean: formDetailInstance, field: "email")}

																						</td>
																						<td>
																							${fieldValue(bean: formDetailInstance, field: "phoneNumber")}

																						</td>
																						<td>
																							${fieldValue(bean: formDetailInstance, field: "hNo")}
																						</td>
																						<td>
																							${fieldValue(bean: formDetailInstance, field: "street")}
																						</td>
																						<td>
																							${fieldValue(bean: formDetailInstance, field: "village")}
																						</td>

																						<td>
																							${fieldValue(bean: formDetailInstance, field: "taluka")}
																						</td>

																						<td>
																							${fieldValue(bean: formDetailInstance, field: "district")}

																						</td>
																						<td>
																							${fieldValue(bean: formDetailInstance, field: "state")}

																						</td>
																						<td>
																							${fieldValue(bean: formDetailInstance, field: "pinCode")}
																						</td>
																						<td>
																							${fieldValue(bean: formDetailInstance, field: "country")}
																						</td>
																						<td>
																							${fieldValue(bean: formDetailInstance, field: "socialcategory")}
																						</td>
																						<td>
																							${fieldValue(bean: formDetailInstance, field: "rdno")}
																						</td>
																						<td>
																							${fieldValue(bean: formDetailInstance, field: "subcast")}
																						</td>

																						<td>
																							${fieldValue(bean: formDetailInstance, field: "religion")}
																						</td>
																						<td>${fieldValue(bean: formDetailInstance, field: "kvcNo")}

																						</td>
																						
																						<td> <g:formatDate
																								date="${formDetailInstance?.fvcDate}" format="dd-mm-yyyy" /></td>
																								
																								<td>
																							${fieldValue(bean: formDetailInstance, field: "neteducation")}

																						</td>
																						
																						<td>
																							${fieldValue(bean: formDetailInstance, field: "age")}
																						</td>
																						
																						<td>
																						${fieldValue(bean: formDetailInstance, field: "ageRelax")}
                                                                                        </td>
																						<td>
																							${fieldValue(bean: formDetailInstance, field: "ageCat")}

																						</td>
																								
																						<td>
																						${fieldValue(bean: formDetailInstance, field: "sslc")}
																						</td>
																						<td>
																							${fieldValue(bean: formDetailInstance, field: "obtainedsslc")}
																						</td>
																						<td>
																							${fieldValue(bean: formDetailInstance, field: "maximumsslc")}
																						</td>
																					
																						<td>
																							${fieldValue(bean: formDetailInstance, field: "percentagesslc")}
																						</td>
																						<td><g:formatDate
																								date="${formDetailInstance?.sslcyear}"
																								format="dd-MM-yyyy" /></td>
																								<td>
																							${fieldValue(bean: formDetailInstance, field: "boardUniversitysslc")}

																						</td>
																						
																						
																						<td>
																							${fieldValue(bean: formDetailInstance, field: "puc")}

																						</td>
																						<td>${fieldValue(bean: formDetailInstance, field: "obtainedpuc")}
																						</td>
																						<td>
																							${fieldValue(bean: formDetailInstance, field: "maximumpuc")}
																						</td>
																						<td>
																							${fieldValue(bean: formDetailInstance, field: "percentagepuc")}
																						</td>
																					
																						
																						<td><g:formatDate
																								date="${formDetailInstance?.pucyear}" format="dd-MM-yyyy" /></td>
																						<td>
																							${fieldValue(bean: formDetailInstance, field: "boardUniversitypuc")}

																						</td>
																						<td>
																							${fieldValue(bean: formDetailInstance, field: "kannadaLanguage")}
																						</td>
																						<td>
																							${fieldValue(bean: formDetailInstance, field: "kpsckannadaexam")}
																						</td>
																						<td>
																							${fieldValue(bean: formDetailInstance, field: "degreeNameBachelors")}

																						</td>
																						<td>${fieldValue(bean: formDetailInstance, field: "bachelorsDegree")}
																						</td>
																						<td>
																							${fieldValue(bean: formDetailInstance, field: "percentagebachelorsDegree")}
																						</td>
																						
																						<td><g:formatDate
																								date="${formDetailInstance?.bachelorsDegreeyear}" format="dd-MM-yyyy" /></td>
																						<td>
																							${fieldValue(bean: formDetailInstance, field: "boardUniversitybachelorsDegree")}

																						</td>
																						
																						<td>
																							${fieldValue(bean: formDetailInstance, field: "subjectMaster")}

																						</td>
																						<td>${fieldValue(bean: formDetailInstance, field: "mastersDegree")}
																						</td>
																						<td>
																							${fieldValue(bean: formDetailInstance, field: "percentagemastersDegree")}
																						</td>
																						<td><g:formatDate
																								date="${formDetailInstance?.mastersDegreeyear}"
																								format="dd-MM-yyyy" /></td>
																						<td>
																							${fieldValue(bean: formDetailInstance, field: "boardUniversitymastersDegree")}
																						</td>
																						
																					
																						<td>
																							${fieldValue(bean: formDetailInstance, field: "pHD")}
																						</td>
																					
																						<td>
																							${fieldValue(bean: formDetailInstance, field: "pHDSubject")}

																						</td>
																						<td>
																							${fieldValue(bean: formDetailInstance, field: "percentagepHD")}

																						</td>
																						<td><g:formatDate
																								date="${formDetailInstance?.pHDyear}" format="dd-MM-yyyy" /></td>
																						<td>
																						${fieldValue(bean: formDetailInstance, field: "boardUniversitypHD")}
																						</td>
																						
																						
																						
																						
																						<td>
																						    <a class="btn btn-outline btn-circle btn-sm purple" data-target="#feeDetails1_${i}" data-toggle="modal">
																						    <g:message code="default.button.show.label" default="View Additional Qualifications"  /></a>
																						</td>
																						
																						
																						
																					<td>
																						    <a class="btn btn-outline btn-circle btn-sm purple" data-target="#feeDetails3_${i}" data-toggle="modal">
																						    <g:message code="default.button.show.label" default="View Achievements"  /></a>
																						</td>
																						
																						<td>
																						    <a class="btn btn-outline btn-circle btn-sm purple" data-target="#feeDetails4_${i}" data-toggle="modal">
																						    <g:message code="default.button.show.label" default="View special Attainment"  /></a>
																						</td>
																						
																						
																						<td>
																						    <a class="btn btn-outline btn-circle btn-sm purple" data-target="#feeDetails5_${i}" data-toggle="modal">
																						    <g:message code="default.button.show.label" default="View Patent / Technology / App Developed"  /></a>
																						</td>
																						
																						<td>
																						    <a class="btn btn-outline btn-circle btn-sm purple" data-target="#feeDetails6_${i}" data-toggle="modal">
																						    <g:message code="default.button.show.label" default="View Externally Funded Projects"  /></a>
																						</td>
																						
																						<td>
																						    <a class="btn btn-outline btn-circle btn-sm purple" data-target="#feeDetails7_${i}" data-toggle="modal">
																						    <g:message code="default.button.show.label" default="View Workshops / Trainings"  /></a>
																						</td>
																						
																						<td>
																						    <a class="btn btn-outline btn-circle btn-sm purple" data-target="#feeDetails8_${i}" data-toggle="modal">
																						    <g:message code="default.button.show.label" default="View Confidential Reports"  /></a>
																						</td>
																						
																						
																						
																						
																						<td>
																							${fieldValue(bean: formDetailInstance, field: "woman")}
																						</td>
																						
																						<td>
																						${fieldValue(bean: formDetailInstance, field: "ruralstdy")}
																						</td>
																						<td>
																							${fieldValue(bean: formDetailInstance, field: "exServiceMan")}
																						</td>
																						
																						<td> 
																						${fieldValue(bean: formDetailInstance, field: "kannadaMedium")}
																						</td>
																						
																						<td>
																							${fieldValue(bean: formDetailInstance, field: "pwd")}
																						</td>
																						
																						<td> 
																						${fieldValue(bean: formDetailInstance, field: "j371")}
																						</td>
																						<td>
																							${fieldValue(bean: formDetailInstance, field: "hkRDNO")}
																						</td>
																						
																						<td><g:formatDate
																								date="${formDetailInstance?.hkIssueDate}"
																								format="dd-MM-yyyy" /></td>
																								
																						
																					    <td>
																						    <a class="btn btn-outline btn-circle btn-sm purple" data-target="#feeDetails9_${i}" data-toggle="modal">
																						    <g:message code="default.button.show.label" default="View Experience"  /></a>
																						</td>
																						
																						  <td>
																						    <a class="btn btn-outline btn-circle btn-sm purple" data-target="#feeDetails10_${i}" data-toggle="modal">
																						    <g:message code="default.button.show.label" default="View Scientific Publication"  /></a>
																						</td>
																						
																						
																						 <td>
																						    <a class="btn btn-outline btn-circle btn-sm purple" data-target="#feeDetails11_${i}" data-toggle="modal">
																						    <g:message code="default.button.show.label" default="View Medal / Awards / Recognition"  /></a>
																						</td>
																						
																						<td><g:formRemote name="kk"
																								url="[action:'adminEdit']" update="update1">
																								<g:hiddenField name="userListid"
																									value="${formDetailInstance?.id}" />
																								
														
																									<sec:ifAnyGranted roles="ROLE_ADMIN">
																										<%--<g:link class="btn btn-transparent yellow btn-outline btn-circle btn-sm active" action="edit"
																											resource="${formDetailInstance}">
																											<g:message code="default.button.edit.label"
																												default="Edit" />
																										</g:link>
																									--%></sec:ifAnyGranted>
																									
																									<g:link class="btn btn-transparent green btn-outline btn-circle btn-sm active" action="report"
																											resource="${formDetailInstance}">
																											<g:message code="default.button.Report Print.label"
																												default="Application Status" />
																										</g:link>
																									
																										<g:link class="btn btn-transparent red btn-outline btn-circle btn-sm active"  action="show"
																											resource="${formDetailInstance}" target="_blank">
																										<g:message code="default.button.show.label"
																											default="Details of the Application"  />
																											</g:link>
																									
																									
																							</g:formRemote>
																							</td>
																					</tr>
																					
																		</g:each>
																	</tbody>
																</table>
																</table>
															</div>
														</div>
													</div>
													
													
					
															<div class="modal modal-wide fade" id="manualla_${i}"
																tabindex="-1">
																<div class="modal-dialog">

																	<!-- Modal content-->
																	<div class="modal-content">
																		<div class="modal-header">
																		<g:formRemote name="kk"
																				url="[action:'manualPayment']" update="update1">
																				<g:hiddenField name="userListid"
																					value="${usersInstance?.id}" />
																				<br>
																				<div>
																					<g:submitButton name="Edit" class="btn btn-primary" />
																				</div>
																			</g:formRemote>
																			<button type="button" class="close" value="${PaymentInfoInstance}"
																				data-dismiss="modal">&times;</button>
																			<h4 class="modal-title" style="text-align: center;font-weight: 900;color: red;">Manual Payment</h4>
																		</div>
																		<div class="modal-body">
																		
																		
		<div class="row">
		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label col-md-3">payment Id<span
					style="color: red">*</span></label>
					<div class="col-md-9">
						<input type="text" class="form-control"
							name="paymentId" value=""
							placeholder="MOJO0000D00Q00000000">
					</div>
			</div>
		</div>
		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label col-md-3">Transaction Id<span
					style="color: red">*</span></label>
					<div class="col-md-9">
						<input  type="text" class="form-control"
							name="transactionId" value=""
							placeholder="00000000">
					</div>
			</div>
		</div>
		</div>
		<div class="row">
		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label col-md-3">payment Request Id<span
					style="color: red">*</span></label>
					<div class="col-md-9">
						<input  type="text" class="form-control"
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
						<input type="text" class="form-control"
							name="userId" value=""
							placeholder="User Id">
					</div>
			</div>
		</div>
		</div>
		<div class="row">
		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label col-md-3">Created Date<span
					style="color: red">*</span></label>
					<div class="col-md-9">
						<input type="text" class="form-control"
							name="createddate" value=""
							placeholder="0000-00-00">
					</div>
			</div>
		</div>
		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label col-md-3">Total Amount<span
					style="color: red">*</span></label>
					<div class="col-md-9">
						<input type="text" class="form-control"
							name="totalamount" value=""
							placeholder="Total Amount Paid">
					</div>
			</div>
		</div>
		</div>
		<div class="row">
		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label col-md-3">Pay Method<span
					style="color: red">*</span></label>
					<div class="col-md-9">
						<input type="text" class="form-control"
							name="paymethod" value=""
							placeholder="Pay Method">
					</div>
			</div>
		</div>
		
		
		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label col-md-3">Status<span
					style="color: red">*</span></label>
					<div class="col-md-9">
						<input type="text" class="form-control"
							name="status" value=""
							placeholder="Status">
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
						<input type="text" class="form-control"
							name="terms" value=""
							placeholder="Terms">
					</div>
			</div>
		</div>
			<div class="col-md-6">
			<div class="form-group">
				<label class="control-label col-md-3">Application Number<span
					style="color: red">*</span></label>
					<div class="col-md-9">
						<input type="text" class="form-control"
							name="apllicationNo" value=""
							placeholder="apllicationNo">
					</div>
			</div>
		</div>
	
		</div>
		
		
		<div class="modal-footer">
		<button type="button" class="btn btn-success" controller="formDetail" action="Manualthankyou" >Submit</button>
		</div>
												</div>
											</div>
										</div>
									</div>
								
													
													
													 <%--------ADDITIONAL QUALIFICATIONS -----------%>	
													
													<g:each in="${formdet?.reverse()}" status="i"
																					var="formDetailInstance">
															<div class="modal modal-wide fade" id="feeDetails1_${i}"
																tabindex="-1">
																<div class="modal-dialog">

																	<!-- Modal content-->
																	<div class="modal-content">
																		<div class="modal-header">
																			<button type="button" class="close"
																				data-dismiss="modal">&times;</button>
																			<h4 class="modal-title" style="text-align: center;font-weight: 900;color: red;">Details of the Teaching Applications / ಬೋಧನಾ ಅರ್ಜಿಗಳ ವಿವರಗಳು</h4>
																		</div>
																		<div class="modal-body">
													<div class="portlet box blue">
														<div class="portlet-title">
															<div style="text-align: center !important;font-size: 24px;">
																<b>Additional Qualifications/ ಹೆಚ್ಚುವರಿ ಅರ್ಹತೆಗಳು</b>
															</div>
														</div>
														   <g:each in="${formDetailInstance?.otherDegrees1?}"
																	var="loc11" status="l">
													<g:if test="${loc11?.nameofDegree || loc11?.additionalType ||loc11?.otherDiploma || loc11?.percentageotherDiploma || loc11.otherDiplomayear || loc11?.boardUniversityotherDiploma  != null}">
													<div class="portlet-body">
														<div class="table-responsive">
															<table class="table table-bordered">
																<tr>
																		<td class="left strong"><b>Degree Name</b></td>
																		<td class="left">
																		${loc11?.nameofDegree}
																		</td>
																		<td class="left strong"><b>Degree Type</b></td>
																		<td class="left">
																			${loc11?.additionalType}
																		</td>

																</tr>
																<tr>
																		<td class="left strong"><b>Registration No</b></td>
																		<td class="left">
																			${loc11?.otherDiploma}
																		</td>
																		<td class="left strong"><b>Percentage Of Marks</b></td>
																		<td class="left">${loc11?.percentageotherDiploma}</td>

																</tr>
																<tr>
																		<td class="left strong"><b>Date of Passing</b></td>
																		<td class="left">
																			${loc11.otherDiplomayear}
																		</td>
																		<td class="left strong"><b>University</b></td>
																		<td class="left">
																			${loc11?.boardUniversityotherDiploma}
																		</td>
																</tr>
															</table>
														</div>
													</div>
													</g:if>
													 </g:each>
												</div>
												</div>
											</div>
										</div>
									</div>
								</g:each>
								
								
								
								
								<%--------Languages -----------%><%--	
								
								<g:each in="${formdet?.reverse()}" status="i" var="formDetailInstance">
															<div class="modal modal-wide fade" id="feeDetails2_${i}"
																tabindex="-1">
																<div class="modal-dialog">

																	<!-- Modal content-->
																	<div class="modal-content">
																		<div class="modal-header">
																			<button type="button" class="close"
																				data-dismiss="modal">&times;</button>
																			<h4 class="modal-title" style="text-align: center;font-weight: 900;color: red;">Details of the Teaching Applications / ಬೋಧನಾ ಅರ್ಜಿಗಳ ವಿವರಗಳು</h4>
																		</div>
																		<div class="modal-body">
													<div class="portlet box blue">
														<div class="portlet-title">
															<div style="text-align: center !important;font-size: 24px;">
																<b>Languages/ ಭಾಷೆಗಳು</b>
															</div>
														</div>
														<g:each in="${formDetailInstance?.languages1?}"
																	var="loc21" status="l">
													<g:if test="${loc21?.language || loc21?.reading || loc21?.writing || loc21?.writing || loc21?.speaking  || loc21?.examinationpassed || loc21?.examDetails != null}">
													<div class="portlet-body">
														<div class="table-responsive">
															<table class="table table-bordered">
																<tr>
																		<td class="left strong"><b>Language</b></td>
																		<td class="left">
																		${loc21?.language}
																		</td>
																		<td class="left strong"><b>Reading</b></td>
																		<td class="left">
																			${loc21?.reading}
																		</td>

																</tr>
																<tr>
																		<td class="left strong"><b>Writing</b></td>
																		<td class="left">
																			${loc21?.writing}
																		</td>
																		<td class="left strong"><b>Speaking</b></td>
																		<td class="left">${loc21?.speaking}</td>

																</tr>
																<tr>
																		<td class="left strong"><b>Examination Passed</b></td>
																		<td class="left">${loc21?.examinationpassed}
																		</td>
																		<td class="left strong"><b>Exam Details</b></td>
																		<td class="left">
																			${loc21?.examDetails}
																		</td>
																</tr>
															</table>
														</div>
													</div>
													</g:if> 
													</g:each>
												</div>
												</div>
											</div>
										</div>
									</div>
								</g:each>
								
								
								
								 --%><%--------ACHIEVEMENTS IN SPORTS & CULTURAL / NCC / NSS / SCOUTS & GUIDES ACTIVITIES --%>	
								
								<g:each in="${formdet?.reverse()}" status="i" var="formDetailInstance">
															<div class="modal modal-wide fade" id="feeDetails3_${i}"
																tabindex="-1">
																<div class="modal-dialog">

																	<!-- Modal content-->
																	<div class="modal-content">
																		<div class="modal-header">
																			<button type="button" class="close"
																				data-dismiss="modal">&times;</button>
																			<h4 class="modal-title" style="text-align: center;font-weight: 900;color: red;">Details of the Teaching Applications / ಬೋಧನಾ ಅರ್ಜಿಗಳ ವಿವರಗಳು</h4>
																		</div>
																		<div class="modal-body">
													<div class="portlet box blue">
														<div class="portlet-title">
															<div style="text-align: center !important;font-size: 24px;">
																<b>Achievements In Sports & Cultural / NCC / NSS / Scouts & Guides Activities </b>
															</div>
														</div>
														<g:each in="${formDetailInstance?.achievements1?}"
																	var="loc221" status="l">
													<g:if
																			test="${loc221?.typeAchievement || loc221?.particularsEvent || loc221?.periodDuration || loc221?.level  != null}">
													<div class="portlet-body">
														<div class="table-responsive">
															<table class="table table-bordered">
																<tr>
																		<td class="left strong"><b>Types</b></td>
																		<td class="left">
																		${loc221?.typeAchievement}
																		</td>
																		<td class="left strong"><b>Particulars/ Event</b></td>
																		<td class="left">
																				${loc221?.particularsEvent}
																		</td>

																</tr>
																<tr>
																		<td class="left strong"><b>Period & Duration</b></td>
																		<td class="left">
																		${loc221?.periodDuration}
																		</td>
																		<td class="left strong"><b>LeveL</b></td>
																		<td class="left">	${loc221?.level}</td>

																</tr>
																
															</table>
														</div>
													</div>
													</g:if> 
													</g:each>
												</div>
												</div>
											</div>
										</div>
									</div>
								</g:each>
													
													
												
								 <%--------SPECIAL ATTAINMENT IN ACADEMIC FIELD --%>					
												
								<g:each in="${formdet?.reverse()}" status="i" var="formDetailInstance">
															<div class="modal modal-wide fade" id="feeDetails4_${i}"
																tabindex="-1">
																<div class="modal-dialog">

																	<!-- Modal content-->
																	<div class="modal-content">
																		<div class="modal-header">
																			<button type="button" class="close"
																				data-dismiss="modal">&times;</button>
																			<h4 class="modal-title" style="text-align: center;font-weight: 900;color: red;">Details of the Teaching Applications / ಬೋಧನಾ ಅರ್ಜಿಗಳ ವಿವರಗಳು</h4>
																		</div>
																		<div class="modal-body">
													<div class="portlet box blue">
														<div class="portlet-title">
															<div style="text-align: center !important;font-size: 24px;">
																<b>Special Attainment In Academic Field / ಶೈಕ್ಷಣಿಕ ಕ್ಷೇತ್ರದಲ್ಲಿ ವಿಶೇಷ ಸಾಧನೆ</b>
															</div>
														</div>
														<g:each in="${formDetailInstance?.specialAttainment1?}"
																var="loc2221" status="l">
													<g:if test="${loc2221?.particular || loc2221?.cadre || loc2221?.year || loc2221?.details  != null}">
													<div class="portlet-body">
														<div class="table-responsive">
															<table class="table table-bordered">
																<tr>
																		<td class="left strong"><b>Particular</b></td>
																		<td class="left">
																		${loc2221?.particular}
																		</td>
																		<td class="left strong"><b>Cadre</b></td>
																		<td class="left">
																				${loc2221?.cadre}
																		</td>

																</tr>
																<tr>
																		<td class="left strong"><b>Year</b></td>
																		<td class="left">
																		${loc2221?.year}
																		</td>
																		<td class="left strong"><b>Details</b></td>
																		<td class="left">${loc2221?.details}</td>

																</tr>
																
															</table>
														</div>
													</div>
													</g:if> 
													</g:each>
												</div>
												</div>
											</div>
										</div>
									</div>
								</g:each>	
								
								
								
								<%--------PATENT / TECHNOLOGY / APP DEVELOPED --%>	
								
								<g:each in="${formdet?.reverse()}" status="i" var="formDetailInstance">
															<div class="modal modal-wide fade" id="feeDetails5_${i}"
																tabindex="-1">
																<div class="modal-dialog">

																	<!-- Modal content-->
																	<div class="modal-content">
																		<div class="modal-header">
																			<button type="button" class="close"
																				data-dismiss="modal">&times;</button>
																			<h4 class="modal-title" style="text-align: center;font-weight: 900;color: red;">Details of the Teaching Applications / ಬೋಧನಾ ಅರ್ಜಿಗಳ ವಿವರಗಳು</h4>
																		</div>
																		<div class="modal-body">
													<div class="portlet box blue">
														<div class="portlet-title">
															<div style="text-align: center !important;font-size: 24px;">
																<b>Patent / Technology / App Developed / ಪೇಟೆಂಟ್ / ತಂತ್ರಜ್ಞಾನ / ಅಪ್ಲಿಕೇಶನ್ ಅಭಿವೃದ್ಧಿಪಡಿಸಲಾಗಿದೆ</b>
															</div>
														</div>
														 <g:each in="${formDetailInstance?.patent1?}"
																var="loc22221" status="l">
														<g:if test="${loc22221?.details1 || loc22221?.year1  != null}">
													<div class="portlet-body">
														<div class="table-responsive">
															<table class="table table-bordered">
																<tr>
																		<td class="left strong"><b>Details</b></td>
																		<td class="left">
																		${loc22221?.details1}
																		</td>
																		<td class="left strong"><b>Year</b></td>
																		<td class="left">
																				${loc22221?.year1}
																		</td>

																</tr>
															</table>
														</div>
													</div>
													</g:if> 
													</g:each>
												</div>
												</div>
											</div>
										</div>
									</div>
								</g:each>	
								
								
								 <%--------EXTERNALLY FUNDED PROJECTS --%>	
								
								<g:each in="${formdet?.reverse()}" status="i" var="formDetailInstance">
															<div class="modal modal-wide fade" id="feeDetails6_${i}"
																tabindex="-1">
																<div class="modal-dialog">

																	<!-- Modal content-->
																	<div class="modal-content">
																		<div class="modal-header">
																			<button type="button" class="close"
																				data-dismiss="modal">&times;</button>
																			<h4 class="modal-title" style="text-align: center;font-weight: 900;color: red;">Details of the Teaching Applications / ಬೋಧನಾ ಅರ್ಜಿಗಳ ವಿವರಗಳು</h4>
																		</div>
																		<div class="modal-body">
													<div class="portlet box blue">
														<div class="portlet-title">
															<div style="text-align: center !important;font-size: 24px;">
																<b>Externally Funded Projects / ಬಾಹ್ಯವಾಗಿ ಅನುದಾನಿತ ಯೋಜನೆಗಳು</b>
															</div>
														</div>
														<g:each in="${formDetailInstance?.fproject?}"
																var="locs1" status="l">
													<g:if test="${locs1?.projectTitle || locs1?.cadre2 || locs1?.details2 || locs1?.projectOutlay  != null}">
													<div class="portlet-body">
														<div class="table-responsive">
															<table class="table table-bordered">
																<tr>
																		<td class="left strong"><b>Project Title</b></td>
																		<td class="left">
																		${locs1?.projectTitle}
																		</td>
																		<td class="left strong"><b>Cadre</b></td>
																		<td class="left">
																				${locs1?.cadre2}
																		</td>

																</tr>
																<tr>
																		<td class="left strong"><b>Details</b></td>
																		<td class="left">
																		${locs1?.details2}
																		</td>
																		<td class="left strong"><b>Project Outlay</b></td>
																		<td class="left">${locs1?.projectOutlay}</td>

																</tr>
																
															</table>
														</div>
													</div>
													</g:if> 
													</g:each>
												</div>
												</div>
											</div>
										</div>
									</div>
								</g:each>				
												
												
								 <%--------WORKSHOPS/TRAININGS --%>
								<g:each in="${formdet?.reverse()}" status="i" var="formDetailInstance">
															<div class="modal modal-wide fade" id="feeDetails7_${i}"
																tabindex="-1">
																<div class="modal-dialog">

																	<!-- Modal content-->
																	<div class="modal-content">
																		<div class="modal-header">
																			<button type="button" class="close"
																				data-dismiss="modal">&times;</button>
																			<h4 class="modal-title" style="text-align: center;font-weight: 900;color: red;">Details of the Teaching Applications / ಬೋಧನಾ ಅರ್ಜಿಗಳ ವಿವರಗಳು</h4>
																		</div>
																		<div class="modal-body">
													<div class="portlet box blue">
														<div class="portlet-title">
															<div style="text-align: center !important;font-size: 24px;">
																<b>Workshops / Trainings / ಕಾರ್ಯಾಗಾರಗಳು / ತರಬೇತಿಗಳು</b>
															</div>
														</div>
														  <g:each in="${formDetailInstance?.wshop?}"
																var="locs11" status="l">
													<g:if test="${locs11?.particulars3 || locs11?.level3 || locs11?.year3 || locs11?.details3 || locs11?.type10 != null}">
													<div class="portlet-body">
														<div class="table-responsive">
															<table class="table table-bordered">
																<tr>
																		<td class="left strong"><b>Particulars</b></td>
																		<td class="left">
																		${locs11?.particulars3}
																		</td>
																		<td class="left strong"><b>Level</b></td>
																		<td class="left">
																				${locs11?.level3}
																		</td>

																</tr>
																<tr>
																		<td class="left strong"><b>Details</b></td>
																		<td class="left">
																		${locs11?.details3}
																		</td>
																		<td class="left strong"><b>Year</b></td>
																		<td class="left">	${locs11?.year3}</td>

																</tr>
																<tr>
																		<td class="left strong"><b>Type</b></td>
																		<td class="left">
																		${locs11?.type10}
																		</td>
																		
																</tr>
																
															</table>
														</div>
													</div>
													</g:if> 
													</g:each>
												</div>
												</div>
											</div>
										</div>
									</div>
								</g:each>	
								
								
								<%--------CONFIDENTIAL REPORTS --%>	
								<g:each in="${formdet?.reverse()}" status="i" var="formDetailInstance">
															<div class="modal modal-wide fade" id="feeDetails8_${i}"
																tabindex="-1">
																<div class="modal-dialog">

																	<!-- Modal content-->
																	<div class="modal-content">
																		<div class="modal-header">
																			<button type="button" class="close"
																				data-dismiss="modal">&times;</button>
																			<h4 class="modal-title" style="text-align: center;font-weight: 900;color: red;">Details of the Teaching Applications / ಬೋಧನಾ ಅರ್ಜಿಗಳ ವಿವರಗಳು</h4>
																		</div>
																		<div class="modal-body">
													<div class="portlet box blue">
														<div class="portlet-title">
															<div style="text-align: center !important;font-size: 24px;">
																<b>Confidential Reports / ಗೌಪ್ಯ ವರದಿಗಳು</b>
															</div>
														</div>
														<g:each in="${formDetailInstance?.creports?}"
																var="locs111" status="l">
														<g:if test="${locs111?.year4 || locs111?.grade   != null}">
													<div class="portlet-body">
														<div class="table-responsive">
															<table class="table table-bordered">
																<tr>
																		<td class="left strong"><b>Year</b></td>
																		<td class="left">
																		${locs111?.year4}
																		</td>
																		<td class="left strong"><b>Grade</b></td>
																		<td class="left">
																				${locs111?.grade}
																		</td>

																</tr>
																<tr>
																		
																		<td class="left strong"><b>Cadre</b></td>
																		<td class="left">
																				${locs111?.cadre6}
																		</td>

																</tr>
															</table>
														</div>
													</div>
													</g:if> 
													</g:each>
												</div>
												</div>
											</div>
										</div>
									</div>
								</g:each>	
								
								
								<%--------EXPERIENCE --%>	
								<g:each in="${formdet?.reverse()}" status="i" var="formDetailInstance">
															<div class="modal modal-wide fade" id="feeDetails9_${i}"
																tabindex="-1">
																<div class="modal-dialog">

																	<!-- Modal content-->
																	<div class="modal-content">
																		<div class="modal-header">
																			<button type="button" class="close"
																				data-dismiss="modal">&times;</button>
																			<h4 class="modal-title" style="text-align: center;font-weight: 900;color: red;">Details of the Teaching Applications / ಬೋಧನಾ ಅರ್ಜಿಗಳ ವಿವರಗಳು</h4>
																		</div>
																		<div class="modal-body">
													<div class="portlet box blue">
														<div class="portlet-title">
															<div style="text-align: center !important;font-size: 24px;">
																<b>Experience / ಅನುಭವ</b>
															</div>
														</div>
														  <g:each in="${formDetailInstance?.experiences1?}"
																var="loc31" status="l">
													<g:if test="${loc31?.workExperience || loc31?.companyName || loc31?.postHeld || loc31?.nameOfTheEmployeer || loc31?.dateOfJoining || loc31?.dateOfLeaving || loc31?.periodOfService || loc31?.reasonOfLeaving || loc31?.basicPay != null}">
													<div class="portlet-body">
														<div class="table-responsive">
															<table class="table table-bordered">
																<tr>
																		<td class="left strong"><b>Work Experience</b></td>
																		<td class="left">
																			${loc31?.workExperience}
																		</td>
																		<td class="left strong"><b>Organization Name</b></td>
																		<td class="left">
																				${loc31?.companyName}
																		</td>

																</tr>
																<tr>
																		<td class="left strong"><b>Post Held</b></td>
																		<td class="left">
																			${loc31?.postHeld}
																		</td>
																		<td class="left strong"><b>Name of the Employer</b></td>
																		<td class="left">${loc31?.nameOfTheEmployeer}</td>

																</tr>
																
																<tr>
																		<td class="left strong"><b>Date of Joining</b></td>
																		<td class="left">
																			${loc31?.dateOfJoining}
																		</td>
																		<td class="left strong"><b>Date of Leaving</b></td>
																		<td class="left">	${loc31?.dateOfLeaving}</td>

																</tr>
																<tr>
																		<td class="left strong"><b>Period of Service</b></td>
																		<td class="left">
																		${loc31?.periodOfService}
																		</td>
																		<td class="left strong"><b>Reason for Leaving</b></td>
																		<td class="left">	${loc31?.reasonOfLeaving}</td>

																</tr>
																<tr>
																		<td class="left strong"><b>Basic Pay</b></td>
																		<td class="left">
																		${loc31?.basicPay}
																		</td>
																		

																</tr>
																
															</table>
														</div>
													</div>
													</g:if> 
													</g:each>
												</div>
												</div>
											</div>
										</div>
									</div>
								</g:each>	
													
												
								
								<%--------SCIENTIFIC PUBLICATION --------%>	
								<g:each in="${formdet?.reverse()}" status="i" var="formDetailInstance">
															<div class="modal modal-wide fade" id="feeDetails10_${i}"
																tabindex="-1">
																<div class="modal-dialog">

																	<!-- Modal content-->
																	<div class="modal-content">
																		<div class="modal-header">
																			<button type="button" class="close"
																				data-dismiss="modal">&times;</button>
																			<h4 class="modal-title" style="text-align: center;font-weight: 900;color: red;">Details of the Teaching Applications / ಬೋಧನಾ ಅರ್ಜಿಗಳ ವಿವರಗಳು</h4>
																		</div>
																		<div class="modal-body">
													<div class="portlet box blue">
														<div class="portlet-title">
															<div style="text-align: center !important;font-size: 24px;">
																<b>Scientific Publication / ವೈಜ್ಞಾನಿಕ ಪ್ರಕಟಣೆ</b>
															</div>
														</div>
													<g:each in="${formDetailInstance?.sp}" var="loc"
																status="l">
													<g:if test="${loc?.particulars || loc?.titlesPapers || loc?.publisher  || loc?.types || loc?.detailsss != null}">
													<div class="portlet-body">
														<div class="table-responsive">
															<table class="table table-bordered">
																<tr>
																		<td class="left strong"><b>Particulars</b></td>
																		<td class="left">
																			${loc?.particulars}
																		</td>
																		<td class="left strong"><b>Titles of the Papers/Books etc</b></td>
																		<td class="left">
																				${loc?.titlesPapers}
																		</td>

																</tr>
																<tr>
																		<td class="left strong"><b>Name of the Journal and year / Publisher</b></td>
																		<td class="left">
																			${loc?.publisher}
																		</td>
																		<td class="left strong"><b>Type</b></td>
																		<td class="left">${loc?.types}</td>

																</tr>
																<tr>
																		
																		<td class="left strong"><b>Details</b></td>
																		<td class="left">${loc?.detailsss}</td>

																</tr>
																
															</table>
														</div>
													</div>
													</g:if> 
													</g:each>
												</div>
												</div>
											</div>
										</div>
									</div>
								</g:each>	
								
								
												
								<%--------MEDALS / AWARDS / RECOGNITION--------%>
								<g:each in="${formdet?.reverse()}" status="i" var="formDetailInstance">
															<div class="modal modal-wide fade" id="feeDetails11_${i}"
																tabindex="-1">
																<div class="modal-dialog">

																	<!-- Modal content-->
																	<div class="modal-content">
																		<div class="modal-header">
																			<button type="button" class="close"
																				data-dismiss="modal">&times;</button>
																			<h4 class="modal-title" style="text-align: center;font-weight: 900;color: red;">Details of the Teaching Applications / ಬೋಧನಾ ಅರ್ಜಿಗಳ ವಿವರಗಳು</h4>
																		</div>
																		<div class="modal-body">
													<div class="portlet box blue">
														<div class="portlet-title">
															<div style="text-align: center !important;font-size: 24px;">
																<b>Special Awards / ವಿಶೇಷ ಪ್ರಶಸ್ತಿಗಳು</b>
															</div>
														</div>
													<g:each in="${formDetailInstance?.specialAwards2?}"
																var="loc111" status="l">
													<g:if test="${loc111?.particularsAwards || loc111?.noofAwards || loc111.awardsYear || loc111?.awardedfor != null}">
													<div class="portlet-body">
														<div class="table-responsive">
															<table class="table table-bordered">
																<tr>
																		<td class="left strong"><b>Particulars</b></td>
																		<td class="left">
																			${loc111?.particularsAwards}
																		</td>
																		<td class="left strong"><b>Number of Awards</b></td>
																		<td class="left">
																				${loc111?.noofAwards}
																		</td>

																</tr>
																<tr>
																		<td class="left strong"><b>Year</b></td>
																		<td class="left">
																				${loc111.awardsYear}
																		</td>
																		<td class="left strong"><b>Awarded for</b></td>
																		<td class="left">	${loc111?.awardedfor}</td>

																</tr>
																
															</table>
														</div>
													</div>
													</g:if> 
													</g:each>
												</div>
												</div>
											</div>
										</div>
									</div>
								</g:each>					
												
													
												
													
													
													
													
													
													
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
					2025 &copy; kvafsu Job Portle By <a target="_blank"
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