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
	width: 600px;
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
<style>
.sticky-icon {
	z-index: 1;
	position: fixed;
	top: 60%;
	right: 0%;
	width: 220px;
	display: flex;
	flex-direction: column;
}

.sticky-icon a {
	transform: translate(160px, 0px);
	border-radius: 50px 0px 0px 50px;
	text-align: left;
	margin: 2px;
	text-decoration: none;
	text-transform: uppercase;
	padding: 10px;
	font-size: 22px;
	font-family: 'Oswald', sans-serif;
	transition: all 0.8s;
}

.sticky-icon a:hover {
	color: #FFF;
	transform: translate(0px, 0px);
}

.sticky-icon a:hover i {
	transform: rotate(360deg);
}
/*.search_icon a:hover i  {
	transform:rotate(360deg);}*/
.Facebook {
	background-color: #2C80D3;
	color: #FFF;
}

.sticky-icon a i {
	background-color: #FFF;
	height: 40px;
	width: 40px;
	color: #000;
	text-align: center;
	line-height: 40px !important;
	border-radius: 50%;
	margin-right: 20px;
	transition: all 0.5s;
}

.sticky-icon a i.fa-phone {
	background-color: #FFF;
	color: #2C80D3;
}

#myBtn {
	height: 50px;
	display: none;
	position: fixed;
	bottom: 20px;
	right: 30px;
	z-index: 99;
	text-align: center;
	padding: 10px;
	text-align: center;
	line-height: 40px !important;
	border: none;
	outline: none;
	background-color: #1e88e5;
	color: white;
	cursor: pointer;
	border-radius: 50%;
}

.fa-arrow-circle-up {
	font-size: 30px;
}

#myBtn:hover {
	background-color: #555;
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
														<g:link controller="superadmin" action="dashboard">
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

													<%--<marquee scrollamount="15" width="100%" direction="left" height="35px" style="font-size: 22px; color:red;"><img src="assets1/layouts/layout3/img/preview.gif" height="40px" width="10%">
                                                   <b>Candidates who belong to Kalyana Karnataka Region can Only apply for the job.</b>
                                                 </marquee>
													
												--%>
												</div>
												<div class="portlet-body form">
													<!-- BEGIN FORM-->
													<g:form
														url="[resource:formDetailInstance, action:'addMoreField']"
														class="form-horizontal" enctype='multipart/form-data'
														id="teach">
														<fieldset class="form">
															<g:render template="addmoreform" />
														</fieldset>


														<div class="form-actions">
															<div class="row">
																<div class="col-md-offset-3 col-md-9">
																	<g:submitButton name="create" class="btn green"
																		style="margin-left:250px"
																		value="${message(code: 'default.button.Submit.label', default: 'Save & Continue')}"
																		id="techingva6" data-toggle="modal"
																		data-target="#exampleModalLong"
																		onclick="return confirm('Please verify all the details before saving, Once Saved details can not be edited.')" />
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
	<%--
	
	<div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" data-keyboard="false"
  data-backdrop="static">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <!-- <h2 class="modal-title" id="exampleModalLongTitle">Terms of Service</h2> 
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>-->
      </div>
      <div class="modal-body" style="text-align: center;">
      <img src="assets1/layouts/layout3/img/check.gif" height="220px" width="50%"><br>
      <i class="fa fa-hand-o-right" style="font-size:22px;color:red;"></i> <b style="font-size:22px;color:blue; font-family: system-ui; line-height: 26px;">Please verify all the details before submitting. After submitting there is No Update/ Edit option</b><br>
      <br>
       <i class="fa fa-hand-o-right" style="font-size:22px;color:red;"></i> <b style="font-size:22px;color:blue; font-family: system-ui; line-height: 26px;">Application Fee can not be refunded</b>
       
      </div>
      <div class="modal-footer">
      
       <button type="button" class="btn btn-alert" data-dismiss="modal" >Close</button>
      </div>
    </div>
  </div>
</div>
	
	
	--%>
	<div class="sticky-icon">
		<a data-target="#Contactnumbers" data-toggle="modal" class="Facebook"><i
			class="fa fa-phone"> </i> <b>ಸಂಪರ್ಕಿಸಿ</b></a>
	</div>

	<div class="modal" id="Contactnumbers" tabindex="-1">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title" style="text-align: center; font-weight: 900; color: red;">Contact / ಸಂಪರ್ಕಿಸಿ</h4>
																		</div>
																		<div class="modal-body" style="text-align: center;">
																		<img src="assets1/layouts/layout3/img/help.png" height="220px" width="60%"><br>
																		<br>
     																   <b style="font-size:30px;color:black; font-family: system-ui; line-height: 26px;">Software related queries Please Call</b><br>
																		    <b style="font-size:32px;color:green; font-family: system-ui; line-height: 26px;">9606912222</b><br/>
       											                         <b style="font-size:30px;color:black; font-family: system-ui; line-height: 26px;">Mail us at</b><br>
																		    <b style="font-size:32px;color:green; font-family: system-ui; line-height: 26px;">recruitmentcell@kvafsu.edu.in</b>
																		
       
																		</div>
																		<div class="modal-footer">
																			<button type="button" class="btn btn-default"
																				data-dismiss="modal">Close</button>
																		</div>
																	</div>
																</div>
															</div>
	
	
	<!-- EXAMPLE MODAL -->
	
	
	
	<div class="modal modal-wide fade" id="doc"
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
																		
																		<img src="assets1/layouts/layout3/img/6.png" height="220px" width="600px" >
																		<div class="modal-footer">
																			<button type="button" class="btn btn-default"
																				data-dismiss="modal">Close</button>
																		</div>
																	</div>
																</div>
															</div>
	
	</div>
	
	
	
	
	
	<!-- new modals -->

				<div class="modal fade"  id="details"
																tabindex="-1">
																<div class="modal-dialog"  style="width:100%;">

																	<!-- Modal content-->
																	<div class="modal-content">
																		<div class="modal-header">
																			<button type="button" class="close"
																				data-dismiss="modal">&times;</button>
																			
																		</div>
																		<div class="modal-body">
																		
													<img src="assets1/layouts/layout3/img/8.png" height="320px" width="100%" >
													<div class="portlet-body">
														
													</div>
												</div>


												

					</div>
																		
																		
														<div class="form-actions">
															<div class="row">
																<div class="col-md-offset-3 col-md-9">
																<g:if test="${formDetailInstance?.paymentInfoId?.transactionId == null }">
																	<g:form
																		url="[resource:formDetailInstance, action:'delete']"
																		method="DELETE">
																		<fieldset class="buttons">
																			<%--<g:link class="btn green" action="edit"
																				resource="${formDetailInstance}">
																				<g:message code="default.button.edit.label"
																					default="Edit" />
																			</g:link>

																			--%>
																			<input type="hidden" name="formId">
																		</fieldset>
																	</g:form>
																	</g:if>
																	<g:else>
														<g:link class="btn btn blue btn-primary" action="show" resource="${formDetailInstance}"><i class="fa fa-print"></i>Take Print</g:link>
													   </g:else>
																	
																</div>
															</div>
														</div>		
																	
																		<div class="modal-footer">
																			<button type="button" class="btn btn-default"
																				data-dismiss="modal">Close</button>
																		</div>
																	</div>
																</div>
															</div>



