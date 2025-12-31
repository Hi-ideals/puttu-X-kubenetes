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
													<%--
													
													<marquee scrollamount="15" width="100%" direction="left" height="35px" style="font-size: 22px; color:red;"><img src="assets1/layouts/layout3/img/preview.gif" height="40px" width="10%">
                                                   <b>Candidates who belong to Kalyana Karnataka Region can Only apply for the job.</b>
                                                 </marquee>
													
												--%>
												</div>
												<div class="portlet-body form">
													<!-- BEGIN FORM-->

													<g:form
														url="[resource:formDetailInstance, action:'documrnts']"
														class="form-horizontal" enctype='multipart/form-data'
														id="teach">
														<fieldset class="form">
															<g:render template="documentsform" />
														</fieldset>


														<div class="form-actions">
															<div class="row">
																<div class="col-md-offset-3 col-md-9">
																	<g:submitButton name="create" class="btn green"
																		style="margin-left:250px"
																		value="${message(code: 'default.button.Submit.label', default: 'Submit')}"
																		onclick="return confirm('Please verify all the details before saving, Once Saved details can not be edited.')"
																		id="techingva2" data-toggle="modal"
																		data-target="#exampleModalLong" />
																</div>
																<%--<div class="col-md-offset-3 col-md-9">
																<g:submitButton name="create" class="btn green"  style="margin-left:180px;margin-top:-55px;"
																		value="${message(code: 'default.button.Submit.label', default: 'Save')}"  id="techingva" data-toggle="modal" data-target="#exampleModalLong" onclick="return confirm('Please verify all the details before saving Once Saved details can not be edited.')" />
																</div>
														
														--%>
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

	<%--<div class="modal fade" id="exampleModalLong" tabindex="-1"
		role="dialog" data-keyboard="false" data-backdrop="static">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<!-- <h2 class="modal-title" id="exampleModalLongTitle">Terms of Service</h2> 
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>-->
				</div>
				<div class="modal-body" style="text-align: center;">
					<img src="assets1/layouts/layout3/img/check.gif" height="220px"
						width="50%"><br> <i class="fa fa-hand-o-right"
						style="font-size: 22px; color: red;"></i> <b
						style="font-size: 22px; color: blue; font-family: system-ui; line-height: 26px;">Please
						verify all the details before submitting. After submitting there
						is No Update/ Edit option</b><br> <br> <i
						class="fa fa-hand-o-right" style="font-size: 22px; color: red;"></i>
					<b
						style="font-size: 22px; color: blue; font-family: system-ui; line-height: 26px;">Application
						Fee can not be refunded</b>

				</div>
			<div class="modal-footer">
					<input type="submit" value="Submit" class="btn btn-primary"
						onclick="hidemodal()" id="techingva" />
					<button type="button" class="btn btn-alert" data-dismiss="modal">Close</button>
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
					<h4 class="modal-title"
						style="text-align: center; font-weight: 900; color: red;">Contact
						/ ಸಂಪರ್ಕಿಸಿ</h4>
				</div>
				<div class="modal-body" style="text-align: center;">
					<img src="assets1/layouts/layout3/img/help.png" height="220px"
						width="60%"><br><br> <b
						style="font-size: 30px; color: black; font-family: system-ui; line-height: 26px;">Software
						related queries Please Call</b><br> <b
						style="font-size: 32px; color: green; font-family: system-ui; line-height: 26px;">9606912222</b><br />
					<b
						style="font-size: 30px; color: black; font-family: system-ui; line-height: 26px;">Mail
						us at</b><br> <b
						style="font-size: 32px; color: green; font-family: system-ui; line-height: 26px;">recruitmentcell@kvafsu.edu.in</b>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>





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
	--%>
	<script
		src="assets1/global/plugins/bootstrap-datepicker/js/jquery.ui.datepicker1.js"></script>
	<script src="js/fromvalidation.js" type="text/javascript"></script>
	<script src="js/uploadvalidation.js" type="text/javascript"></script>
	<script src="assets1/global/plugins/jquery.inputmask.bundle.js"></script>


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
		/*------------------Window Back Operation Script-----------*/
		window.history.forward();
		function noBack() {
			window.history.forward();
		}
	</script>


