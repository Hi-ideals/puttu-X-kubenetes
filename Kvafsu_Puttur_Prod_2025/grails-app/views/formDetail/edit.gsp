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
								<%--<img class="img2" src="assets1/layouts/layout3/img/caree.png"
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
												<div class="portlet-body form">
													<!-- BEGIN FORM-->
													<g:form class="form-horizontal"
														enctype='multipart/form-data'
														url="[resource:formDetailInstance, action:'updateForm']"
														method="PUT">
														<g:hiddenField name="version"
															value="${formDetailInstance?.version}" />

														<fieldset class="form">
															<g:render template="form" />
														</fieldset>


														<div class="form-actions">
															<div class="row">
																<div class="col-md-offset-3 col-md-9">
																	<g:actionSubmit class="btn green" action="updateForm"
																		value="${message(code: 'default.button.update.label', default: 'Update')}" />

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
	            
	            $('#pointsperc').val(perc);
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
	            
	            $('#pointsperc1').val(perc);
	        }

	    });
			
	</script>

	<script>
$(document).ready(function(){
  let defaultDomain = 'exampledomain.net'; // use this to remove later
  let input = $("#testInput");
  let typed = ""; // keep track of what the user has typed
  
  // put cursor at start when clicked
  input.click(function(){
  $(this).get(0).setSelectionRange(0,0);
  })
  
  input.keydown(function(e){
    // @ is keycode 192
    if(e.keyCode === 192){
      // the user has typed @ and you can assume that they want a different domain
      input.val(typed.substring(0, typed.length - 1));
    }else{
        // store the email the user has typed so far, minnus default domain
        typed = input.val().replace(defaultDomain, '');
    }
  })
	})