<!-- new modal2 -->

		<div class="modal fade"  id="details2"
																tabindex="-1">
																<div class="modal-dialog"  style="width:100%;">

																	<!-- Modal content-->
																	<div class="modal-content">
																		<div class="modal-header">
																			<button type="button" class="close"
																				data-dismiss="modal">&times;</button>
																			
																		</div>
																		<div class="modal-body">
																		
													<img src="assets1/layouts/layout3/img/2.png" height="320px" width="100%" >
													<div class="portlet-body">
														
													</div>
												</div>


												

					</div>
																		
																		
														<div class="form-actions">
															<div class="row">
																<div class="col-md-offset-3 col-md-9">
																<g:if test="${formDetailInstance?.paymentInfoId?.transactionId == null }">
																	<g:form
																		url="[resource:formDetailInstance, action:'delete']"
																		method="DELETE">
																		<fieldset class="buttons">
																			<%--<g:link class="btn green" action="edit"
																				resource="${formDetailInstance}">
																				<g:message code="default.button.edit.label"
																					default="Edit" />
																			</g:link>

																			--%>
																			<input type="hidden" name="formId">
																		</fieldset>
																	</g:form>
																	</g:if>
																	<g:else>
														<g:link class="btn btn blue btn-primary" action="show" resource="${formDetailInstance}"><i class="fa fa-print"></i>Take Print</g:link>
													   </g:else>
																	
																</div>
															</div>
														</div>		
																	
																		<div class="modal-footer">
																			<button type="button" class="btn btn-default"
																				data-dismiss="modal">Close</button>
																		</div>
																	</div>
																</div>
															</div>

<!-- new modal3 -->

<div class="modal fade"  id="details3"
																tabindex="-1">
																<div class="modal-dialog"  style="width:100%;">

																	<!-- Modal content-->
																	<div class="modal-content">
																		<div class="modal-header">
																			<button type="button" class="close"
																				data-dismiss="modal">&times;</button>
																			
																		</div>
																		<div class="modal-body">
																		
													<img src="assets1/layouts/layout3/img/1.png" height="320px" width="100%" >
													<div class="portlet-body">
														
													</div>
												</div>


												

					</div>
																		
																		
														<div class="form-actions">
															<div class="row">
																<div class="col-md-offset-3 col-md-9">
																<g:if test="${formDetailInstance?.paymentInfoId?.transactionId == null }">
																	<g:form
																		url="[resource:formDetailInstance, action:'delete']"
																		method="DELETE">
																		<fieldset class="buttons">
																			<%--<g:link class="btn green" action="edit"
																				resource="${formDetailInstance}">
																				<g:message code="default.button.edit.label"
																					default="Edit" />
																			</g:link>

																			--%>
																			<input type="hidden" name="formId">
																		</fieldset>
																	</g:form>
																	</g:if>
																	<g:else>
														<g:link class="btn btn blue btn-primary" action="show" resource="${formDetailInstance}"><i class="fa fa-print"></i>Take Print</g:link>
													   </g:else>
																	
																</div>
															</div>
														</div>		
																	
																		<div class="modal-footer">
																			<button type="button" class="btn btn-default"
																				data-dismiss="modal">Close</button>
																		</div>
																	</div>
																</div>
															</div>


<!-- new modal4 -->