<script>


/*------------------------------Upload Rural Certificate------------------------------*/
var title = $( "#filesrc" ).attr( "data-file_types" ).replace(/\|/g,', ');
$( "#allowed-files" ).text( title );

$('#filesrc').on('change', function() {
	 var numb = $(this)[0].files[0].size/1024/1024; //count file size
	var resultid = $(this).val().split(".");
	var gettypeup  = resultid [resultid.length-1]; // take file type uploaded file
	var filetype = $(this).attr('data-file_types'); // take allowed files from input
	var allowedfiles = filetype.replace(/\|/g,', '); // string allowed file
	var filesize = 0.5; //2MB
	var onlist = $(this).attr('data-file_types').indexOf(gettypeup) > -1;
	var checkinputfile = $(this).attr('type');
	numb = numb.toFixed(2);

	if (onlist && numb <= filesize) {
				$('#alertrc').html('The file is uploaded').removeAttr('class').addClass('xd2'); //file OK
	   } else {
	   if(numb >= filesize && onlist){
	  $(this).val(''); //remove uploaded file
	      $('#alertrc').html('Added file is too big \(' + numb + ' MB\) - max file size '+ filesize +' MB').removeAttr('class').addClass('xd'); //alert that file is too big, but type file is ok
	      } else if(numb < filesize && !onlist) {
	     $(this).val(''); //remove uploaded file
	      $('#alertrc').html('An not allowed file format has been added \('+ gettypeup +') - allowed formats: ' + allowedfiles).removeAttr('class').addClass('xd'); //wrong type file
	      } else if(!onlist) {
	    $(this).val(''); //remove uploaded file
	      $('#alertrc').html('An not allowed file format has been added \('+ gettypeup +') - allowed formats: ' + allowedfiles).removeAttr('class').addClass('xd'); //wrong type file
	      }
	   }
	})		
	
	

</script>



<script>


/*------------------------------Upload KVC Certificate front-----------------------------*/

var title = $( "#files14" ).attr( "data-file_types" ).replace(/\|/g,', ');
$( "#allowed-files" ).text( title );

$('#files14').on('change', function() {
 var numb = $(this)[0].files[0].size/1024/1024; //count file size
var resultid = $(this).val().split(".");
var gettypeup  = resultid [resultid.length-1]; // take file type uploaded file
var filetype = $(this).attr('data-file_types'); // take allowed files from input
var allowedfiles = filetype.replace(/\|/g,', '); // string allowed file
var filesize = 0.5; //2MB
var onlist = $(this).attr('data-file_types').indexOf(gettypeup) > -1;
var checkinputfile = $(this).attr('type');
numb = numb.toFixed(2);

if (onlist && numb <= filesize) {
			$('#alertkf').html('The file is uploaded').removeAttr('class').addClass('xd2'); //file OK
   } else {
   if(numb >= filesize && onlist){
  $(this).val(''); //remove uploaded file
      $('#alertkf').html('Added file is too big \(' + numb + ' MB\) - max file size '+ filesize +' MB').removeAttr('class').addClass('xd'); //alert that file is too big, but type file is ok
      } else if(numb < filesize && !onlist) {
     $(this).val(''); //remove uploaded file
      $('#alertkf').html('An not allowed file format has been added \('+ gettypeup +') - allowed formats: ' + allowedfiles).removeAttr('class').addClass('xd'); //wrong type file
      } else if(!onlist) {
    $(this).val(''); //remove uploaded file
      $('#alertkf').html('An not allowed file format has been added \('+ gettypeup +') - allowed formats: ' + allowedfiles).removeAttr('class').addClass('xd'); //wrong type file
      }
   }
})



</script>


<script>

		/*------------------------------Upload KVC Certificate BACK-----------------------------*/
		