</script>

	<script type="text/javascript">
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
																'<div><div class="row"><div class="col-md-6"><div class="form-group"><label class="control-label col-md-3">Degree Name</label><div class="col-md-9"><input type="text" class="form-control" name="nameofDegree" value="${formDetailInstance?.otherDegrees1?.nameofDegree.last()}"></div></div></div></div><div class="row"><div class="col-md-6"><div class="form-group"><label class="control-label col-md-3">Registration No</label><div class="col-md-9"><input type="text" class="form-control" name="otherDiploma" value="${formDetailInstance?.otherDegrees1?.otherDiploma.last()}"></div></div></div><div class="col-md-6"><div class="form-group"><label class="control-label col-md-3">Percentage Of Marks</label><div class="col-md-9"><input type="text" class="form-control" name="percentageotherDiploma" value="${formDetailInstance?.otherDegrees1?.percentageotherDiploma.last()}"></div></div></div></div><div class="row"><div class="col-md-6"><div class="form-group"><label class="control-label col-md-3">Year of Passing</label><div class="col-md-9"><input type="text" class="form-control  date-picker" name="otherDiplomayear1" value="${formatDate(format:'dd/MM/yyyy',date:formDetailInstance?.otherDegrees1?.otherDiplomayear.last())}"></div></div></div><div class="col-md-6"><div class="form-group"><label class="control-label col-md-3">University</label><div class="col-md-9"><input type="text" class="form-control" name="boardUniversityotherDiploma" value="${formDetailInstance?.otherDegrees1?.boardUniversityotherDiploma.last()}"></div></div></div></div><a href="#" class="remove_field1 btn red" id="'+x+'">Remove</a></div>'); //add input box
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


	<script type="text/javascript">



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
																'<div><div class="row"><div class="col-md-6"><div class="form-group"><label class="control-label col-md-3">Language</label><div class="col-md-9"><input type="text" class="form-control" name="language" value="${formDetailInstance?.languages1?.language.last()}"></div></div></div><div class="col-md-6"><div class="form-group"><label class="control-label col-md-3">Reading</label><div class="col-md-9"><input type="text" class="form-control" name="reading" value="${formDetailInstance?.languages1?.reading.last()}"></div></div></div></div><div class="row"><div class="col-md-6"><div class="form-group"><label class="control-label col-md-3">Writing</label><div class="col-md-9"><input type="text" class="form-control" name="writing" value="${formDetailInstance?.languages1?.writing.last()}"></div></div></div><div class="col-md-6"><div class="form-group"><label class="control-label col-md-3">Speaking</label><div class="col-md-9"><input type="text" class="form-control" name="speaking" value="${formDetailInstance?.languages1?.speaking.last()}"></div></div></div></div><div class="row"><div class="col-md-6"><div class="form-group"><label class="control-label col-md-3">Examination Passed</label><div class="col-md-9"><input type="text" class="form-control" name="examinationpassed" value="${formDetailInstance?.languages1?.examinationpassed.last()}"></div></div></div></div><a href="#" class="remove_field2 btn red" id="'+x+'">Remove</a></div>'); //add input box
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


	<script type="text/javascript">
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
																'<div><div class="row"><div class="col-md-6"><div class="form-group"><label class="control-label col-md-3">Work Experience</label><div class="col-md-9"><input type="text" class="form-control" name="workExperience" value="${formDetailInstance?.experiences1?.workExperience.last()}"></div></div></div><div class="col-md-6"><div class="form-group"><label class="control-label col-md-3">Organization Name</label><div class="col-md-9"><input type="text" class="form-control" name="companyName" value="${formDetailInstance?.experiences1?.companyName.last()}"></div></div></div></div><div class="row"><div class="col-md-6"><div class="form-group"><label class="control-label col-md-3">Post Held</label><div class="col-md-9"><input type="text" class="form-control" name="postHeld" value="${formDetailInstance?.experiences1?.postHeld.last()}"></div></div></div><div class="col-md-6"><div class="form-group"><label class="control-label col-md-3">Name of the Employer</label><div class="col-md-9"><input type="text" class="form-control" name="nameOfTheEmployeer" value="${formDetailInstance?.experiences1?.nameOfTheEmployeer.last()}"></div></div></div></div><div class="row"><div class="col-md-6"><div class="form-group"><label class="control-label col-md-3">Date of Joining</label><div class="col-md-9"><input type="text" class="form-control  date-picker" name="dateOfJoining1" value="${formatDate(format:'dd/MM/yyyy',date:formDetailInstance?.experiences1?.dateOfJoining.last())}"></div></div></div><div class="col-md-6"><div class="form-group"><label class="control-label col-md-3">Date of Leaving</label><div class="col-md-9"><input type="text" class="form-control  date-picker" name="dateOfLeaving1" value="${formatDate(format:'dd/MM/yyyy',date:formDetailInstance?.experiences1?.dateOfLeaving.last())}"></div></div></div></div><div class="row"><div class="col-md-6"><div class="form-group"><label class="control-label col-md-3">Period of Service</label><div class="col-md-9"><input type="text" class="form-control" name="periodOfService" value="${formDetailInstance?.experiences1?.periodOfService.last()}"></div></div></div><div class="col-md-6"><div class="form-group"><label class="control-label col-md-3">Reason for Leaving</label><div class="col-md-9"><input type="text" class="form-control" name="reasonOfLeaving" value="${formDetailInstance?.experiences1?.reasonOfLeaving.last()}"></div></div></div></div><div class="row"><div class="col-md-6"><div class="form-group"><label class="control-label col-md-3">Basic Pay</label><div class="col-md-9"><input type="text" class="form-control" name="basicPay" value="${formDetailInstance?.experiences1?.basicPay.last()}"></div></div></div></div><a href="#" class="remove_field3 btn red" id="'+x+'">Remove</a></div>'); //add input box
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
	<script type="text/javascript">
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
																'<div><div class="row"><div class="col-md-6"><div class="form-group"><label class="control-label col-md-3">Particulars</label><div class="col-md-9"><input type="text" class="form-control" name="particularsAwards" value="${formDetailInstance?.specialAwards2?.particularsAwards.last()}"></div></div></div><div class="col-md-6"><div class="form-group"><label class="control-label col-md-3">Number of Awards</label><div class="col-md-9"><input type="text" class="form-control" name="noofAwards" value="${formDetailInstance?.specialAwards2?.noofAwards.last()}"></div></div></div></div><div class="row"><div class="col-md-6">	<div class="form-group"><label class="control-label col-md-3">Year</label><div class="col-md-9"><input type="text" class="form-control  date-picker" name="awardsYear1" value="${formatDate(format:'dd/MM/yyyy',date:formDetailInstance?.specialAwards2?.awardsYear.last())}"></div></div></div><div class="col-md-6"><div class="form-group"><label class="control-label col-md-3">Awarded for</label><div class="col-md-9"><input type="text" class="form-control" name="awardedfor" value="${formDetailInstance?.specialAwards2?.awardedfor.last()}"></div></div></div></div><a href="#" class="remove_field4 btn red" id="'+x+'">Remove</a></div>'); //add input box
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


	<script type="text/javascript">
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
																'<div><div class="row"><div class="col-md-6"><div class="form-group"><label class="control-label col-md-3">Particulars</label><div class="col-md-9"><input type="text" class="form-control" name="particulars" value="${formDetailInstance?.sp?.particulars.last()}"><br></div></div></div><div class="col-md-6"><div class="form-group"><label class="control-label col-md-3">Titles of the Papers/Books etc.</label><div class="col-md-9"><input type="text" class="form-control" name="titlesPapers "value="${formDetailInstance?.sp?.titlesPapers.last()}"></div></div></div></div><div class="row"><div class="col-md-6"><div class="form-group"><label class="control-label col-md-3">Name of the Journal and year / Publisher</label><div class="col-md-9"><input type="text" class="form-control" name="publisher"value="${formDetailInstance?.sp?.publisher.last()}"></div></div></div></div><a href="#" class="remove_field btn red" id="'+x+'">Remove</a></div>'); //add input box
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
</body>

</html>