<div class="modal fade"  id="details4"
																tabindex="-1">
																<div class="modal-dialog"  style="width:100%;">

																	<!-- Modal content-->
																	<div class="modal-content">
																		<div class="modal-header">
																			<button type="button" class="close"
																				data-dismiss="modal">&times;</button>
																			
																		</div>
																		<div class="modal-body">
																		
													<img src="assets1/layouts/layout3/img/6.png" height="320px" width="100%" >
													<div class="portlet-body">
														
													</div>
												</div>


												

					</div>
																		
																		
														<div class="form-actions">
															<div class="row">
																<div class="col-md-offset-3 col-md-9">
																<g:if test="${formDetailInstance?.paymentInfoId?.transactionId == null }">
																	<g:form
																		url="[resource:formDetailInstance, action:'delete']"
																		method="DELETE">
																		<fieldset class="buttons">
																			<%--<g:link class="btn green" action="edit"
																				resource="${formDetailInstance}">
																				<g:message code="default.button.edit.label"
																					default="Edit" />
																			</g:link>

																			--%>
																			<input type="hidden" name="formId">
																		</fieldset>
																	</g:form>
																	</g:if>
																	<g:else>
														<g:link class="btn btn blue btn-primary" action="show" resource="${formDetailInstance}"><i class="fa fa-print"></i>Take Print</g:link>
													   </g:else>
																	
																</div>
															</div>
														</div>		
																	
																		<div class="modal-footer">
																			<button type="button" class="btn btn-default"
																				data-dismiss="modal">Close</button>
																		</div>
																	</div>
																</div>
															</div>


<!-- new modals5 -->


<div class="modal fade"  id="details5"
																tabindex="-1">
																<div class="modal-dialog"  style="width:100%;">

																	<!-- Modal content-->
																	<div class="modal-content">
																		<div class="modal-header">
																			<button type="button" class="close"
																				data-dismiss="modal">&times;</button>
																			
																		</div>
																		<div class="modal-body">
																		
													<img src="assets1/layouts/layout3/img/5.png" height="320px" width="100%" >
													<div class="portlet-body">
														
													</div>
												</div>


												

					</div>
																		
																		
														<div class="form-actions">
															<div class="row">
																<div class="col-md-offset-3 col-md-9">
																<g:if test="${formDetailInstance?.paymentInfoId?.transactionId == null }">
																	<g:form
																		url="[resource:formDetailInstance, action:'delete']"
																		method="DELETE">
																		<fieldset class="buttons">
																			<%--<g:link class="btn green" action="edit"
																				resource="${formDetailInstance}">
																				<g:message code="default.button.edit.label"
																					default="Edit" />
																			</g:link>

																			--%>
																			<input type="hidden" name="formId">
																		</fieldset>
																	</g:form>
																	</g:if>
																	<g:else>
														<g:link class="btn btn blue btn-primary" action="show" resource="${formDetailInstance}"><i class="fa fa-print"></i>Take Print</g:link>
													   </g:else>
																	
																</div>
															</div>
														</div>		
																	
																		<div class="modal-footer">
																			<button type="button" class="btn btn-default"
																				data-dismiss="modal">Close</button>
																		</div>
																	</div>
																</div>
															</div>





















												</body>
													
													
	
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
	<%--<script src="js/fromvalidation.js" type="text/javascript"></script>		
	--%><script
		src="assets1/global/plugins/bootstrap-datepicker/js/jquery.ui.datepicker1.js"></script>
	<script src="js/uploadvalidation.js" type="text/javascript"></script>	
	
		<script
		src="assets1/global/plugins/jquery.inputmask.bundle.js"></script>
		
		
	<!-- END THEME LAYOUT SCRIPTS -->
	
	
	
	
		<script>
			$(":input").inputmask();
		</script>
	
	
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

		function hidemodal() {
			$("#exampleModalLong").modal('hide');
		}
	</script>
	
	<script type="text/javascript">
		
	</script>
	
	
	<SCRIPT type="text/javascript">    
	 /*------------------Validation Messgae Script-----------*/ 
	$("#teach :input").each(function(){
        var input = $(this);
        var msg   = input.attr('validate-msg');
        input.on('change invalid input', function(){
            input[0].setCustomValidity('');
            if(!(input[0].validity.tooLong || input[0].validity.tooShort)){
                if (! input[0].validity.valid) {
                    input[0].setCustomValidity(msg);
                }
            }


        });
    });
        </SCRIPT>
	
	<script type="text/javascript">
	 /*------------------Window Back Operation Script-----------*/ 
    window.history.forward();
    function noBack()
    {
        window.history.forward();
    }



   /*------------------Percentage Calculation Script-----------*/ 
    $(function(){    
        $('#pointspossible').on('input', function() {
          calculate();
        });
        $('#pointsgiven').on('input', function() {
         calculate();
        });
        function calculate(){
            var pPos = parseInt($('#pointspossible').val()); 
            var pEarned = parseInt($('#pointsgiven').val());
            var perc="";
            if(isNaN(pPos) || isNaN(pEarned)){
                perc=" ";
               }else{
               perc = ((pEarned/pPos) * 100).toFixed(2);
               }
            
            $('#percentagesslc').val(perc);
        }

    });
    /*------------------Percentage Calculation Script-----------*/ 
    $(function(){    
        $('#pointspossible1').on('input', function() {
          calculate();
        });
        $('#pointsgiven1').on('input', function() {
         calculate();
        });
        function calculate(){
            var pPos = parseInt($('#pointspossible1').val()); 
            var pEarned = parseInt($('#pointsgiven1').val());
            var perc="";
            if(isNaN(pPos) || isNaN(pEarned)){
                perc=" ";
               }else{
               perc = ((pEarned/pPos) * 100).toFixed(2);
               }
            
            $('#percentagepuc').val(perc);
        }

    });


    
</script>

<script type="text/javascript">