var title = $( "#files144" ).attr( "data-file_types" ).replace(/\|/g,', ');
	$( "#allowed-files" ).text( title );
	
	$('#files144').on('change', function() {
		 var numb = $(this)[0].files[0].size/1024/1024; //count file size
		var resultid = $(this).val().split(".");
		var gettypeup  = resultid [resultid.length-1]; // take file type uploaded file
		var filetype = $(this).attr('data-file_types'); // take allowed files from input
		var allowedfiles = filetype.replace(/\|/g,', '); // string allowed file
		var filesize = 0.5; //2MB
		var onlist = $(this).attr('data-file_types').indexOf(gettypeup) > -1;
		var checkinputfile = $(this).attr('type');
		numb = numb.toFixed(2);

		if (onlist && numb <= filesize) {
					$('#alertkb').html('The file is uploaded').removeAttr('class').addClass('xd2'); //file OK
		   } else {
		   if(numb >= filesize && onlist){
		  $(this).val(''); //remove uploaded file
		      $('#alertkb').html('Added file is too big \(' + numb + ' MB\) - max file size '+ filesize +' MB').removeAttr('class').addClass('xd'); //alert that file is too big, but type file is ok
		      } else if(numb < filesize && !onlist) {
		     $(this).val(''); //remove uploaded file
		      $('#alertkb').html('An not allowed file format has been added \('+ gettypeup +') - allowed formats: ' + allowedfiles).removeAttr('class').addClass('xd'); //wrong type file
		      } else if(!onlist) {
		    $(this).val(''); //remove uploaded file
		      $('#alertkb').html('An not allowed file format has been added \('+ gettypeup +') - allowed formats: ' + allowedfiles).removeAttr('class').addClass('xd'); //wrong type file
		      }
		   }
		})
		
</script>

<script>


		/*------------------------------Upload Ex-Servicemen Certificate------------------------------*/
	
   var title = $( "#files10" ).attr( "data-file_types" ).replace(/\|/g,', ');
	$( "#allowed-files" ).text( title );
	
	$('#files10').on('change', function() {
		 var numb = $(this)[0].files[0].size/1024/1024; //count file size
		var resultid = $(this).val().split(".");
		var gettypeup  = resultid [resultid.length-1]; // take file type uploaded file
		var filetype = $(this).attr('data-file_types'); // take allowed files from input
		var allowedfiles = filetype.replace(/\|/g,', '); // string allowed file
		var filesize = 0.5; //2MB
		var onlist = $(this).attr('data-file_types').indexOf(gettypeup) > -1;
		var checkinputfile = $(this).attr('type');
		numb = numb.toFixed(2);

		if (onlist && numb <= filesize) {
					$('#alert10').html('The file is uploaded').removeAttr('class').addClass('xd2'); //file OK
		   } else {
		   if(numb >= filesize && onlist){
		  $(this).val(''); //remove uploaded file
		      $('#alert10').html('Added file is too big \(' + numb + ' MB\) - max file size '+ filesize +' MB').removeAttr('class').addClass('xd'); //alert that file is too big, but type file is ok
		      } else if(numb < filesize && !onlist) {
		     $(this).val(''); //remove uploaded file
		      $('#alert10').html('An not allowed file format has been added \('+ gettypeup +') - allowed formats: ' + allowedfiles).removeAttr('class').addClass('xd'); //wrong type file
		      } else if(!onlist) {
		    $(this).val(''); //remove uploaded file
		      $('#alert10').html('An not allowed file format has been added \('+ gettypeup +') - allowed formats: ' + allowedfiles).removeAttr('class').addClass('xd'); //wrong type file
		      }
		   }
		})
		
</script>


<script>

