<!DOCTYPE html>
<!-- 
Template Name: Metronic - Responsive Admin Dashboard Template build with Twitter Bootstrap 3.3.7
Version: 4.7.5
Author: KeenThemes
Website: http://www.keenthemes.com/
Contact: support@keenthemes.com
Follow: www.twitter.com/keenthemes
Dribbble: www.dribbble.com/keenthemes
Like: www.facebook.com/keenthemes
Purchase: http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes
Renew Support: http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes
License: You must have a valid license purchased only from themeforest(the above link) in order to legally use the theme for your project.
-->
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<!-- BEGIN HEAD -->

<head>
<meta charset="utf-8" />
<title>KVAFSU Application</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1" name="viewport" />
<meta content="Animate Research" name="description" />
<meta content="" name="author" />
<!-- BEGIN GLOBAL MANDATORY STYLES -->

<link
	href="../assets1/global/plugins/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="../assets1/global/plugins/simple-line-icons/simple-line-icons.min.css"
	rel="stylesheet" type="text/css" />
<link href="../assets1/global/plugins/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="../assets1/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css"
	rel="stylesheet" type="text/css" />
<!-- END GLOBAL MANDATORY STYLES -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<link href="../assets1/global/plugins/select2/css/select2.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="../assets1/global/plugins/select2/css/select2-bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN THEME GLOBAL STYLES -->
<link href="../assets1/global/css/components-rounded.min.css"
	rel="stylesheet" id="style_components" type="text/css" />
<link href="../assets1/global/css/plugins.min.css" rel="stylesheet"
	type="text/css" />
<!-- END THEME GLOBAL STYLES -->
<!-- BEGIN PAGE LEVEL STYLES -->
<link href="../assets1/pages/css/login.min.css" rel="stylesheet"
	type="text/css" />
<!-- END PAGE LEVEL STYLES -->
<!-- BEGIN THEME LAYOUT STYLES -->
<!-- END THEME LAYOUT STYLES -->
<link rel="shortcut icon" href="../assets1/global/img/Kvfsu.png" />
</head>
<!-- END HEAD -->