$(document).ready(function(){
    $('#appliyingPost').on('change', function() {
      if ( this.value == 'Associate Professor '| this.value == 'Professor')
      {
        $("#phdjob").show();
        return true;
        
      }
      else
      {
        $("#phdjob").hide();
        return false;
      }
    });
});
</script>



	<script>
		$(document).ready(function() {
			let
			defaultDomain = 'exampledomain.net'; // use this to remove later
			let
			input = $("#testInput");
			let
			typed = ""; // keep track of what the user has typed

			// put cursor at start when clicked
			input.click(function() {
				$(this).get(0).setSelectionRange(0, 0);
			})

			input.keydown(function(e) {
				// @ is keycode 192
				if (e.keyCode === 192) {
					// the user has typed @ and you can assume that they want a different domain
					input.val(typed.substring(0, typed.length - 1));
				} else {
					// store the email the user has typed so far, minnus default domain
					typed = input.val().replace(defaultDomain, '');
				}
			})
		})
	</script>
	
	
<script>
	$(document)
			.ready(
					function() {
						
						var wrapper = $(".input_fields_wrap"); //Fields wrapper
						var add_button = $("#add_field_button"); //Add button ID

						var x = 1; //initlal text box count
						$(add_button)
								.on(
										"click",
										function(e) { //on add input button click
											e.preventDefault();
											var tyval = $('#ty').val();
											if (x != 0) { //max input box allowed
												x++; //text box increment
												$('#ty').val(tyval + "," + x)
												$(wrapper)
												.append(
														'<div><div class="row"><div class="col-md-6"><div class="form-group"><label class="control-label col-md-3">Particulars</label><div class="col-md-9"><select class="form-control" name="particulars" value=""><option value="" selected="selected">Select Type</option><option value="Full length Papers published in NAAS rated Scientific Journal">Full length Papers published in NAAS rated Scientific Journal</option><option value="Research Note/Abstracts ">Research Note/Abstracts</option><option value="Full Length Papers">Full Length Papers</option><option value="Short Communication presented">Short Communication presented</option><option value="Books published with ISBM number ">Books published with ISBM number</option><option value="Reasearch/Extension Bulletins">Reasearch/Extension Bulletins</option><option value="Extension Leaflets/Brochures">Extension Leaflets/Brochures</option><option value="Popular Articles ">Popular Articles</option></select><br></div></div></div><div class="col-md-6"><div class="form-group"><label class="control-label col-md-3">Title of the Paper/Book/Journal..etc.</label><div class="col-md-9"><input type="text" maxlength="250" class="form-control" name="titlesPapers "value="${formDetailInstance?.sp?.titlesPapers}"></div></div></div></div><div class="row"><div class="col-md-6"><div class="form-group"><label class="control-label col-md-3">Year</label><div class="col-md-9"><input type="text" class="form-control" name="publisher"value="${formDetailInstance?.sp?.publisher}"></div></div></div><div class="col-md-6"><div class="form-group"><label class="control-label col-md-3">Types</label><div class="col-md-9"><select class="form-control" name="types" value="${formDetailInstance?.sp?.types}"><option value="" selected="selected">Select Type</option><option value="International">International</option><option value="National">National</option><option value="Seminar">Seminar</option><option value="Symposium">Symposium</option><option value="Conference Proceedings">Conference Proceedings</option><option value="Government Departments">Government Departments</option><option value="Training/Teaching Manuals">Training/Teaching Manuals</option><option value="Radio Talks">Radio Talks</option><option value="TV Programmes">TV Programmes</option></select></div></div></div><div class="row"><div class="col-md-6"><div class="form-group"><label class="control-label col-md-3">Details</label><div class="col-md-9"><input type="text" maxlength="250" class="form-control" name="detailsss" placeholder="NAAS Rating / Other Dtails"value="${formDetailInstance?.sp?.detailsss}"></div></div></div></div></div><a href="#" class="remove_field btn red" id="'+x+'">Remove</a></div>'); //add input box
											}
										});

						$(wrapper).on("click", ".remove_field", function(e) { //user click on remove text
							e.preventDefault();

							var y = ($('#ty').val()).split(',');
							var removeItem = this.id;

							y = jQuery.grep(y, function(value) {
								return value != removeItem;
							});
							$('#ty').val(y)

							$(this).parent('div').remove();
							x--;
						})
					});
</script>	
	

<script>
$('body').on('focus',".date-picker", function(){
    $(this).datepicker();
});



	$(document)
			.ready(
					function() {
						
						var wrapper = $(".input_fields_wrap1"); //Fields wrapper
						var add_button = $("#add_field_button1"); //Add button ID

						var x = 1; //initlal text box count
						$(add_button)
								.on(
										"click",
										function(e) { //on add input button click
											e.preventDefault();
											var tyval = $('#ty1').val();
											if (x != 0) { //max input box allowed
												x++; //text box increment
												$('#ty1').val(tyval + "," + x)
												$(wrapper)
														.append(
																'<div><div class="row"><div class="col-md-6"><div class="form-group"><label class="control-label col-md-3">Degree Name</label><div class="col-md-9"><input type="text" class="form-control" name="nameofDegree" value="${formDetailInstance?.otherDegrees1?.nameofDegree}"></div></div></div><div class="col-md-6"><div class="form-group"><label class="control-label col-md-3">Types</label><div class="col-md-9"><select class="form-control" name="additionalType"><option value="" >Select Type</option><option value="Higher Academic Training Above 21 days">Higher Academic Training Above 21 days</option><option value="Diploma">Diploma</option><option value="Certificate Course">Certificate Course</option><option value="PG Diploma">PG Diploma</option><option value="M.Phil">M.Phil</option><option value="Post Graduation">Post Graduation </option><option value="Post-Doctoral Studies">Post-Doctoral Studies</option></select></div></div></div></div><div class="row"><div class="col-md-6"><div class="form-group"><label class="control-label col-md-3">Registration No.</label><div class="col-md-9"><input type="text" class="form-control" name="otherDiploma" value="${formDetailInstance?.otherDegrees1?.otherDiploma}"></div></div></div><div class="col-md-6"><div class="form-group"><label class="control-label col-md-3">Percentage Of Marks</label><div class="col-md-9"><input type="text" class="form-control" name="percentageotherDiploma" value="${formDetailInstance?.otherDegrees1?.percentageotherDiploma}"></div></div></div></div><div class="row"><div class="col-md-6"><div class="form-group"><label class="control-label col-md-3">Date of Passing</label><div class="col-md-9"><input type="text"  class="form-control "  name="otherDiplomayear" placeholder="DD/MM/YYYY"   ></div></div></div><div class="col-md-6"><div class="form-group"><label class="control-label col-md-3">University</label><div class="col-md-9"><input type="text" class="form-control" name="boardUniversityotherDiploma" value="${formDetailInstance?.otherDegrees1?.boardUniversityotherDiploma}"></div></div></div></div><a href="#" class="remove_field1 btn red" id="'+x+'">Remove</a></div>'); //add input box
								}
										});

						$(wrapper).on("click", ".remove_field1", function(e) { //user click on remove text
							e.preventDefault();

							var y = ($('#ty1').val()).split(',');
							var removeItem = this.id;

							y = jQuery.grep(y, function(value) {
								return value != removeItem;
							});
							$('#ty1').val(y)

							$(this).parent('div').remove();
							x--;
						})
					});