/*------------------------------Upload Kannada Medium Certificate------------------------------*/
	
   var title = $( "#files11" ).attr( "data-file_types" ).replace(/\|/g,', ');
	$( "#allowed-files" ).text( title );
	
	$('#files11').on('change', function() {
		 var numb = $(this)[0].files[0].size/1024/1024; //count file size
		var resultid = $(this).val().split(".");
		var gettypeup  = resultid [resultid.length-1]; // take file type uploaded file
		var filetype = $(this).attr('data-file_types'); // take allowed files from input
		var allowedfiles = filetype.replace(/\|/g,', '); // string allowed file
		var filesize = 0.5; //2MB
		var onlist = $(this).attr('data-file_types').indexOf(gettypeup) > -1;
		var checkinputfile = $(this).attr('type');
		numb = numb.toFixed(2);

		if (onlist && numb <= filesize) {
					$('#alert11').html('The file is uploaded').removeAttr('class').addClass('xd2'); //file OK
		   } else {
		   if(numb >= filesize && onlist){
		  $(this).val(''); //remove uploaded file
		      $('#alert11').html('Added file is too big \(' + numb + ' MB\) - max file size '+ filesize +' MB').removeAttr('class').addClass('xd'); //alert that file is too big, but type file is ok
		      } else if(numb < filesize && !onlist) {
		     $(this).val(''); //remove uploaded file
		      $('#alert11').html('An not allowed file format has been added \('+ gettypeup +') - allowed formats: ' + allowedfiles).removeAttr('class').addClass('xd'); //wrong type file
		      } else if(!onlist) {
		    $(this).val(''); //remove uploaded file
		      $('#alert11').html('An not allowed file format has been added \('+ gettypeup +') - allowed formats: ' + allowedfiles).removeAttr('class').addClass('xd'); //wrong type file
		      }
		   }
		})
		
</script>


<script>
/*------------------------------Upload Kalyana-Karnataka (371J) Certificate------------------------------*/
	
   var title = $( "#files12" ).attr( "data-file_types" ).replace(/\|/g,', ');
	$( "#allowed-files" ).text( title );
	
	$('#files12').on('change', function() {
		 var numb = $(this)[0].files[0].size/1024/1024; //count file size
		var resultid = $(this).val().split(".");
		var gettypeup  = resultid [resultid.length-1]; // take file type uploaded file
		var filetype = $(this).attr('data-file_types'); // take allowed files from input
		var allowedfiles = filetype.replace(/\|/g,', '); // string allowed file
		var filesize = 0.5; //2MB
		var onlist = $(this).attr('data-file_types').indexOf(gettypeup) > -1;
		var checkinputfile = $(this).attr('type');
		numb = numb.toFixed(2);

		if (onlist && numb <= filesize) {
					$('#alert12').html('The file is uploaded').removeAttr('class').addClass('xd2'); //file OK
		   } else {
		   if(numb >= filesize && onlist){
		  $(this).val(''); //remove uploaded file
		      $('#alert12').html('Added file is too big \(' + numb + ' MB\) - max file size '+ filesize +' MB').removeAttr('class').addClass('xd'); //alert that file is too big, but type file is ok
		      } else if(numb < filesize && !onlist) {
		     $(this).val(''); //remove uploaded file
		      $('#alert12').html('An not allowed file format has been added \('+ gettypeup +') - allowed formats: ' + allowedfiles).removeAttr('class').addClass('xd'); //wrong type file
		      } else if(!onlist) {
		    $(this).val(''); //remove uploaded file
		      $('#alert12').html('An not allowed file format has been added \('+ gettypeup +') - allowed formats: ' + allowedfiles).removeAttr('class').addClass('xd'); //wrong type file
		      }
		   }
		})
		
</script>


<script>

/*------------------------------Upload Kannada Medium Certificate------------------------------*/
	
   var title = $( "#files1134" ).attr( "data-file_types" ).replace(/\|/g,', ');
	$( "#allowed-files" ).text( title );
	
	$('#files1134').on('change', function() {
		 var numb = $(this)[0].files[0].size/1024/1024; //count file size
		var resultid = $(this).val().split(".");
		var gettypeup  = resultid [resultid.length-1]; // take file type uploaded file
		var filetype = $(this).attr('data-file_types'); // take allowed files from input
		var allowedfiles = filetype.replace(/\|/g,', '); // string allowed file
		var filesize = 0.5; //2MB
		var onlist = $(this).attr('data-file_types').indexOf(gettypeup) > -1;
		var checkinputfile = $(this).attr('type');
		numb = numb.toFixed(2);

		if (onlist && numb <= filesize) {
					$('#alert128').html('The file is uploaded').removeAttr('class').addClass('xd2'); //file OK
		   } else {
		   if(numb >= filesize && onlist){
		  $(this).val(''); //remove uploaded file
		      $('#alert128').html('Added file is too big \(' + numb + ' MB\) - max file size '+ filesize +' MB').removeAttr('class').addClass('xd'); //alert that file is too big, but type file is ok
		      } else if(numb < filesize && !onlist) {
		     $(this).val(''); //remove uploaded file
		      $('#alert128').html('An not allowed file format has been added \('+ gettypeup +') - allowed formats: ' + allowedfiles).removeAttr('class').addClass('xd'); //wrong type file
		      } else if(!onlist) {
		    $(this).val(''); //remove uploaded file
		      $('#alert128').html('An not allowed file format has been added \('+ gettypeup +') - allowed formats: ' + allowedfiles).removeAttr('class').addClass('xd'); //wrong type file
		      }
		   }
		})