<body class=" login"
	style="background-image: url('../assets1/pages/img/B6.png'); background-repeat: no-repeat; background-attachment: fixed; background-position: center; background-size: cover; position: relative; margin: -78px auto 0 !important;">
	<!-- BEGIN LOGO -->
	<div class="logo">
		<a href="index.html"> <img
			src="../assets1/layouts/layout3/img/jobport.png" alt=""
			style="width: 100%;" />
		</a>
	</div>
	<!-- END LOGO -->
	<!-- BEGIN LOGIN -->
	<div class="content">

		<g:if test="${flash.message}">
			<div class="alert alert-warning" id="mydiv">
				<div class="text-center uppercase" style="color: #000;"
					role="status">
					<b> ${flash.message}
					</b>
				</div>
			</div>
		</g:if>
		<!-- BEGIN LOGIN FORM -->
		<form class="login-form" action='${postUrl}' method='POST'
			autocomplete='off' id="text">
			<h3 class="form-title font-green">Login</h3>
			<div class="form-group">
				<!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
				<label class="control-label visible-ie8 visible-ie9">Username</label>
				<input class="form-control form-control-solid placeholder-no-fix"
					type="text" autocomplete="off" placeholder="Username"
					name='j_username' id='username' />
			</div>
			<div class="form-group">
				<label class="control-label visible-ie8 visible-ie9">Password</label>
				<input class="form-control form-control-solid placeholder-no-fix"
					type="password" autocomplete="off" placeholder="Password"
					name='j_password' id='password' />
			</div>
			<div class="form-actions">
				<button type="submit" id="submit" class="btn green uppercase"
					style="background-color: #1740c2 !important; border-color: #86cd92 !important;"
					value='${message(code: "springSecurity.login.button")}'>
					Login</button>
			</div>

			<div class="create-account"
				style="background-color: #0c0c0c !important;">
				<p>
					<a href="javascript:;" id="register-btn" class="uppercase"
						style="font-size: 16px; color: #ffd600;">Register Here</a>
				</p>
			</div>



		</form>
		<!-- END LOGIN FORM -->
		<!-- BEGIN FORGOT PASSWORD FORM -->


		<form class="forget-form" action="index.html" method="post">
			<h3 class="font-green">Forget Password ?</h3>
			<p>Enter your e-mail address below to reset your password.</p>
			<div class="form-group">
				<input class="form-control placeholder-no-fix" type="text"
					autocomplete="off" placeholder="Email" name="email" />
			</div>
			<div class="form-actions">
				<button type="button" id="back-btn" class="btn green btn-outline">Back</button>
				<button type="submit" class="btn btn-success uppercase pull-right">Submit</button>
			</div>
		</form>
		<!-- END FORGOT PASSWORD FORM -->
		<!-- BEGIN REGISTRATION FORM -->
		<g:form class="register-form" controller="commanUsers"
			enctype="multipart/form-data" name="validateip">
			<h3 class="font-green">Registration</h3>

			<div class="form-group">
				<label class="control-label visible-ie8 visible-ie9">User
					Name</label>

				<g:if test="${params?.action !="adminEdit"}">
					<g:textField name="username" class="form-control"
						placeholder="Username" value="${usersInstance?.username}"
						required="true" />
				</g:if>
				<g:else>
					<input name="username" class="form-control" placeholder="User Name"
						type="text" value="${usersInstance?.username}" />
				</g:else>

			</div>
			<div class="form-group">
				<!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
				<label class="control-label visible-ie8 visible-ie9">Password</label>
				<g:if test="${params?.action !="adminEdit"}">
					<input name="password" class="form-control" type="password"
						value="${usersInstance?.password}" required="true"
						placeholder="Password" />
				</g:if>
				<g:else>
					<input name="password" class="form-control" type="password"
						value="${usersInstance?.password}" placeholder="Password" />
				</g:else>

			</div>
			<div class="form-group">
				<label class="control-label visible-ie8 visible-ie9">Phone
					No</label> <input name="phoneNo" class="form-control"
					value="${usersInstance?.phoneNo}" required="true" type="text"
					placeholder="Mobile No" pattern="[6789][0-9]{9}" />
			</div>
			<div class="form-group">
				<label class="control-label visible-ie8 visible-ie9">Email
					id </label> <input name=email class="form-control "
					value="${usersInstance?.address?.email}" type="text"
					placeholder="Email Id"
					pattern="[a-zA-Z0-9.-_]{1,}@[a-zA-Z.-]{2,}[.]{1}[a-zA-Z]{2,}"
					required />
			</div>


			<div class="form-group">
				<label class="control-label visible-ie8 visible-ie9">City</label> <input
					name="city" value="${usersInstance?.address?.city}"
					class="form-control " placeholder="City" type="text" />
			</div>

			<div class="form-group">
				<label class="control-label visible-ie8 visible-ie9">State </label>
				<input name="state" value="${usersInstance?.address?.state}"
					class="form-control " placeholder="State " type="text" />
			</div>
			<g:if test="${params?.action !="adminEdit"}">
				<div class="form-group">
					<label class="control-label visible-ie8 visible-ie9">Country
					</label> <input name="country" class="form-control " placeholder="Country "
						value="India" readonly="" type="text" />
				</div>
				<div class="form-group" style="display: none;">
					<label class="control-label visible-ie8 visible-ie9">Upload
						Image</label> <input type="file" class="form-control "
						placeholder="Student Contact Number" name="file_1" value=""
						placeholder="Upload Image name">
				</div>
				<label class="mt-checkbox mt-checkbox-outline"> <input
					type="checkbox" name="tnc" data-toggle="modal"
					data-target="#exampleModalLong" /> I agree to the Terms and
					Conditions mentioned by KVAFSU.<span></span>
				</label>
				<div id="register_tnc_error"></div>

				<div class="form-group margin-top-20 margin-bottom-20">
					<div class="g-recaptcha"
						data-sitekey="6Lel4Z4UAAAAAOa8LO1Q9mqKRUiMYl_00o5mXJrR"
						required="required"></div>

				</div>
				<div class="form-actions">
					<button type="button" id="register-back-btn"
						class="btn green btn-outline">Back to Login</button>

					<g:actionSubmit action="SaveCommanUsers"
						class="btn btn-success uppercase pull-right"
						style="background-color: #1740c2 !important; border-color: #86cd92 !important;"
						value="Submit"></g:actionSubmit>
					<%--
				<button type="submit" id="register-submit-btn"
					class="btn btn-success uppercase pull-right">Submit</button>
			--%>
				</div>
			</g:if>
			<g:else>
				<div class="col-md-3">
					<label>Upload Image</label> <input type="file"
						class="form-control " placeholder="Student Contact Number"
						name="file_1" value="">
				</div>
				<br>
				<g:hiddenField name="userListid" value="${usersInstance?.id}" />
				<g:actionSubmit action="updateCommanUsers" class="btn btn-primary"
					value="Update Details"></g:actionSubmit>
			</g:else>
		</g:form>





		<!-- END REGISTRATION FORM -->
	</div>

	<!-- Modal -->
	<div class="modal fade" id="exampleModalLong" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalLongTitle"
		aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLongTitle">Terms and
						Conditions</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<p>1) This website is designed, developed and maintained by
						Karnataka Veterinary,Animal and Fisheries Sciences
						University,Nandinagar,Bidar.</p>
					<p>2) Though all efforts have been made to ensure the accuracy
						and currency of the content on this website, the same should not
						be construed as a statement of law or used for any legal purposes.
						In case of any ambiguity or doubts, users are advised to
						verify/check with the Department(s) and/or other source(s), and to
						obtain appropriate professional advice.</p>
					<p>3) Under no circumstances will this Department be liable for
						any expense, loss or damage including, without limitation,
						indirect or consequential loss or damage, or any expense, loss or
						damage whatsoever arising from use, or loss of use, of data,
						arising out of or in connection with the use of this website.</p>
					<p>4) These terms and conditions shall be governed by and
						construed in accordance with the Indian Laws. Any dispute arising
						under these terms and conditions shall be subject to the
						jurisdiction of the courts of India.</p>
					<p>5) The information posted on this website could include
						hypertext links or pointers to information created and maintained
						by non-Government/private organisations. Government Of Karnataka
						is providing these links and pointers solely for your information
						and convenience. When you select a link to an outside website, you
						are leaving the Government of Karnataka website and are subject to
						the privacy and security policies of the owners/sponsors of the
						outside website.</p>
					<p>6) (Name of Department), does not guarantee the availability
						of such linked pages at all times.</p>
					<p>7) (Name of Department), cannot authorise the use of
						copyrighted materials contained in linked websites. Users are
						advised to request such authorisation from the owner of the linked
						website.</p>
					<p>8) (Name of Department), does not guarantee that linked
						websites comply with Indian Government Web
						Guidelines.&ZeroWidthSpace;</p>
					<p>I have read and understood all the terms and conditions
						mentioned by KVAFSU.</p>
					<p>I will accept all the terms and conditions.</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>



	<!--[if lt IE 9]>