</script>

<script>
$(document)
			.ready(
					function() {
						
						var wrapper = $(".input_fields_wrap2"); //Fields wrapper
						var add_button = $("#add_field_button2"); //Add button ID

						var x = 1; //initlal text box count
						$(add_button)
								.on(
										"click",
										function(e) { //on add input button click
											e.preventDefault();
											var tyval = $('#ty').val();
											if (x != 0) { //max input box allowed
												x++; //text box increment
												$('#ty').val(tyval + "," + x)
												$(wrapper)
														.append(
																'<div><div class="row"><div class="col-md-6"><div class="form-group"><label class="control-label col-md-3">Language</label><div class="col-md-9"><input type="text" class="form-control" name="language" value="${formDetailInstance?.languages1?."language"}"></div></div></div><div class="col-md-6"><div class="form-group"><label class="control-label col-md-3">Reading</label><div class="col-md-9"><input type="text" class="form-control" name="reading" value="${formDetailInstance?.languages1?.reading}"></div></div></div></div><div class="row"><div class="col-md-6"><div class="form-group"><label class="control-label col-md-3">Writing</label><div class="col-md-9"><input type="text" class="form-control" name="writing" value="${formDetailInstance?.languages1?.writing}"></div></div></div><div class="col-md-6"><div class="form-group"><label class="control-label col-md-3">Speaking</label><div class="col-md-9"><input type="text" class="form-control" name="speaking" value="${formDetailInstance?.languages1?.speaking}"></div></div></div></div><div class="row"><div class="col-md-6"><div class="form-group"><label class="control-label col-md-3">Examination Passed</label><div class="col-md-9"><input type="text" class="form-control" name="examinationpassed" value="${formDetailInstance?.languages1?.examinationpassed}"></div></div></div><div class="col-md-6"><div class="form-group"><label class="control-label col-md-3">Exam Details</label><div class="col-md-9"><input type="text" class="form-control" name="" value=""></div></div></div></div><a href="#" class="remove_field2 btn red" id="'+x+'">Remove</a></div>'); //add input box
											}
										});

						$(wrapper).on("click", ".remove_field2", function(e) { //user click on remove text
							e.preventDefault();

							var y = ($('#ty').val()).split(',');
							var removeItem = this.id;

							y = jQuery.grep(y, function(value) {
								return value != removeItem;
							});
							$('#ty').val(y)

							$(this).parent('div').remove();
							x--;
						})
					});
</script>


<script>
	$(document)
			.ready(
					function() {
						
						var wrapper = $(".input_fields_wrap3"); //Fields wrapper
						var add_button = $("#add_field_button3"); //Add button ID

						var x = 1; //initlal text box count
						$(add_button)
								.on(
										"click",
										function(e) { //on add input button click
											e.preventDefault();
											var tyval = $('#ty').val();
											if (x != 0) { //max input box allowed
												x++; //text box increment
												$('#ty').val(tyval + "," + x)
												$(wrapper)
														.append(
																'<div><div class="row"><div class="col-md-6"><div class="form-group"><label class="control-label col-md-3">Work Experience in</label><div class="col-md-9"><input type="text" maxlength="250" class="form-control" name="workExperience" value="${formDetailInstance?.experiences1?.workExperience}"></div></div></div><div class="col-md-6"><div class="form-group"><label class="control-label col-md-3">Organization Name</label><div class="col-md-9"><input type="text" maxlength="250" class="form-control" name="companyName" value="${formDetailInstance?.experiences1?.companyName}"></div></div></div></div><div class="row"><div class="col-md-6"><div class="form-group"><label class="control-label col-md-3">Post Held</label><div class="col-md-9"><input type="text" maxlength="250" class="form-control" name="postHeld" value="${formDetailInstance?.experiences1?.postHeld}"></div></div></div><div class="col-md-6"><div class="form-group"><label class="control-label col-md-3">Name of the Employer</label><div class="col-md-9"><input type="text" maxlength="250" class="form-control" name="nameOfTheEmployeer" value="${formDetailInstance?.experiences1?.nameOfTheEmployeer}"></div></div></div></div><div class="row"><div class="col-md-6"><div class="form-group"><label class="control-label col-md-3">Date of Joining</label><div class="col-md-9"><input type="text" maxlength="250" class="form-control" name="dateOfJoining"  placeholder="DD/MM/YYYY"></div></div></div><div class="col-md-6"><div class="form-group"><label class="control-label col-md-3">Date of Leaving</label><div class="col-md-9"><input type="text" class="form-control  " name="dateOfLeaving"  placeholder="DD/MM/YYYY"></div></div></div></div><div class="row"><div class="col-md-6"><div class="form-group"><label class="control-label col-md-3">Period of Service</label><div class="col-md-9"><input type="text" class="form-control" name="periodOfService" value="${formDetailInstance?.experiences1?.periodOfService}"></div></div></div><div class="col-md-6"><div class="form-group"><label class="control-label col-md-3">Reason for Leaving</label><div class="col-md-9"><input type="text" maxlength="250" class="form-control" name="reasonOfLeaving" value="${formDetailInstance?.experiences1?.reasonOfLeaving}"></div></div></div></div><div class="row"><div class="col-md-6"><div class="form-group"><label class="control-label col-md-3">Basic Pay</label><div class="col-md-9"><input type="text" class="form-control" name="basicPay" value="${formDetailInstance?.experiences1?.basicPay}"></div></div></div></div><a href="#" class="remove_field3 btn red" id="'+x+'">Remove</a></div>'); //add input box
											}
										});

						$(wrapper).on("click", ".remove_field3", function(e) { //user click on remove text
							e.preventDefault();

							var y = ($('#ty').val()).split(',');
							var removeItem = this.id;

							y = jQuery.grep(y, function(value) {
								return value != removeItem;
							});
							$('#ty').val(y)

							$(this).parent('div').remove();
							x--;
						})
					});