</script>


<script>

/*------------------------------Upload Person with Disability (PWD) Certificate------------------------------*/
	
   var title = $( "#files13" ).attr( "data-file_types" ).replace(/\|/g,', ');
	$( "#allowed-files" ).text( title );
	
	$('#files13').on('change', function() {
		 var numb = $(this)[0].files[0].size/1024/1024; //count file size
		var resultid = $(this).val().split(".");
		var gettypeup  = resultid [resultid.length-1]; // take file type uploaded file
		var filetype = $(this).attr('data-file_types'); // take allowed files from input
		var allowedfiles = filetype.replace(/\|/g,', '); // string allowed file
		var filesize = 0.5; //2MB
		var onlist = $(this).attr('data-file_types').indexOf(gettypeup) > -1;
		var checkinputfile = $(this).attr('type');
		numb = numb.toFixed(2);

		if (onlist && numb <= filesize) {
					$('#alert135').html('The file is uploaded').removeAttr('class').addClass('xd2'); //file OK
		   } else {
		   if(numb >= filesize && onlist){
		  $(this).val(''); //remove uploaded file
		      $('#alert135').html('Added file is too big \(' + numb + ' MB\) - max file size '+ filesize +' MB').removeAttr('class').addClass('xd'); //alert that file is too big, but type file is ok
		      } else if(numb < filesize && !onlist) {
		     $(this).val(''); //remove uploaded file
		      $('#alert135').html('An not allowed file format has been added \('+ gettypeup +') - allowed formats: ' + allowedfiles).removeAttr('class').addClass('xd'); //wrong type file
		      } else if(!onlist) {
		    $(this).val(''); //remove uploaded file
		      $('#alert135').html('An not allowed file format has been added \('+ gettypeup +') - allowed formats: ' + allowedfiles).removeAttr('class').addClass('xd'); //wrong type file
		      }
		   }
		})
		
		</script>
		
		<script>
		
		
		
		/*------------------------------Upload  PHD certificate------------------------------*/
	
   var title = $( "#files66" ).attr( "data-file_types" ).replace(/\|/g,', ');
	$( "#allowed-files" ).text( title );
	
	$('#files66').on('change', function() {
		 var numb = $(this)[0].files[0].size/1024/1024; //count file size
		var resultid = $(this).val().split(".");
		var gettypeup  = resultid [resultid.length-1]; // take file type uploaded file
		var filetype = $(this).attr('data-file_types'); // take allowed files from input
		var allowedfiles = filetype.replace(/\|/g,', '); // string allowed file
		var filesize = 0.5; //2MB
		var onlist = $(this).attr('data-file_types').indexOf(gettypeup) > -1;
		var checkinputfile = $(this).attr('type');
		numb = numb.toFixed(2);

		if (onlist && numb <= filesize) {
					$('#alert66').html('The file is uploaded').removeAttr('class').addClass('xd2'); //file OK
		   } else {
		   if(numb >= filesize && onlist){
		  $(this).val(''); //remove uploaded file
		      $('#alert66').html('Added file is too big \(' + numb + ' MB\) - max file size '+ filesize +' MB').removeAttr('class').addClass('xd'); //alert that file is too big, but type file is ok
		      } else if(numb < filesize && !onlist) {
		     $(this).val(''); //remove uploaded file
		      $('#alert66').html('An not allowed file format has been added \('+ gettypeup +') - allowed formats: ' + allowedfiles).removeAttr('class').addClass('xd'); //wrong type file
		      } else if(!onlist) {
		    $(this).val(''); //remove uploaded file
		      $('#alert66').html('An not allowed file format has been added \('+ gettypeup +') - allowed formats: ' + allowedfiles).removeAttr('class').addClass('xd'); //wrong type file
		      }
		   }
		})

		</script>
		
		<script>
		
	
		
		/*------------------------------Upload provisional PHD certificate------------------------------*/
	
   var title = $( "#files77" ).attr( "data-file_types" ).replace(/\|/g,', ');
	$( "#allowed-files" ).text( title );
	
	$('#files77').on('change', function() {
		 var numb = $(this)[0].files[0].size/1024/1024; //count file size
		var resultid = $(this).val().split(".");
		var gettypeup  = resultid [resultid.length-1]; // take file type uploaded file
		var filetype = $(this).attr('data-file_types'); // take allowed files from input
		var allowedfiles = filetype.replace(/\|/g,', '); // string allowed file
		var filesize = 0.5; //2MB
		var onlist = $(this).attr('data-file_types').indexOf(gettypeup) > -1;
		var checkinputfile = $(this).attr('type');
		numb = numb.toFixed(2);

		if (onlist && numb <= filesize) {
					$('#alert77').html('The file is uploaded').removeAttr('class').addClass('xd2'); //file OK
		   } else {
		   if(numb >= filesize && onlist){
		  $(this).val(''); //remove uploaded file
		      $('#alert77').html('Added file is too big \(' + numb + ' MB\) - max file size '+ filesize +' MB').removeAttr('class').addClass('xd'); //alert that file is too big, but type file is ok
		      } else if(numb < filesize && !onlist) {
		     $(this).val(''); //remove uploaded file
		      $('#alert77').html('An not allowed file format has been added \('+ gettypeup +') - allowed formats: ' + allowedfiles).removeAttr('class').addClass('xd'); //wrong type file
		      } else if(!onlist) {
		    $(this).val(''); //remove uploaded file
		      $('#alert77').html('An not allowed file format has been added \('+ gettypeup +') - allowed formats: ' + allowedfiles).removeAttr('class').addClass('xd'); //wrong type file
		      }
		   }
		})

			
		</script>	
		
		<script>
		
	
		
		/*------------------------------Upload Caste Income Certificate------------------------------*/
			
		 var title = $( "#files99" ).attr( "data-file_types" ).replace(/\|/g,', ');
	$( "#allowed-files" ).text( title );
	
	$('#files99').on('change', function() {
		 var numb = $(this)[0].files[0].size/1024/1024; //count file size
		var resultid = $(this).val().split(".");
		var gettypeup  = resultid [resultid.length-1]; // take file type uploaded file
		var filetype = $(this).attr('data-file_types'); // take allowed files from input
		var allowedfiles = filetype.replace(/\|/g,', '); // string allowed file
		var filesize = 0.5; //2MB
		var onlist = $(this).attr('data-file_types').indexOf(gettypeup) > -1;
		var checkinputfile = $(this).attr('type');
		numb = numb.toFixed(2);

		if (onlist && numb <= filesize) {
					$('#alert99').html('The file is uploaded').removeAttr('class').addClass('xd2'); //file OK
		   } else {
		   if(numb >= filesize && onlist){
		  $(this).val(''); //remove uploaded file
		      $('#alert99').html('Added file is too big \(' + numb + ' MB\) - max file size '+ filesize +' MB').removeAttr('class').addClass('xd'); //alert that file is too big, but type file is ok
		      } else if(numb < filesize && !onlist) {
		     $(this).val(''); //remove uploaded file
		      $('#alert99').html('An not allowed file format has been added \('+ gettypeup +') - allowed formats: ' + allowedfiles).removeAttr('class').addClass('xd'); //wrong type file
		      } else if(!onlist) {
		    $(this).val(''); //remove uploaded file
		      $('#alert99').html('An not allowed file format has been added \('+ gettypeup +') - allowed formats: ' + allowedfiles).removeAttr('class').addClass('xd'); //wrong type file
		      }
		   }
		})
		
		</script>
		
		<script>
		
		
		
		/*------------------------------Upload EXPERIENCE CERTIFICATE-----------------------------*/
	
   var title = $( "#files155" ).attr( "data-file_types" ).replace(/\|/g,', ');
	$( "#allowed-files" ).text( title );
	
	$('#files155').on('change', function() {
		 var numb = $(this)[0].files[0].size/1024/1024; //count file size
		var resultid = $(this).val().split(".");
		var gettypeup  = resultid [resultid.length-1]; // take file type uploaded file
		var filetype = $(this).attr('data-file_types'); // take allowed files from input
		var allowedfiles = filetype.replace(/\|/g,', '); // string allowed file
		var filesize = 0.5; //2MB
		var onlist = $(this).attr('data-file_types').indexOf(gettypeup) > -1;
		var checkinputfile = $(this).attr('type');
		numb = numb.toFixed(2);

		if (onlist && numb <= filesize) {
					$('#alert155e').html('The file is uploaded').removeAttr('class').addClass('xd2'); //file OK
		   } else {
		   if(numb >= filesize && onlist){
		  $(this).val(''); //remove uploaded file
		      $('#alert155e').html('Added file is too big \(' + numb + ' MB\) - max file size '+ filesize +' MB').removeAttr('class').addClass('xd'); //alert that file is too big, but type file is ok
		      } else if(numb < filesize && !onlist) {
		     $(this).val(''); //remove uploaded file
		      $('#alert155e').html('An not allowed file format has been added \('+ gettypeup +') - allowed formats: ' + allowedfiles).removeAttr('class').addClass('xd'); //wrong type file
		      } else if(!onlist) {
		    $(this).val(''); //remove uploaded file
		      $('#alert155e').html('An not allowed file format has been added \('+ gettypeup +') - allowed formats: ' + allowedfiles).removeAttr('class').addClass('xd'); //wrong type file
		      }
		   }
		})
		
		</script>
  
  <script>
  

		
		/*------------------------------Upload NET CERTIFICATE-----------------------------*/
	
   var title = $( "#files1net" ).attr( "data-file_types" ).replace(/\|/g,', ');
	$( "#allowed-files" ).text( title );
	
	$('#files1net').on('change', function() {
		 var numb = $(this)[0].files[0].size/1024/1024; //count file size
		var resultid = $(this).val().split(".");
		var gettypeup  = resultid [resultid.length-1]; // take file type uploaded file
		var filetype = $(this).attr('data-file_types'); // take allowed files from input
		var allowedfiles = filetype.replace(/\|/g,', '); // string allowed file
		var filesize = 0.5; //2MB
		var onlist = $(this).attr('data-file_types').indexOf(gettypeup) > -1;
		var checkinputfile = $(this).attr('type');
		numb = numb.toFixed(2);

		if (onlist && numb <= filesize) {
					$('#alertnet').html('The file is uploaded').removeAttr('class').addClass('xd2'); //file OK
		   } else {
		   if(numb >= filesize && onlist){
		  $(this).val(''); //remove uploaded file
		      $('#alertnet').html('Added file is too big \(' + numb + ' MB\) - max file size '+ filesize +' MB').removeAttr('class').addClass('xd'); //alert that file is too big, but type file is ok
		      } else if(numb < filesize && !onlist) {
		     $(this).val(''); //remove uploaded file
		      $('#alertnet').html('An not allowed file format has been added \('+ gettypeup +') - allowed formats: ' + allowedfiles).removeAttr('class').addClass('xd'); //wrong type file
		      } else if(!onlist) {
		    $(this).val(''); //remove uploaded file
		      $('#alertnet').html('An not allowed file format has been added \('+ gettypeup +') - allowed formats: ' + allowedfiles).removeAttr('class').addClass('xd'); //wrong type file
		      }
		   }
		})
		
	
	
</script>
</body>
</html>