<script src="../assets1/global/plugins/respond.min.js"></script>
<script src="../assets1/global/plugins/excanvas.min.js"></script> 
<script src="../assets1/global/plugins/ie8.fix.min.js"></script> 
<![endif]-->
	<!-- BEGIN CORE PLUGINS -->
	<script src="../assets1/global/plugins/jquery.min.js"
		type="text/javascript"></script>
	<script src="../assets1/global/plugins/bootstrap/js/bootstrap.min.js"
		type="text/javascript"></script>
	<script src="../assets1/global/plugins/js.cookie.min.js"
		type="text/javascript"></script>
	<script
		src="../assets1/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js"
		type="text/javascript"></script>
	<script src="../assets1/global/plugins/jquery.blockui.min.js"
		type="text/javascript"></script>
	<script
		src="../assets1/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js"
		type="text/javascript"></script>
	<!-- END CORE PLUGINS -->
	<!-- BEGIN PAGE LEVEL PLUGINS -->
	<script
		src="../assets1/global/plugins/jquery-validation/js/jquery.validate.min.js"
		type="text/javascript"></script>
	<script
		src="../assets1/global/plugins/jquery-validation/js/additional-methods.min.js"
		type="text/javascript"></script>
	<script src="../assets1/global/plugins/select2/js/select2.full.min.js"
		type="text/javascript"></script>
	<!-- END PAGE LEVEL PLUGINS -->
	<!-- BEGIN THEME GLOBAL SCRIPTS -->
	<script src="../assets1/global/scripts/app.min.js"
		type="text/javascript"></script>
	<!-- END THEME GLOBAL SCRIPTS -->
	<!-- BEGIN PAGE LEVEL SCRIPTS -->
	<script src="../assets1/pages/scripts/login.min.js"
		type="text/javascript"></script>
	<script src="https://www.google.com/recaptcha/api.js" async defer></script>
	<!-- END PAGE LEVEL SCRIPTS -->
	<!-- BEGIN THEME LAYOUT SCRIPTS -->
	<!-- END THEME LAYOUT SCRIPTS -->
	<script>
		$(document).ready(function() {
			$('#clickmewow').click(function() {
				$('#radio1003').attr('checked', 'checked');
			});
		})
	</script>
	<script>
		document.getElementById("text").addEventListener("keyup", function(e) {
			if (e.keyCode === 13) {
				document.getElementById("submit").click();
			}
		});
		document.getElementById("submit").onclick = function() {
			document.getElementById("submit").click();
		}
	</script>

</body>

</html>