</script>

<script>
	$(document)
			.ready(
					function() {
						
						var wrapper = $(".input_fields_wrap4"); //Fields wrapper
						var add_button = $("#add_field_button4"); //Add button ID

						var x = 1; //initlal text box count
						$(add_button)
								.on(
										"click",
										function(e) { //on add input button click
											e.preventDefault();
											var tyval = $('#ty').val();
											if (x != 0) { //max input box allowed
												x++; //text box increment
												$('#ty').val(tyval + "," + x)
												$(wrapper)
														.append(
																'<div><div class="row"><div class="col-md-6"><div class="form-group"><label class="control-label col-md-3">Particulars</label><div class="col-md-9"><input type="text" maxlength="250" class="form-control" name="particularsAwards" value="${formDetailInstance?.particularsAwards}" placeholder="Medals / Awards / Recognition"></div></div></div><div class="col-md-6"><div class="form-group"><label class="control-label col-md-3">Level</label><div class="col-md-9"><select class="form-control" name="noofAwards" value="${formDetailInstance?.sp?.noofAwards}"><option value="" selected="selected">Select Type</option><option value="International">International</option><option value="National">National</option><option value="State">State</option><option value="University">University</option><option value="Professional Societies">Professional Societies</option></select></div></div></div></div><div class="row"><div class="col-md-6">	<div class="form-group"><label class="control-label col-md-3">Year</label><div class="col-md-9"><input type="text" class="form-control " name="awardsYear" placeholder="DD/MM/YYYY"></div></div></div><div class="col-md-6"><div class="form-group"><label class="control-label col-md-3">Awarded for</label><div class="col-md-9"><input type="text" maxlength="250" class="form-control" name="awardedfor" value="${formDetailInstance?.awardedfor}"></div></div></div></div><a href="#" class="remove_field4 btn red" id="'+x+'">Remove</a></div>'); //add input box
											}
										});

						$(wrapper).on("click", ".remove_field4", function(e) { //user click on remove text
							e.preventDefault();

							var y = ($('#ty').val()).split(',');
							var removeItem = this.id;

							y = jQuery.grep(y, function(value) {
								return value != removeItem;
							});
							$('#ty').val(y)

							$(this).parent('div').remove();
							x--;
						})
					});
</script>
<script type="text/javascript"></script>
<script>
	$(document)
			.ready(
					function() {
						
						var wrapper = $(".input_fields_wrap5"); //Fields wrapper
						var add_button = $("#add_field_button5"); //Add button ID

						var x = 1; //initlal text box count
						$(add_button)
								.on(
										"click",
										function(e) { //on add input button click
											e.preventDefault();
											var tyval = $('#ty').val();
											if (x != 0) { //max input box allowed
												x++; //text box increment
												$('#ty').val(tyval + "," + x)
												$(wrapper)
														.append(
																'<div><div class="row"><div class="col-md-6"><div class="form-group"><label class="control-label col-md-3">Types</label><div class="col-md-9"><select class="form-control" name="typeAchievement" value=""><option value="" selected="selected">Select Type</option><option value="Sports and Cultural">Sports and Cultural</option><option value="NCC">NCC</option><option value="NSS">NSS</option><option value="Scouts And Guides">Scouts And Guides</option></select></div></div></div><div class="col-md-6"><div class="form-group"><label class="control-label col-md-3">Particulars / Event</label><div class="col-md-9"><input type="text" maxlength="250" class="form-control" name="particularsEvent" value="${formDetailInstance?.achievements1?.particularsEvent}"></div></div></div></div><div class="row"><div class="col-md-6"><div class="form-group"><label class="control-label col-md-3">Period & Duration</label><div class="col-md-9"><input type="text" class="form-control" name="periodDuration" value="${formDetailInstance?.achievements1?.periodDuration}"></div></div></div><div class="col-md-6"><div class="form-group"><label class="control-label col-md-3">Level</label><div class="col-md-9"><select class="form-control" name="level" value=""><option value="" selected="selected">Select Type</option><option value="International">International</option><option value="National">National</option><option value="University Level">University Level</option><option value="A Certificate">A Certificate</option><option value="B Certificate">B Certificate</option><option value="C Certificate">C Certificate</option><option value="Other">Other</option></select></div></div></div></div><a href="#" class="remove_field5 btn red" id="'+x+'">Remove</a></div>'); //add input box
											}
										});

						$(wrapper).on("click", ".remove_field5", function(e) { //user click on remove text
							e.preventDefault();

							var y = ($('#ty').val()).split(',');
							var removeItem = this.id;

							y = jQuery.grep(y, function(value) {
								return value != removeItem;
							});
							$('#ty').val(y)

							$(this).parent('div').remove();
							x--;
						})
					});
