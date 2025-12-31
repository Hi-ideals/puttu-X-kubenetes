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
<!-- END THEME LAYOUT STYLES -->
<link rel="shortcut icon" href="assets1/global/img/Kvfsu.png" />
</head>

<style type="text/css">
@media print {
	#printPageButton {
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

<!-- END HEAD -->

<body class="page-container-bg-solid" id="printableArea">
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

												
<div style="display: flex; justify-content: center;">
  <img class="img1" src="assets1/layouts/layout3/img/logo2.png" style="width: 15%;">
</div>

							<div  style="text-align: center !important; font-size: 24px;">
							<b>KARNATAKA VETERINARY, ANIMAL AND FISHERIES SCIENCES UNIVERSITY, NANDINAGAR, BIDAR.</b>				
							</div>
							<div  style="text-align: center !important; font-size: 22px;">
							<b>APPLICATION FORM FOR RECRUITMENT OF TEACHING POSTS OF ASSISTANT PROFESSOR, ASSOCIATE PROFESSOR AND PROFESSOR  </b>
						    </div>
						    
						    <table class="table table-bordered">
				
																<tr>
																	<td class="left strong"><b>Application No</b></td>
																	<td class="left">
																		<b>${formDetailInstance?.apllicationNo}</b>
																	</td>
																	<td><b>Picture</b></td>
																	<td>
																		<a href="${createLink(controller:'formDetail', action:'viewimg', id:formDetailInstance?.picture?.id)}"
																				download> <img
																				src="${createLink(controller:'formDetail', action:'viewimg', id:formDetailInstance?.picture?.id)}"
																				alt="Image" class="img-responsive" onerror="this.onerror=null;this.src='assets1/global/img/pdf.png';"
																				style="width: 200px; height: 200px; border: 5px double black;">
																			</a>	
																								
																		</td>															

																</tr>
																			<tr>
																	<td class="left strong"><b>First Name</b></td>
																	<td class="left">
																		${formDetailInstance?.firstName}
																	</td>
																	<td class="left strong"><b>Last Name</b></td>
																	<td class="left">
																		${formDetailInstance?.lastName}
																	</td>

																</tr>
																<tr>
																	<td class="left strong"><b>Post applied</b></td>
																	<td class="left">${formDetailInstance?.appliyingPost}
																	</td>
																	<td class="left strong"><b>Subject of specialization</b></td>
																	<td class="left">${formDetailInstance?.appliyingSub}
																	</td>

																</tr>
																								<tr>
																	<td class="left strong"><b>Advertisement No. & Date</b></td>
																	<td class="left"></td>
																	<td class="left strong"></td>
																	<td class="left">
																	</td>

																</tr>
																</table>
												
												<div class="portlet box blue">

														<div class="portlet-title">
														<div  style="text-align: center !important; font-size: 24px;">
															<b>Personal Information / ವಯಕ್ತಿಕ ಮಾಹಿತಿ</b>
														</div>
													</div>
													<div class="portlet-body">
														<div class="table-responsive">
															<table class="table table-bordered">

																<tr>
																	<td class="left strong"><b>Application No</b></td>
																	<td class="left">
																		${formDetailInstance?.apllicationNo}
																	</td>
																	<td></td>
																	<td>
																			
																								
																		</td>															

																</tr>
																
																<tr>
																	<td class="left strong"><b>Applying For Post</b></td>
																	<td class="left">${formDetailInstance?.appliyingPost}
																	</td>
																	<td class="left strong"><b>Applying For Subject</b></td>
																	<td class="left">${formDetailInstance?.appliyingSub}
																	</td>

																</tr>
																
																<tr>
																	<td class="left strong"><b>First Name</b></td>
																	<td class="left">
																		${formDetailInstance?.firstName}
																	</td>
																	<td class="left strong"><b>Last Name</b></td>
																	<td class="left">
																		${formDetailInstance?.lastName}
																	</td>

																</tr>
																<tr>
																	<td class="left strong"><b>Father Name</b></td>
																	<td class="left">
																		${formDetailInstance?.fName}
																	</td>
																	<td class="left strong"><b>Mother Name</b></td>
																	<td class="left">
																		${formDetailInstance?.mName}
																	</td>

																</tr>
																<tr>
																	<td class="left strong"><b>Gender</b></td>
																	<td class="left">
																		${formDetailInstance?.gender}
																	</td>
																	<td class="left strong"><b>Date of
																											Birth (mm-dd-yyyy)</b></td>
																									<td class="left"><g:formatDate
																											date="${formDetailInstance.dob}"
																											format="mm-dd-yyyy" /></td>

																</tr>
																<tr>
																	<td class="left strong"><b>Email Id</b></td>
																	<td class="left">
																		${formDetailInstance?.email}
																	</td>
																	<td class="left strong"><b>Mobile Number</b></td>
																	<td class="left">
																		${formDetailInstance?.phoneNumber}
																	</td>

																</tr>
																<tr>
																	<td class="left strong"><b>House No</b></td>
																	<td class="left">
																		${formDetailInstance?.hNo}
																	</td>
																	<td class="left strong"><b>Street</b></td>
																	<td class="left">
																		${formDetailInstance?.street}
																	</td>

																</tr>
																<tr>
																	<td class="left strong"><b>Village</b></td>
																	<td class="left">
																		${formDetailInstance?.village}
																	</td>
																	<td class="left strong"><b>Taluka</b></td>
																	<td class="left">
																		${formDetailInstance?.taluka}
																	</td>

																</tr>
																<tr>
																	<td class="left strong"><b>District</b></td>
																	<td class="left">
																		${formDetailInstance?.district}
																	</td>
																	<td class="left strong"><b>State</b></td>
																	<td class="left">
																		${formDetailInstance?.state}
																	</td>

																</tr>
																<tr>
																	<td class="left strong"><b>PinCode</b></td>
																	<td class="left">
																		${formDetailInstance?.pinCode}
																	</td>
																	<td class="left strong"><b>Nationality</b></td>
																	<td class="left">
																		${formDetailInstance?.country}
																	</td>

																</tr>
																<tr>
																									<td class="left strong"><b>Social
																											Category</b></td>
																									<td class="left">
																										${formDetailInstance?.socialcategory}
																									</td>
																									<td class="left strong"><b>RD No
																											</b></td>
																									<td class="left">
																										${formDetailInstance?.rdno}
																									</td>
																			
																								</tr>

																								<tr>
																														
																									<td class="left strong"><b>Sub-Caste</b></td>
																									<td class="left">
																										${formDetailInstance?.subcast}
																									</td>
																								
																									<td class="left strong"><b>Religion</b></td>
																									<td class="left">
																										${formDetailInstance?.religion}
																									</td>
																									
																								</tr>

																								<tr>
																								<td class="left strong"><b>KVC No</b></td>
																									<td class="left">
																										${formDetailInstance?.kvcNo}
																									</td>
																								
																									<td class="left strong"><b>KVC
																											Validity Date</b></td>
																									<td class="left"><g:formatDate
																											date="${formDetailInstance.fvcDate}"
																											format="dd-MM-yyyy" /></td>
																								

																								</tr>

																								<tr>
																									<td class="left strong"><b>Do you have
																											NET Certificate?</b></td>
																									<td class="left">
																										${formDetailInstance?.neteducation}
																									</td>
																									<td class="left strong"><b>Age</b></td>
																									<td class="left">
																										${formDetailInstance?.age}
																									</td>
																					
																								</tr>

																								<tr>
																												<td class="left strong"><b>Are you
																											claiming Age Relaxation</b></td>
																									<td class="left">
																										${formDetailInstance?.ageRelax}
																									</td>
																								
																									<td class="left strong"><b>Age
																											Relaxation Category</b></td>
																									<td class="left">
																										${formDetailInstance?.ageCat}
																									</td>


																								</tr>
																
															</table>
														</div>
													</div>
												</div>
												
												<div class="portlet box blue">
														<div class="portlet-title">
															<div style="text-align: center !important;font-size: 24px;">
																<b>Special Quotas / ವಿಶೇಷ ಕೋಟಾಗಳು</b>
															</div>
														</div>
													
													<div class="portlet-body">
														<div class="table-responsive">
															<table class="table table-bordered">

																<tr>
																		<td class="left strong"><b>Woman</b></td>
																		<td class="left">
																			${formDetailInstance?.woman}
																		</td>
																		<td class="left strong"><b>Rural (1st to 10th Std)</b></td>
																		<td class="left">
																			${formDetailInstance?.ruralstdy}
																		</td>

																</tr>
																<tr>
																		<td class="left strong"><b>Ex-Servicemen</b></td>
																		<td class="left">
																			${formDetailInstance?.exServiceMan}
																		</td>
																		<td class="left strong"><b>Kannada Medium</b></td>
																		<td class="left">${formDetailInstance?.kannadaMedium}</td>

																</tr>
																<tr>
																		
																		<td class="left strong"><b>Person
																			with Disability (PWD)</b></td>
																		<td class="left">
																			${formDetailInstance?.pwd}
																		</td>
																		
																			<td class="left strong"><b>Kalyana-Karnataka (371J)</b></td>
																		<td class="left">
																			${formDetailInstance?.j371}
																		</td>
																		
																</tr>
																<tr>
															
																		
																		<td class="left strong"><b>Kalyana-Karnataka (371J)Issue Date</b></td>
																	<td class="left"><g:formatDate
																			date="${formDetailInstance.hkIssueDate}"
																			format="dd-MM-yyyy" /></td>
																		
																<td class="left strong"><b>Kalyana-Karnataka (371J) RD NO.</b></td>
																		<td class="left">
																			${formDetailInstance?.hkRDNO}
																		</td>
																		
																</tr>
																
																
															</table>
														</div>
													</div>
												</div>


												<h3
													class="form-section caption-subject font-blue bold uppercase"
													style="TEXT-ALIGN: center !important;">ACADEMIC
													QUALIFICATIONS</h3>


												<div class="portlet box blue">
													<div class="portlet-title">
														<div style="text-align: center !important;font-size: 24px;">
															<b>Secondary Education Board(X/SSLC) / ಪ್ರೌಢ ಶಿಕ್ಷಣ
																ಮಂಡಳಿ(X/SSLC)</b>
														</div>
													</div>
													<div class="portlet-body">
														<div class="table-responsive">
															<table class="table table-bordered">

																<tr>
																	<td class="left strong"><b>Registration No</b></td>
																	<td class="left">
																		${formDetailInstance?.sslc}
																	</td>
																	<td class="left strong"><b>Obtained Marks</b></td>
																	<td class="left">
																		${formDetailInstance?.obtainedsslc}
																	</td>

																</tr>
																<tr>
																	<td class="left strong"><b>Maximum Marks</b></td>
																	<td class="left">
																		${formDetailInstance?.maximumsslc}
																	</td>
																	<td class="left strong"><b>Percentage of Marks</b></td>
																	<td class="left">
																		${formDetailInstance?.percentagesslc}
																	</td>

																</tr>
																<tr>
																	<td class="left strong"><b>Date of Passing</b></td>
																	<td class="left"><g:formatDate
																			date="${formDetailInstance.sslcyear}"
																			format="dd-MM-yyyy" /></td>
																	<td class="left strong"><b>Board</b></td>
																	<td class="left">
																		${formDetailInstance?.boardUniversitysslc}
																	</td>

																</tr>
																
															</table>
														</div>
													</div>
												</div>


												<div class="portlet box blue">
													<div class="portlet-title">
														<div style="text-align: center !important;font-size: 24px;">
															<b>Pre-university Education Board (XII) / ಪೂರ್ವ
																ವಿಶ್ವವಿದ್ಯಾಲಯ ಶಿಕ್ಷಣ ಮಂಡಳಿ (XII)</b>
														</div>
													</div>
													<div class="portlet-body">
														<div class="table-responsive">
															<table class="table table-bordered">

																<tr>
																	<td class="left strong"><b>Registration No</b></td>
																	<td class="left">
																		${formDetailInstance?.puc}
																	</td>
																	<td class="left strong"><b>Obtained Marks</b></td>
																	<td class="left">
																		${formDetailInstance?.obtainedpuc}
																	</td>

																</tr>
																<tr>
																	<td class="left strong"><b>Maximum Marks</b></td>
																	<td class="left">
																		${formDetailInstance?.maximumpuc}
																	</td>
																	<td class="left strong"><b>Percentage of Marks</b></td>
																	<td class="left">
																		${formDetailInstance?.percentagepuc}
																	</td>

																</tr>
																<tr>
																	<td class="left strong"><b>Date of Passing</b></td>
																	<td class="left"><g:formatDate
																			date="${formDetailInstance.pucyear}"
																			format="dd-MM-yyyy" /></td>
																	<td class="left strong"><b>Board</b></td>
																	<td class="left">
																		${formDetailInstance?.boardUniversitypuc}
																	</td>

																</tr>
															</table>
														</div>
													</div>
												</div>
												
												<div class="portlet box blue">
													<div class="portlet-title">
														<div style="text-align: center !important;font-size: 24px;">
															<b>Kannada Lnaguage / ಕನ್ನಡ ಭಾಷೆ</b>
														</div>
													</div>
													<div class="portlet-body">
														<div class="table-responsive">
															<table class="table table-bordered">
                                                                   <tr>
																	
																	<td class="left strong"><b>Have you studied Kannada in SSLC/PUC(X/XII)</b></td>
																	<td class="left">
																		${formDetailInstance?.kannadaLanguage}
																	</td>
																	<td class="left strong"><b>Have you passed KPSC departmental Kannada Language Exam</b></td>
																	<td class="left">
																		${formDetailInstance?.kpsckannadaexam}
																	</td>

																</tr>
															</table>
														</div>
													</div>
												</div>
												



												<div class="portlet box blue">
													<div class="portlet-title">
														<div style="text-align: center !important;font-size: 24px;">
															<b>Bachelor's Degree / ಸ್ನಾತಕೋತ್ತರ ಪದವಿ</b>
														</div>
													</div>
													<div class="portlet-body">
														<div class="table-responsive">
															<table class="table table-bordered">

																<tr>
																	<td class="left strong"><b>Degree Name</b></td>
																	<td class="left">
																		${formDetailInstance?.degreeNameBachelors}
																	</td>
																	<td class="left strong"><b>Registration No</b></td>
																	<td class="left">
																		${formDetailInstance?.bachelorsDegree}
																	</td>

																</tr>
																<tr>
																	<td class="left strong"><b>Percentage of Marks</b></td>
																	<td class="left">
																		${formDetailInstance?.percentagebachelorsDegree}
																	</td>
																	<td class="left strong"><b>Date of Passing</b></td>
																	<td class="left"><g:formatDate
																			date="${formDetailInstance.bachelorsDegreeyear}"
																			format="dd-MM-yyyy" /></td>

																</tr>
																<tr>
																	<td class="left strong"><b>University</b></td>
																	<td class="left">
																		${formDetailInstance?.boardUniversitybachelorsDegree}
																	</td>


																</tr>
															</table>
														</div>
													</div>
												</div>


                                             <g:if test="${formDetailInstance?.mastersDegree != ""}">
												<div class="portlet box blue">
														<div class="portlet-title">
															<div style="text-align: center !important;font-size: 24px;">
																<b>Master's Degree / ಸ್ನಾತಕೋತ್ತರ ಪದವಿ</b>
															</div>
														</div>
													
													<div class="portlet-body">
														<div class="table-responsive">
															<table class="table table-bordered">

																<tr>
																	<g:if test="${formDetailInstance?.subjectMaster != ""}">
																		<td class="left strong"><b>Subject /
																				Specialization</b></td>
																		<td class="left">
																			${formDetailInstance?.subjectMaster}
																		</td>
																	</g:if>
																	<g:if test="${formDetailInstance?.mastersDegree != ""}">
																		<td class="left strong"><b>Registration No</b></td>
																		<td class="left">
																			${formDetailInstance?.mastersDegree}
																		</td>
																	</g:if>

																</tr>
																<tr>
																	<g:if
																		test="${formDetailInstance?.percentagemastersDegree != ""}">
																		<td class="left strong"><b>Percentage of
																				Marks</b></td>
																		<td class="left">
																			${formDetailInstance?.percentagemastersDegree}
																		</td>
																	</g:if>
																	<g:if
																		test="${formDetailInstance.mastersDegreeyear != null}">
																		<td class="left strong"><b>Date of Passing</b></td>
																		<td class="left"><g:formatDate
																				date="${formDetailInstance.mastersDegreeyear}"
																				format="dd-MM-yyyy" /></td>
																	</g:if>

																</tr>
																<tr>
																	<g:if
																		test="${formDetailInstance?.boardUniversitymastersDegree != ""}">
																		<td class="left strong"><b>University</b></td>
																		<td class="left">
																			${formDetailInstance?.boardUniversitymastersDegree}
																		</td>
																	</g:if>
																</tr>
															</table>
														</div>
													</div>
												</div>
												</g:if>
												
												<g:if test="${formDetailInstance?.pHD != ""}">
												<div class="portlet box blue">
													
														<div class="portlet-title">
															<div style="text-align: center !important;font-size: 24px;">
																<b>Ph.d/ ಪಿಎಚ್.ಡಿ</b>
															</div>
														</div>
													
													<div class="portlet-body">
														<div class="table-responsive">
															<table class="table table-bordered">
																<tr>
																	<g:if test="${formDetailInstance?.pHD != ""}">
																		<td class="left strong"><b>Registration No</b></td>
																		<td class="left">
																			${formDetailInstance?.pHD}
																		</td>
																	</g:if>
																	<g:if
																			test="${formDetailInstance?.percentagepHD != ""}">
																		<td class="left strong"><b>Percentage of Marks</b></td>
																		<td class="left">
																			${formDetailInstance?.percentagepHD}
																		</td>
																	</g:if>

																</tr>
																<tr>
																	<g:if test="${formDetailInstance?.pHDSubject != ""}">
																		<td class="left strong"><b>PhD Subject</b></td>
																		<td class="left">
																			${formDetailInstance?.pHDSubject}
																		</td>
																	</g:if>
																	<g:if test="${formDetailInstance.pHDyear != null}">
																		<td class="left strong"><b>Date of Passing</b></td>
																		<td class="left"><g:formatDate date="${formDetailInstance.pHDyear}"
																							format="dd-MM-yyyy" /></td>
																	</g:if>

																</tr>
																<tr>
																	<g:if
																		test="${formDetailInstance?.boardUniversitypHD != ""}">
																		<td class="left strong"><b>University</b></td>
																		<td class="left">
																			${formDetailInstance?.boardUniversitypHD}
																		</td>
																	</g:if>
																</tr>
															</table>
														</div>
													</div>
												</div>
                                            </g:if>
                                            
                                            
                                            
                                            
                                         
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
												
												
												<%--
                                        
                                            
                                            
                                            
                                            
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
												
												
												--%><div class="portlet box blue">
														<div class="portlet-title">
															<div style="text-align: center !important;font-size: 24px;">
																<b>Achievements In Sports & Cultural / NCC / NSS / Scouts & Guides Activities </b>
															</div>
														</div>
														<g:each in="${formDetailInstance?.achievements1?}"
																	var="loc221" status="l">
													<g:if test="${loc221?.typeAchievement || loc221?.particularsEvent || loc221?.periodDuration || loc221?.level  != null}">
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
																		<td class="left strong"><b>Level</b></td>
																		<td class="left">	${loc221?.level}</td>

																</tr>
																
															</table>
														</div>
													</div>
													</g:if> 
													</g:each>
												</div>
												
												
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
												
												
												
												<div class="portlet box blue">
														<div class="portlet-title">
															<div style="text-align: center !important;font-size: 24px;">
																<b>Workshops/Trainings / ಕಾರ್ಯಾಗಾರಗಳು / ತರಬೇತಿಗಳು</b>
															</div>
														</div>
														  <g:each in="${formDetailInstance?.wshop?}"
																var="locs11" status="l">
													<g:if test="${locs11?.particulars3 || locs11?.level3 || locs11?.year3 || locs11?.details3 || locs11?.type10  != null}">
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
												</div><%--
                                            

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
												</div>--%>



												





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
																		<td class="left">${loc31?.dateOfLeaving}
																		</td>

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
												
											



                                                  <div class="portlet box blue">
														<div class="portlet-title">
															<div style="text-align: center !important;font-size: 24px;">
																<b>Scientific Publication / ವೈಜ್ಞಾನಿಕ ಪ್ರಕಟಣೆ</b>
															</div>
														</div>
													<g:each in="${formDetailInstance?.sp}" var="loc"
																status="l">
													<g:if test="${loc?.particulars || loc?.titlesPapers || loc?.publisher  || types != null}">
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



                                                <div class="portlet box blue">
														<div class="portlet-title">
															<div style="text-align: center !important;font-size: 24px;">
																<b>Upload Document / ಡಾಕ್ಯುಮೆಂಟ್ ಅನ್ನು ಅಪ್ಲೋಡ್ ಮಾಡಿ</b>
															</div>
														</div>
													<div class="portlet-body">
														<div class="table-responsive">
															<table class="table table-bordered">
																<tr><g:if test="${formDetailInstance?.picture?.id != null}">
																		<td class="left strong"><b>Upload Picture</b></td>
																		<td class="left">
																			<a
																				href="${createLink(controller:'formDetail', action:'viewimg', id:formDetailInstance?.picture?.id)}"
																				download> <img
																				src="${createLink(controller:'formDetail', action:'viewimg', id:formDetailInstance?.picture?.id)}"
																				alt="Image" class="img-responsive" onerror="this.onerror=null;this.src='assets1/global/img/pdf.png';"
																				style="width: 100px; height: 100px; border: 5px double black;">
																			</a>
																		</td></g:if>
																		<g:if test="${formDetailInstance?.signature?.id != null}">
																		<td class="left strong"><b>Upload
																			Signature</b></td>
																		<td class="left">
																			<a
																				href="${createLink(controller:'formDetail', action:'viewimg', id:formDetailInstance?.signature?.id)}"
																				download> <img
																				src="${createLink(controller:'formDetail', action:'viewimg', id:formDetailInstance?.signature?.id)}"
																				alt="Image" class="img-responsive" onerror="this.onerror=null;this.src='assets1/global/img/pdf.png';"
																				style="width: 100px; height: 100px; border: 5px double black;"></a>
																		</td></g:if>

																</tr>
																<tr><g:if test="${formDetailInstance?.sslcMarksSheet?.id != null}">
																		<td class="left strong"><b>Upload SSLC(X) Marks Sheet</b></td>
																		<td class="left">
																			<a
																				href="${createLink(controller:'formDetail', action:'viewimg', id:formDetailInstance?.sslcMarksSheet?.id)}"
																				download> <img
																				src="${createLink(controller:'formDetail', action:'viewimg', id:formDetailInstance?.sslcMarksSheet?.id)}"
																				alt="Image" class="img-responsive" onerror="this.onerror=null;this.src='assets1/global/img/pdf.png';"
																				style="width: 100px; height: 100px; border: 5px double black;">
																			</a>
																		</td></g:if>
																		<g:if test="${formDetailInstance?.pucMarksSheet?.id != null}">
																		<td class="left strong"><b>Upload PUC(XII) Marks Sheet</b></td>
																		<td class="left"><a
																				href="${createLink(controller:'formDetail', action:'viewimg', id:formDetailInstance?.pucMarksSheet?.id)}"
																				download> <img
																				src="${createLink(controller:'formDetail', action:'viewimg', id:formDetailInstance?.pucMarksSheet?.id)}"
																				alt="Image" class="img-responsive" onerror="this.onerror=null;this.src='assets1/global/img/pdf.png';"
																				style="width: 100px; height: 100px; border: 5px double black;"></a></td></g:if>

																</tr>
																
																<tr><g:if test="${formDetailInstance?.bachelorsMarksSheet?.id != null}">
																		<td class="left strong"><b>Upload Bachelor's Final Year Marks Sheet</b></td>
																		<td class="left">
																			<a
																				href="${createLink(controller:'formDetail', action:'viewimg', id:formDetailInstance?.bachelorsMarksSheet?.id)}"
																				download> <img
																				src="${createLink(controller:'formDetail', action:'viewimg', id:formDetailInstance?.bachelorsMarksSheet?.id)}"
																				alt="Image" class="img-responsive" onerror="this.onerror=null;this.src='assets1/global/img/pdf.png';"
																				style="width: 100px; height: 100px; border: 5px double black;">
																			</a>
																		</td></g:if>
																		
																		<g:if test="${formDetailInstance?.ugPDC?.id != null}">
																		<td class="left strong"><b>Upload Bachelor's Provisional Degree Certificate</b></td>
																		<td class="left">
																			<a
																				href="${createLink(controller:'formDetail', action:'viewimg', id:formDetailInstance?.ugPDC?.id)}"
																				download> <img
																				src="${createLink(controller:'formDetail', action:'viewimg', id:formDetailInstance?.ugPDC?.id)}"
																				alt="Image" class="img-responsive" onerror="this.onerror=null;this.src='assets1/global/img/pdf.png';"
																				style="width: 100px; height: 100px; border: 5px double black;">
																			</a>
																		</td></g:if>
																		
																		</tr>
																		<tr>
																		
																		<g:if test="${formDetailInstance?.masterMarksSheet?.id != null}">
																		<td class="left strong"><b>Upload Master's Final Year Marks Sheet</b></td>
																		<td class="left"><a
																				href="${createLink(controller:'formDetail', action:'viewimg', id:formDetailInstance?.masterMarksSheet?.id)}"
																				download> <img
																				src="${createLink(controller:'formDetail', action:'viewimg', id:formDetailInstance?.masterMarksSheet?.id)}"
																				alt="Image" class="img-responsive" onerror="this.onerror=null;this.src='assets1/global/img/pdf.png';"
																				style="width: 100px; height: 100px; border: 5px double black;"></a></td></g:if>
																				
																				<g:if test="${formDetailInstance?.pgPDC?.id != null}">
																		<td class="left strong"><b>Upload Master's Provisional Degree Certificate</b></td>
																		<td class="left"><a
																				href="${createLink(controller:'formDetail', action:'viewimg', id:formDetailInstance?.pgPDC?.id)}"
																				download> <img
																				src="${createLink(controller:'formDetail', action:'viewimg', id:formDetailInstance?.pgPDC?.id)}"
																				alt="Image" class="img-responsive" onerror="this.onerror=null;this.src='assets1/global/img/pdf.png';"
																				style="width: 100px; height: 100px; border: 5px double black;"></a></td></g:if>
																				

																</tr>
																
																<tr><g:if test="${formDetailInstance?.phDCertificate?.id != null}">
																		<td class="left strong"><b>Upload PhD Certificate</b></td>
																		<td class="left">
																			<a
																				href="${createLink(controller:'formDetail', action:'viewimg', id:formDetailInstance?.phDCertificate?.id)}"
																				download> <img
																				src="${createLink(controller:'formDetail', action:'viewimg', id:formDetailInstance?.phDCertificate?.id)}"
																				alt="Image" class="img-responsive" onerror="this.onerror=null;this.src='assets1/global/img/pdf.png';"
																				style="width: 100px; height: 100px; border: 5px double black;">
																			</a>
																		</td></g:if>
																		
																		<g:if test="${formDetailInstance?.phdPDc?.id != null}">
																		<td class="left strong"><b>Upload PhD Provisional Degree Certificate</b></td>
																		<td class="left">
																			<a
																				href="${createLink(controller:'formDetail', action:'viewimg', id:formDetailInstance?.phdPDc?.id)}"
																				download> <img
																				src="${createLink(controller:'formDetail', action:'viewimg', id:formDetailInstance?.phdPDc?.id)}"
																				alt="Image" class="img-responsive" onerror="this.onerror=null;this.src='assets1/global/img/pdf.png';"
																				style="width: 100px; height: 100px; border: 5px double black;">
																			</a>
																		</td></g:if>
																		</tr>
																		
																		<tr>
																		<g:if test="${formDetailInstance?.nETCertificate?.id != null}">
																		<td class="left strong"><b>Upload NET Certificate</b></td>
																		<td class="left"><a
																				href="${createLink(controller:'formDetail', action:'viewimg', id:formDetailInstance?.nETCertificate?.id)}"
																				download> <img
																				src="${createLink(controller:'formDetail', action:'viewimg', id:formDetailInstance?.nETCertificate?.id)}"
																				alt="Image" class="img-responsive" onerror="this.onerror=null;this.src='assets1/global/img/pdf.png';"
																				style="width: 100px; height: 100px; border: 5px double black;"></a></td></g:if> 
																				
																		<g:if test="${formDetailInstance?.experienceCertificate?.id != null}">
																		<td class="left strong"><b>Upload Experience Certificate</b></td>
																		<td class="left">	<a
																				href="${createLink(controller:'formDetail', action:'viewimg', id:formDetailInstance?.experienceCertificate?.id)}"
																				download> <img
																				src="${createLink(controller:'formDetail', action:'viewimg', id:formDetailInstance?.experienceCertificate?.id)}"
																				alt="Image" class="img-responsive" onerror="this.onerror=null;this.src='assets1/global/img/pdf.png';"
																				style="width: 100px; height: 100px; border: 5px double black;"></a></td></g:if>

															

																</tr>
																
																<tr><g:if test="${formDetailInstance?.casteIncomeCertificate?.id != null}">
																		<td class="left strong"><b>Upload Caste Income Certificate</b></td>
																		<td class="left">
																			<a
																				href="${createLink(controller:'formDetail', action:'viewimg', id:formDetailInstance?.casteIncomeCertificate?.id)}"
																				download> <img
																				src="${createLink(controller:'formDetail', action:'viewimg', id:formDetailInstance?.casteIncomeCertificate?.id)}"
																				alt="Image" class="img-responsive" onerror="this.onerror=null;this.src='assets1/global/img/pdf.png';"
																				style="width: 100px; height: 100px; border: 5px double black;">
																			</a>
																		</td></g:if>
																		<g:if test="${formDetailInstance?.ruralCertificate?.id != null}">
																		<td class="left strong"><b>Upload Rural Certificate</b></td>
																		<td class="left"><a
																				href="${createLink(controller:'formDetail', action:'viewimg', id:formDetailInstance?.ruralCertificate?.id)}"
																				download> <img
																				src="${createLink(controller:'formDetail', action:'viewimg', id:formDetailInstance?.ruralCertificate?.id)}"
																				alt="Image" class="img-responsive" onerror="this.onerror=null;this.src='assets1/global/img/pdf.png';"
																				style="width: 100px; height: 100px; border: 5px double black;"></a></td></g:if>

																</tr>
																
																<tr><g:if test="${formDetailInstance?.exServicemenCertificate?.id != null}">
																		<td class="left strong"><b> Upload Ex-servicemen Certificate </b></td>
																		<td class="left">
																			<a
																				href="${createLink(controller:'formDetail', action:'viewimg', id:formDetailInstance?.exServicemenCertificate?.id)}"
																				download> <img
																				src="${createLink(controller:'formDetail', action:'viewimg', id:formDetailInstance?.exServicemenCertificate?.id)}"
																				alt="Image" class="img-responsive" onerror="this.onerror=null;this.src='assets1/global/img/pdf.png';"
																				style="width: 100px; height: 100px; border: 5px double black;">
																			</a>
																		</td></g:if>
																			<g:if test="${formDetailInstance?.kannadaMediumCertificate?.id != null}">
																		<td class="left strong"><b>Upload Kannada Medium Certificate</b></td>
																		<td class="left"><a
																				href="${createLink(controller:'formDetail', action:'viewimg', id:formDetailInstance?.kannadaMediumCertificate?.id)}"
																				download> <img
																				src="${createLink(controller:'formDetail', action:'viewimg', id:formDetailInstance?.kannadaMediumCertificate?.id)}"
																				alt="Image" class="img-responsive" onerror="this.onerror=null;this.src='assets1/global/img/pdf.png';"
																				style="width: 100px; height: 100px; border: 5px double black;"></a></td></g:if>

																</tr>
																
																<tr><g:if test="${formDetailInstance?.ageRelax1?.id != null}">
																		<td class="left strong"><b>Upload Age Relaxation
					                                                                                 Category Certificate Physically Handicap / In-Service</b></td>
																		<td class="left">
																			<a
																				href="${createLink(controller:'formDetail', action:'viewimg', id:formDetailInstance?.ageRelax1?.id)}"
																				download> <img
																				src="${createLink(controller:'formDetail', action:'viewimg', id:formDetailInstance?.ageRelax1?.id)}"
																				alt="Image" class="img-responsive" onerror="this.onerror=null;this.src='assets1/global/img/pdf.png';"
																				style="width: 100px; height: 100px; border: 5px double black;">
																			</a>
																		</td>
																		</g:if>
																		</tr>
																
																<tr>
																		<g:if test="${formDetailInstance?.kpsckannadaCertificate?.id != null}">
																		<td class="left strong"><b>Upload Kannada Language Certificate</b></td>
																		<td class="left"><a
																				href="${createLink(controller:'formDetail', action:'viewimg', id:formDetailInstance?.kpsckannadaCertificate?.id)}"
																				download> <img
																				src="${createLink(controller:'formDetail', action:'viewimg', id:formDetailInstance?.kpsckannadaCertificate?.id)}"
																				alt="Image" class="img-responsive" onerror="this.onerror=null;this.src='assets1/global/img/pdf.png';"
																				style="width: 100px; height: 100px; border: 5px double black;"></a></td></g:if>

																</tr>
																
																<tr><g:if test="${formDetailInstance?.kalyanaKarnatakaCertificate?.id != null}">
																		<td class="left strong"><b>Upload Kalyana-Karnataka (371J) Certificate</b></td>
																		<td class="left">
																			<a
																				href="${createLink(controller:'formDetail', action:'viewimg', id:formDetailInstance?.kalyanaKarnatakaCertificate?.id)}"
																				download> <img
																				src="${createLink(controller:'formDetail', action:'viewimg', id:formDetailInstance?.kalyanaKarnatakaCertificate?.id)}"
																				alt="Image" class="img-responsive" onerror="this.onerror=null;this.src='assets1/global/img/pdf.png';"
																				style="width: 100px; height: 100px; border: 5px double black;">
																			</a>
																		</td></g:if>
																		<g:if test="${formDetailInstance?.personwithDisabilityCertificate?.id != null}">
																		<td class="left strong"><b>Upload Person with Disability (PWD) Certificate</b></td>
																		<td class="left">	<a
																				href="${createLink(controller:'formDetail', action:'viewimg', id:formDetailInstance?.personwithDisabilityCertificate?.id)}"
																				download> <img
																				src="${createLink(controller:'formDetail', action:'viewimg', id:formDetailInstance?.personwithDisabilityCertificate?.id)}"
																				alt="Image" class="img-responsive" onerror="this.onerror=null;this.src='assets1/global/img/pdf.png';"
																				style="width: 100px; height: 100px; border: 5px double black;"></a></td></g:if>

																</tr>
																
																<tr><g:if test="${formDetailInstance?.kVCCertificate?.id != null}">
																		<td class="left strong"><b>Upload KVC Certificate front Page</b></td>
																		<td class="left">
																			<a
																				href="${createLink(controller:'formDetail', action:'viewimg', id:formDetailInstance?.kVCCertificate?.id)}"
																				download> <img
																				src="${createLink(controller:'formDetail', action:'viewimg', id:formDetailInstance?.kVCCertificate?.id)}"
																				alt="Image" class="img-responsive" onerror="this.onerror=null;this.src='assets1/global/img/pdf.png';"
																				style="width: 100px; height: 100px; border: 5px double black;">
																			</a>
																		</td></g:if>
																		
																		<g:if test="${formDetailInstance?.kvc2?.id != null}">
																		<td class="left strong"><b>Upload KVC Certificate Back Page</b></td>
																		<td class="left">
																			<a
																				href="${createLink(controller:'formDetail', action:'viewimg', id:formDetailInstance?.kvc2?.id)}"
																				download> <img
																				src="${createLink(controller:'formDetail', action:'viewimg', id:formDetailInstance?.kvc2?.id)}"
																				alt="Image" class="img-responsive" onerror="this.onerror=null;this.src='assets1/global/img/pdf.png';"
																				style="width: 100px; height: 100px; border: 5px double black;">
																			</a>
																		</td></g:if>
																		
																		</tr>
															</table>
														</div>
													</div>
												</div>





                                              <div class="portlet box blue">
														<div class="portlet-title">
															<div style="text-align: center !important;font-size: 24px;">
																<b>Additional Documents / ಹೆಚ್ಚುವರಿ ದಾಖಲೆಗಳು</b>
															</div>
														</div>
													<div class="portlet-body">
														<div class="table-responsive">
															<table class="table table-bordered">
																<%--<tr><g:if test="${formDetailInstance?.uploade1?.id != null}">
																		<td class="left strong"><b>One</b></td>
																		<td class="left">
																			<a
																				href="${createLink(controller:'formDetail', action:'viewimg', id:formDetailInstance?.uploade1?.id)}"
																				download> <img
																				src="${createLink(controller:'formDetail', action:'viewimg', id:formDetailInstance?.uploade1?.id)}"
																				alt="Image" class="img-responsive"
																				style="width: 100px; height: 100px; border: 5px double black;">
																			</a>
																		</td></g:if>
																		<g:if test="${formDetailInstance?.uploade2?.id != null}">
																		<td class="left strong"><b>Two</b></td>
																		<td class="left">
																			<a
																				href="${createLink(controller:'formDetail', action:'viewimg', id:formDetailInstance?.uploade2?.id)}"
																				download> <img
																				src="${createLink(controller:'formDetail', action:'viewimg', id:formDetailInstance?.uploade2?.id)}"
																				alt="Image" class="img-responsive"
																				style="width: 100px; height: 100px; border: 5px double black;"></a>
																		</td></g:if>
																		<g:if test="${formDetailInstance?.uploade3?.id != null}">
																		<td class="left strong"><b>Three</b></td>
																		<td class="left">
																			<a
																				href="${createLink(controller:'formDetail', action:'viewimg', id:formDetailInstance?.uploade3?.id)}"
																				download> <img
																				src="${createLink(controller:'formDetail', action:'viewimg', id:formDetailInstance?.uploade3?.id)}"
																				alt="Image" class="img-responsive"
																				style="width: 100px; height: 100px; border: 5px double black;">
																			</a>
																		</td></g:if>
																		<g:if test="${formDetailInstance?.uploade4?.id != null}">
																		<td class="left strong"><b>Four</b></td>
																		<td class="left"><a
																				href="${createLink(controller:'formDetail', action:'viewimg', id:formDetailInstance?.uploade4?.id)}"
																				download> <img
																				src="${createLink(controller:'formDetail', action:'viewimg', id:formDetailInstance?.uploade4?.id)}"
																				alt="Image" class="img-responsive"
																				style="width: 100px; height: 100px; border: 5px double black;"></a></td></g:if>

																</tr>
																
																<tr><g:if test="${formDetailInstance?.uploade5?.id != null}">
																		<td class="left strong"><b>Five</b></td>
																		<td class="left">
																			<a
																				href="${createLink(controller:'formDetail', action:'viewimg', id:formDetailInstance?.uploade5?.id)}"
																				download> <img
																				src="${createLink(controller:'formDetail', action:'viewimg', id:formDetailInstance?.uploade5?.id)}"
																				alt="Image" class="img-responsive"
																				style="width: 100px; height: 100px; border: 5px double black;">
																			</a>
																		</td></g:if>
																		<g:if test="${formDetailInstance?.uploade6?.id != null}">
																		<td class="left strong"><b>Six</b></td>
																		<td class="left"><a
																				href="${createLink(controller:'formDetail', action:'viewimg', id:formDetailInstance?.uploade6?.id)}"
																				download> <img
																				src="${createLink(controller:'formDetail', action:'viewimg', id:formDetailInstance?.uploade6?.id)}"
																				alt="Image" class="img-responsive"
																				style="width: 100px; height: 100px; border: 5px double black;"></a></td></g:if>
																				<g:if test="${formDetailInstance?.uploade7?.id != null}">
																		<td class="left strong"><b>Seven</b></td>
																		<td class="left">
																		<a
																				href="${createLink(controller:'formDetail', action:'viewimg', id:formDetailInstance?.uploade7?.id)}"
																				download> <img
																				src="${createLink(controller:'formDetail', action:'viewimg', id:formDetailInstance?.uploade7?.id)}"
																				alt="Image" class="img-responsive"
																				style="width: 100px; height: 100px; border: 5px double black;">
																			</a>
																		</td></g:if>
																	<g:if test="${formDetailInstance?.uploade8?.id != null}">
																		<td class="left strong"><b>Eight</b></td>
																		<td class="left"><a
																				href="${createLink(controller:'formDetail', action:'viewimg', id:formDetailInstance?.uploade8?.id)}"
																				download> <img
																				src="${createLink(controller:'formDetail', action:'viewimg', id:formDetailInstance?.uploade8?.id)}"
																				alt="Image" class="img-responsive"
																				style="width: 100px; height: 100px; border: 5px double black;"></a></td></g:if>

																</tr>
																
																
																
																<tr><g:if test="${formDetailInstance?.uploade9?.id != null}">
																		<td class="left strong"><b>Nine</b></td>
																		<td class="left">
																			<a
																				href="${createLink(controller:'formDetail', action:'viewimg', id:formDetailInstance?.uploade9?.id)}"
																				download> <img
																				src="${createLink(controller:'formDetail', action:'viewimg', id:formDetailInstance?.uploade9?.id)}"
																				alt="Image" class="img-responsive"
																				style="width: 100px; height: 100px; border: 5px double black;">
																			</a>
																		</td></g:if>
																		--%>
																		<tr><g:if test="${formDetailInstance?.uploade10?.id != null}">
																		<td class="left strong"><b>Zip file for all documents</b></td>
																		<td class="left"><a
																				href="${createLink(controller:'formDetail', action:'viewimg', id:formDetailInstance?.uploade10?.id)}"
																				download> <img
																				src="${createLink(controller:'formDetail', action:'viewimg', id:formDetailInstance?.uploade10?.id)}"
																				alt="Image" class="img-responsive" onerror="this.onerror=null;this.src='assets1/global/img/pdf.png';"
																				style="width: 100px; height: 100px; border: 5px double black;"></a></td></g:if>

																</tr>
																
															</table>
														</div>
													</div>
												</div>




												<div class="portlet-body form">
													<!-- BEGIN FORM-->
													<form class="form-horizontal">
														<div class="form-body">
                                                          <g:if test="${formDetailInstance?.paymentInfoId?.transactionId == null }">
														<div class="form-actions">
															<div class="row">
																<div class="col-md-offset-3 col-md-9">
																	<g:form
																		url="[resource:formDetailInstance, action:'delete']"
																		method="DELETE">
																		<fieldset class="buttons">
																			<%--<g:link class="btn green" action="edit"
																				resource="${formDetailInstance}">
																				<g:message code="default.button.edit.label"
																					default="Edit" />
																			</g:link>

																			--%><g:link class="btn yellow" action="makePayment" 
																				resource="${formDetailInstance}"><i class="fa fa-credit-card"></i>
																				<g:message code="default.button.Pay Now.label" 
																					default="Pay Now" />
																			</g:link>
																			
												                           <input type="hidden" name="formId">
																		</fieldset>
																	</g:form>


																</div> 
															</div>
														
														</div>
													</g:if>
													<g:else>
													<a onclick="printDiv('printableArea')" class="btn btn blue btn-primary" id="printPageButton"><i class="fa fa-print"></i>Take Print</a>	
													</g:else>
													</div>
													</form>
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