</script>

<script>
	$(document)
			.ready(
					function() {
						
						var wrapper = $(".input_fields_wrap6"); //Fields wrapper
						var add_button = $("#add_field_button6"); //Add button ID

						var x = 1; //initlal text box count
						$(add_button)
								.on(
										"click",
										function(e) { //on add input button click
											e.preventDefault();
											var tyval = $('#ty').val();
											if (x != 0) { //max input box allowed
												x++; //text box increment
												$('#ty').val(tyval + "," + x)
												$(wrapper)
														.append(
																'<div><div class="row"><div class="col-md-6"><div class="form-group"><label class="control-label col-md-3">Particular</label><div class="col-md-9"><input type="text" maxlength="250"  class="form-control" name="particular" value="${formDetailInstance?.specialAttainment1?.particular}"></div></div></div><div class="col-md-6"><div class="form-group"><label class="control-label col-md-3">Cadre</label><div class="col-md-9"><select class="form-control" name="cadre" value=""><option value="" selected="selected">Select Type</option><option value="Assistant Professor">Assistant Professor</option><option value="Associate Professor ">Associate Professor</option><option value="Professor">Professor</option></select></div></div></div></div><div class="row"><div class="col-md-6"><div class="form-group"><label class="control-label col-md-3">Year</label><div class="col-md-9"><input type="text" class="form-control" name="year" value="${formDetailInstance?.specialAttainment1?.year}" ></div></div></div><div class="col-md-6"><div class="form-group"><label class="control-label col-md-3">Details</label><div class="col-md-9"><input type="text" maxlength="250" class="form-control" name="details" value="${formDetailInstance?.specialAttainment1?.details}" ></div></div></div></div><a href="#" class="remove_field6 btn red" id="'+x+'">Remove</a></div>'); //add input box
											}
										});

						$(wrapper).on("click", ".remove_field6", function(e) { //user click on remove text
							e.preventDefault();

							var y = ($('#ty').val()).split(',');
							var removeItem = this.id;

							y = jQuery.grep(y, function(value) {
								return value != removeItem;
							});
							$('#ty').val(y)

							$(this).parent('div').remove();
							x--;
						})
					});
</script>

<script>
	$(document)
			.ready(
					function() {
						
						var wrapper = $(".input_fields_wrap7"); //Fields wrapper
						var add_button = $("#add_field_button7"); //Add button ID

						var x = 1; //initlal text box count
						$(add_button)
								.on(
										"click",
										function(e) { //on add input button click
											e.preventDefault();
											var tyval = $('#ty').val();
											if (x != 0) { //max input box allowed
												x++; //text box increment
												$('#ty').val(tyval + "," + x)
												$(wrapper)
														.append(
																'<div><div class="row"><div class="col-md-6"><div class="form-group"><label class="control-label col-md-3">Details</label><div class="col-md-9"><input type="text" maxlength="250" class="form-control" name="details1" value="${formDetailInstance?.patent1?.details1}"></div></div></div><div class="col-md-6"><div class="form-group"><label class="control-label col-md-3">Year</label><div class="col-md-9"><input type="text" class="form-control" name="year1" value="${formDetailInstance?.patent1?.year1}"></div></div></div></div><a href="#" class="remove_field7 btn red" id="'+x+'">Remove</a></div>'); //add input box
											}
										});

						$(wrapper).on("click", ".remove_field7", function(e) { //user click on remove text
							e.preventDefault();

							var y = ($('#ty').val()).split(',');
							var removeItem = this.id;

							y = jQuery.grep(y, function(value) {
								return value != removeItem;
							});
							$('#ty').val(y)

							$(this).parent('div').remove();
							x--;
						})
					});
</script>


<script>
	$(document)
			.ready(
					function() {
						
						var wrapper = $(".input_fields_wrap8"); //Fields wrapper
						var add_button = $("#add_field_button8"); //Add button ID

						var x = 1; //initlal text box count
						$(add_button)
								.on(
										"click",
										function(e) { //on add input button click
											e.preventDefault();
											var tyval = $('#ty').val();
											if (x != 0) { //max input box allowed
												x++; //text box increment
												$('#ty').val(tyval + "," + x)
												$(wrapper)
														.append(
																'<div><div class="row"><div class="col-md-6"><div class="form-group"><label class="control-label col-md-3">Project Title</label><div class="col-md-9"><input type="text" maxlength="250" class="form-control" name="projectTitle"value="${formDetailInstance?.fproject?.projectTitle}"></div></div></div><div class="col-md-6"><div class="form-group"><label class="control-label col-md-3">Cadre</label><div class="col-md-9"><select class="form-control" name="cadre2" value=""><option value="" selected="selected">Select Type</option><option value="Assistant Professor">Assistant Professor</option><option value="Associate Professor ">Associate Professor</option><option value="Professor">Professor</option></select></div></div></div></div><div class="row"><div class="col-md-6"><div class="form-group"><label class="control-label col-md-3">Details</label><div class="col-md-9"><input type="text" maxlength="250" class="form-control" name="details2" value="${formDetailInstance?.fproject?.details2}"></div></div></div><div class="col-md-6"><div class="form-group"><label class="control-label col-md-3">Project Outlay</label><div class="col-md-9"><select class="form-control" name="projectOutlay" value=""><option value="" selected="selected">Select Type</option><option value="2 Lakh to 5 Lakh">2 Lakh to 5 Lakh</option> <option value="5 Lakh to 10 Lakh ">5 Lakh to 10 Lakh</option><option value="Above 10 Lakh">Above 10 Lakh</option></select></div></div></div></div><a href="#" class="remove_field8 btn red" id="'+x+'">Remove</a></div>'); //add input box
											}
										});

						$(wrapper).on("click", ".remove_field8", function(e) { //user click on remove text
							e.preventDefault();

							var y = ($('#ty').val()).split(',');
							var removeItem = this.id;

							y = jQuery.grep(y, function(value) {
								return value != removeItem;
							});
							$('#ty').val(y)

							$(this).parent('div').remove();
							x--;
						})
					});
</script>

<script>
	$(document)
			.ready(
					function() {
						
						var wrapper = $(".input_fields_wrap9"); //Fields wrapper
						var add_button = $("#add_field_button9"); //Add button ID

						var x = 1; //initlal text box count
						$(add_button)
								.on(
										"click",
										function(e) { //on add input button click
											e.preventDefault();
											var tyval = $('#ty').val();
											if (x != 0) { //max input box allowed
												x++; //text box increment
												$('#ty').val(tyval + "," + x)
												$(wrapper)
														.append(
																'<div><div class="row"><div class="col-md-6"><div class="form-group"><label class="control-label col-md-3">Type</label><div class="col-md-9"><select class="form-control" name="type10" value=""><option value="" selected="selected">Select Type</option><option value="Organized">Organized</option><option value="Participated">Participated</option></select></div></div></div></div><div class="row"><div class="col-md-6"><div class="form-group"><label class="control-label col-md-3">Particulars</label><div class="col-md-9"><input type="text" maxlength="250" class="form-control" name="particulars3"value="${formDetailInstance?.wshop?.particulars3}"></div></div></div><div class="col-md-6"><div class="form-group"><label class="control-label col-md-3">Level</label><div class="col-md-9"><select class="form-control" name="level3" value=""><option value="" selected="selected">Select Type</option><option value="International">International</option><option value="National">National</option><option value="University Level">University Level</option></select></div></div></div></div><div class="row"><div class="col-md-6"><div class="form-group"><label class="control-label col-md-3">Details</label><div class="col-md-9"><input type="text"  maxlength="250" class="form-control" name="details3" value="${formDetailInstance?.wshop?.details3}"></div></div></div><div class="col-md-6"><div class="form-group"><label class="control-label col-md-3">Year</label><div class="col-md-9"><input type="text" class="form-control" name="year3" value="${formDetailInstance?.wshop?.year3}" ></div></div></div></div><a href="#" class="remove_field9 btn red" id="'+x+'">Remove</a></div>'); //add input box
										}
										});

						$(wrapper).on("click", ".remove_field9", function(e) { //user click on remove text
							e.preventDefault();

							var y = ($('#ty').val()).split(',');
							var removeItem = this.id;

							y = jQuery.grep(y, function(value) {
								return value != removeItem;
							});
							$('#ty').val(y)

							$(this).parent('div').remove();
							x--;
						})
					});
</script>

<script>
	$(document)
			.ready(
					function() {
						
						var wrapper = $(".input_fields_wrap10"); //Fields wrapper
						var add_button = $("#add_field_button10"); //Add button ID

						var x = 1; //initlal text box count
						$(add_button)
								.on(
										"click",
										function(e) { //on add input button click
											e.preventDefault();
											var tyval = $('#ty').val();
											if (x != 0) { //max input box allowed
												x++; //text box increment
												$('#ty').val(tyval + "," + x)
												$(wrapper)
														.append(
																'<div><div class="row"><div class="col-md-6"><div class="form-group"><label class="control-label col-md-3">Year</label><div class="col-md-9"><select class="form-control" name="year4" value=""><option value="" selected="selected">Select Type</option><option value="1st Year">1st Year</option><option value="2nd Year">2nd Year</option><option value="3rd Year">3rd Year</option><option value="4th Year">4th Year</option><option value="5th Year">5th Year</option></select></div></div></div><div class="col-md-6"><div class="form-group"><label class="control-label col-md-3">Grade</label><div class="col-md-9"><select class="form-control" name="grade" value=""><option value="" selected="selected">Select Type</option><option value="A/A+/A-">A/A+/A-</option><option value="B/B+/B-">B/B+/B-</option><option value="C/C+/C-">C/C+/C-</option></select></div></div></div><div class="col-md-6"><div class="form-group"><label class="control-label col-md-3">Cadre</label><div class="col-md-9"><select class="form-control" name="cadre6" value=""><option value="" selected="selected">Select Type</option><option value="Assistant Professor">Assistant Professor</option><option value="Associate Professor ">Associate Professor</option><option value="Professor">Professor</option></select></div></div></div></div><a href="#" class="remove_field10 btn red" id="'+x+'">Remove</a></div>'); //add input box
											}
										});

						$(wrapper).on("click", ".remove_field10", function(e) { //user click on remove text
							e.preventDefault();

							var y = ($('#ty').val()).split(',');
							var removeItem = this.id;

							y = jQuery.grep(y, function(value) {
								return value != removeItem;
							});
							$('#ty').val(y)

							$(this).parent('div').remove();
							x--;
						})
					});
</script>

</body>

</html>