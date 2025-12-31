<%@ page import="com.hiideals.jobForm.FormDetail"%>

<div class="form-body">
	<h1 class="form-section caption-subject font-red bold"
		style="TEXT-ALIGN: center !important;">Teaching Job Application
		Form</h1>

	<h3 class="form-section caption-subject font-blue bold uppercase"
		style="TEXT-ALIGN: center !important;">Personal Information</h3>

	<div class="row">
		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label col-md-3">Application Number<span
					style="color: red">*</span></label>
				<g:if test="${params?.action != "edit"}">
					<div class="col-md-9">
						<input readonly="readonly" type="text" class="form-control"
							name="apllicationNo" value="${apllicationNo}"
							placeholder="Apllication No">
					</div>
				</g:if>
				<g:else>
					<div class="col-md-9">
						<input readonly="readonly" type="text" class="form-control"
							name="apllicationNo" value="${formDetailInstance?.apllicationNo}"
							placeholder="Apllication No">
					</div>
				</g:else>
			</div>
		</div>
	</div>






	<div class="row">

		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label col-md-3">Applying For Post <span
					style="color: red">*</span></label>
				<div class="col-md-9">
					<select id="appliyingPost" name="appliyingPost"
						class="form-control"></select>
					<div id="appliypost" style="display: none; color: red;">Please
						select any one post</div>

				</div>
			</div>
		</div>
		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label col-md-3">Applying For Subject <span
					style="color: red">*</span></label>
				<div class="col-md-9">
					<select id="appliyingSub" name="appliyingSub" class="form-control"></select>
					<div id="appliysub" style="display: none; color: red;">
						Please select any one post</div>
				</div>
			</div>
		</div>


	</div>




	<!--/span-->
	<div class="row">
		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label col-md-3">First Name<span
					style="color: red">*</span></label>
				<div class="col-md-9">
					<input type="text" class="form-control" name="firstName"
						id="firstn" required value="${formDetailInstance?.firstName}">
					<%--<div id="fn1" style="display: none; color: red;">
						<label for="id" class="error"> First Name must be at least
							3 characters. e.g. Man </label>
					</div>
					--%>
					<div id="fn" style="display: none; color: red;">
						<label for="id" class="error">Please Enter Your First Name</label>
					</div>


				</div>
			</div>
		</div>

		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label col-md-3">Last Name</label>
				<div class="col-md-9">
					<input type="text" class="form-control" name="lastName"
						value="${formDetailInstance?.lastName}">
				</div>
			</div>
		</div>
	</div>

	<!--/span-->
	<div class="row">
		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label col-md-3">Father Name<span
					style="color: red">*</span></label>
				<div class="col-md-9">
					<input type="text" class="form-control" name="fName" id="fName"
						required value="${formDetailInstance?.fName}">
					<%--<div id="fan1" style="display: none; color: red;">
						<label for="id" class="error"> Father Name must be at
							least 3 characters. e.g. Man </label>
					</div>
					--%><div id="fan" style="display: none; color: red;">
						<label for="id" class="error">Please Enter Your Father
							Name</label>
					</div>
				</div>
			</div>
		</div>

		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label col-md-3">Mother Name<span
					style="color: red">*</span></label>
				<div class="col-md-9">
					<input type="text" class="form-control" name="mName" required
						value="${formDetailInstance?.mName}" id="mName">
					<%--<div id="man1" style="display: none; color: red;">
						<label for="id" class="error"> Mother Name must be at
							least 3 characters. e.g. Man </label>
					</div>--%>
					<div id="man" style="display: none; color: red;">
						<label for="id" class="error">Please Enter Your Mother
							Name</label>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="row">
		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label col-md-3">Gender<span
					style="color: red">*</span></label>
				<div class="col-md-9">
					<select id="gender" name="gender" class="form-control">
						<option value="" selected="selected">Select Gender</option>
						<option value="Male">Male</option>
						<option value="Female">Female</option>
						<option value="Other">Other</option>
					</select>
					<div id="gen" style="display: none; color: red;">Please
						select any one Gender</div>
				</div>
			</div>
		</div>

		<!--/span-->
		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label col-md-3">Email Id<span
					style="color: red">*</span></label>
				<div class="col-md-9">
					<input type="text" class="form-control" name="email" id="email"
						value="">
					<div id="Email1" style="display: none; color: red;">
						<label for="id" class="error"> Email Id must be at this
							formate. e.g. text@gmail.com </label>
					</div>
					<div id="Email" style="display: none; color: red;">
						<label for="id" class="error">Please Enter Your Email Id</label>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--/span-->

	<div class="row">


		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label col-md-3">Mobile Number<span
					style="color: red">*</span></label>
				<div class="col-md-9">
					<input type="text" class="form-control" name="phoneNumber"
						value="${formDetailInstance?.phoneNumber}" maxlength="10"
						id="pnumber">
					<div id="pnumber1" style="display: none; color: red;">
						<label for="id" class="error"> Mobile Number must be at
							this formate. e.g. 9856596565 </label>
					</div>
					<div id="pnumb" style="display: none; color: red;">
						<label for="id" class="error">Please Enter Your Mobile
							Number</label>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label col-md-3">House No.</label>
				<div class="col-md-9">
					<input type="text" class="form-control" name="hNo"
						value="${formDetailInstance?.hNo}">
				</div>
			</div>
		</div>
	</div>

	<div class="row">


		<!--/span-->
		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label col-md-3">Street</label>
				<div class="col-md-9">
					<input type="text" class="form-control" name="street"
						value="${formDetailInstance?.street}">
				</div>
			</div>
		</div>
		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label col-md-3">Village</label>
				<div class="col-md-9">
					<input type="text" class="form-control" name="village"
						value="${formDetailInstance?.village}">
				</div>
			</div>
		</div>
	</div>

	<div class="row">


		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label col-md-3">Taluka</label>
				<div class="col-md-9">
					<input type="text" class="form-control" name="taluka"
						value="${formDetailInstance?.taluka}">
				</div>
			</div>
		</div>
		<!--/span-->
		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label col-md-3">District<span
					style="color: red">*</span></label>
				<div class="col-md-9">
					<input type="text" class="form-control" name="district"
						value="${formDetailInstance?.district}" id="dist">
					<div id="dist1" style="display: none; color: red;">
						<label for="id" class="error"> District Name must be at
							least 3 characters Only. e.g.Bidar </label>
					</div>
					<div id="distc" style="display: none; color: red;">
						<label for="id" class="error">Please Enter Your District
							Name</label>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="row">
		<!--/span-->


		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label col-md-3">State<span
					style="color: red">*</span></label>
				<div class="col-md-9">
					<input type="text" class="form-control" name="state"
						value="${formDetailInstance?.state}" id="state">
					<div id="state1" style="display: none; color: red;">
						<label for="id" class="error"> State Name must be at least
							3 characters Only. e.g.Karnataka </label>
					</div>
					<div id="states" style="display: none; color: red;">
						<label for="id" class="error">Please Enter Your State Name</label>
					</div>
				</div>
			</div>
		</div>

		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label col-md-3">Pincode<span
					style="color: red">*</span></label>
				<div class="col-md-9">
					<input type="text" class="form-control" name="pinCode"
						value="${formDetailInstance?.pinCode}" id="pincode">
					<div id="pincode1" style="display: none; color: red;">
						<label for="id" class="error"> Pincode must be at this
							formate. e.g. 585403 </label>
					</div>
					<div id="pincodes" style="display: none; color: red;">
						<label for="id" class="error">Please Enter Your Pincode</label>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="row">
		<!--/span-->


		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label col-md-3">Nationality</label>
				<div class="col-md-9">
					<input type="text" class="form-control" name="country"
						value="Indian" readonly="">
				</div>
			</div>
		</div>
		<!--/span-->
		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label col-md-3">Social Category<span
					style="color: red">*</span></label>
				<div class="col-md-9">
					<select id="socialcategory" name="socialcategory"
						class="form-control">
						<option value="" selected="selected">Select Social
							Category</option>
						<option value="GM">GM</option>
						<option value="SC-A">SC-A</option>
						<option value="SC-B">SC-B</option>
						<option value="SC-C">SC-C</option>
						<option value="ST">ST</option>
						<option value="Cat-1">Cat-1</option>
						<option value="2A">2A</option>
						<option value="2B">2B</option>
						<option value="3A">3A</option>
						<option value="3B">3B</option>
					</select>
					<div id="socialcategory1" style="display: none; color: red;">
						Please select any one Social Category</div>
				</div>
			</div>
		</div>
	
	</div>
<div class="row">
		<div class="col-md-6">
	<div class="form-group" id="ssocialcategory">
		<label class="control-label col-md-3">RD No<span
					style="color: red">*</span></label>
				<div class="col-md-9">
					<input type="text" class="form-control" name="rdno" 
					value="${formDetailInstance?.rdno}">
		</div>
		</div>
		</div>
		
		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label col-md-3">Sub-Caste<span
					style="color: red">*</span></label>
				<div class="col-md-9">
					<input type="text" class="form-control" name="subcast"
						value="${formDetailInstance?.subcast}" id="subcast">
					<%--
					<div id="subcast1" style="display: none; color: red;">
						<label for="id" class="error"> Enter Subcast Name. </label>
					</div>
					--%>
					<div id="subcasts" style="display: none; color: red;">
						<label for="id" class="error">Please Enter Your Sub-Caste
							Name</label>
					</div>
				</div>
			</div>
		</div>
		
</div>
	<div class="row">


		

		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label col-md-3">Religion<span
					style="color: red">*</span></label>
				<div class="col-md-9">
					<select id="religion" name="religion" class="form-control">
						<option value="" selected="selected">Select Religion</option>
						<option value="Hindu">Hindu</option>
						<option value="Muslim">Muslim</option>
						<option value="Christian">Christian</option>
						<option value="Sikh">Sikh</option>
						<option value="Buddhist">Buddhist</option>
						<option value="Jain">Jain</option>
						<option value="Other Religions">Other Religions</option>
					</select>
					<div id="religion1" style="display: none; color: red;">
						Please select any one Religion</div>
				</div>
			</div>
		</div>
		
		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label col-md-3">KVC No.<span
					style="color: red">*</span></label>
				<div class="col-md-9">
					<input type="text" class="form-control" name="kvcNo" id="kvcn"
						value="${formDetailInstance?.kvcNo}">
					<div style="display: none; color: red;" id="kvcns">
						<label for="id" class="error">Please Enter Your KVC NO.</label>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="row">
		<!--/span-->


		

		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label col-md-3">KVC Validity Date:<span
					style="color: red">*</span></label>
				<div class="col-md-9">
					<input type="text" class="form-control date-picker1"
						name="fvcDate1" onkeydown="return false"
						value="${formatDate(format:'dd/MM/yyyy',date:formDetailInstance?.fvcDate)}"
						id="kvdate">
					<div style="display: none; color: red;" id="kvdates">
						<label for="id" class="error">Please Enter Your KVC Date.</label>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label col-md-3">Do you have NET
					Certificate?<span style="color: red">*</span>
				</label>
				<div class="col-md-9">
					<select id="neate" name="neteducation" class="form-control"
						validate-msg="Please select any One" required="required">
						<option value="" selected="selected">select</option>
						<option value="No">No</option>
						<option value="Yes">Yes</option>

					</select>
					<div style="display: none; color: red;" id="neates">
						<label for="id" class="error">Please Select Yes/No.</label>
					</div>
					<p style="display: none; color: red;" id="dvneat">Note:If "No"
						PhD is mandatory</p>
				</div>
			</div>
		</div>
		
	</div>
	<div class="row">

		

		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label col-md-3">Date of Birth<span
					style="color: red">*</span></label>
				<div class="col-md-9">
					<input type="text" class="form-control  " name="dob1" id="dob1"
						placeholder="mm/dd/yyyy"
						value="${formatDate(format:'dd/MM/yyyy',date:formDetailInstance?.dob)}">
					<div style="display: none; color: red;">
						<label for="id" class="error"> Date Of Birth must be at
							this formate. e.g. DD/MM/YYYY </label>
					</div>
					<div id="date" style="display: none; color: red;">
						<label for="id" class="error">Please Enter Your Date of
							Birth</label>
					</div>

				</div>
			</div>
		</div>
		
		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label col-md-3">Age<span
					style="color: red">*</span></label>
				<div class="col-md-9">
					<input type="text" class="form-control" name="age" id="agecal"
						readonly="readonly" style="font-weight: bold;"
						placeholder="0 Years,0 Months,0 Days">
				<span style="color:red"><b>Note: </b>If the applicant’s age exceeds the limit (GM: 38 years, OBC: 41 years, CAT-1/SC/ST: 43 years), they must select the appropriate Age Relaxation category if applicable. Otherwise, the application will be rejected.</span>
			
				</div>
			</div>
		</div>
	</div>

	<%-- id="date1" --%>




	<div class="row">
		

		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label col-md-3">Are you claiming Age
					Relaxation?<span style="color: red">*</span>
				</label>
				<div class="col-md-9">
					<select id="ddlPassport" name="ageRelax" class="form-control"
						validate-msg="Please select any One" required="required">
						<option value="No">No</option>
						<option value="Yes">Yes</option>

					</select>
				</div>
			</div>
		</div>
	</div>

	<div class="row">
		<div class="col-md-6">
			<div class="form-group" id="dvPassport" style="display: none">
				<label class="control-label col-md-3">Age Relaxation
					Category<span style="color: red">*</span>
				</label>
				<div class="col-md-9">
					<select id="txtPassportNumber" name="ageCat" class="form-control"
						validate-msg="Please select any One" required="required">
						<option select="selected">select</option>
						<option value="Physically Handicap">Physically Handicap</option>
						<option value="In-Service">In-Service</option>

					</select>
					<p style="display: none; color: red;" id="dvinservice">Note:Only
						regular government service can claim for In-service and must enter
						the details in experience section and upload the service
						certificate.</p>
				</div>
			</div>
		</div>
	</div>




	<h3 class="form-section caption-subject font-blue bold uppercase"
		style="TEXT-ALIGN: center !important;">Special Quotas</h3>

	<h6  style="color: red; font-size: 18px; TEXT-ALIGN: center">
		<b>Note:</b> All relevant certificates have to be mandatorily uploaded.
	</h6>
	<div class="row">
		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label col-md-3">Woman<span
					style="color: red">*</span></label>
				<div class="col-md-9">
					<select id="woman" name="woman" class="form-control"
						validate-msg="Please select any One" required="required">
						<option value="No">No</option>
						<option value="Yes">Yes</option>

					</select>
				</div>
			</div>
		</div>
		<!--/span-->
		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label col-md-3">Rural (1st to 10th
					Std)<span style="color: red">*</span>
				</label>
				<div class="col-md-9">
					<select id="ruralstdy" name="ruralstdy" class="form-control"
						validate-msg="Please select any One" required="required">
						<option value="No">No</option>
						<option value="Yes">Yes</option>
					</select>
					<p style="display: none; color: red;" id="dvrural">Note: For
						OBC Non-Creamy Layer Form1 and Form2 is mandatory.</p>
				</div>
			</div>
		</div>
	</div>


	<div class="row">
		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label col-md-3">Ex-Servicemen<span
					style="color: red">*</span></label>
				<div class="col-md-9">
					<select id="exServiceMan" name="exServiceMan" class="form-control"
						validate-msg="Please select any One" required="required">
						<option value="No">No</option>
						<option value="Yes">Yes</option>
					</select>
				</div>
			</div>
		</div>
		<!--/span-->
		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label col-md-3">Kannada Medium<span
					style="color: red">*</span></label>
				<div class="col-md-9">
					<select id="kannadaMedium" name="kannadaMedium"
						class="form-control" validate-msg="Please select any One"
						required="required">
						<option value="No">No</option>
						<option value="Yes">Yes
							</opti>
					</select>
				</div>
			</div>
		</div>
	</div>






	<div class="row">


		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label col-md-3">Person with Disability
					(PWD)<span style="color: red">*</span>
				</label>
				<div class="col-md-9">
					<select id="pwd" name="pwd" class="form-control"
						validate-msg="Please select any One" required="required">
						<option value="No">No</option>
						<option value="Yes">Yes</option>
					</select>
				</div>
			</div>
		</div>

		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label col-md-3">Kalyana-Karnataka
					(371J) Certificate<span style="color: red">*</span>
				</label>
				<div class="col-md-9">
					<select id="ddlkalyana" name="j371" class="form-control"
						validate-msg="Please select any One" required="required">
						<option value="No">No</option>
						<option value="Yes">Yes</option>
					</select>
				</div>
			</div>
		</div>
		<!--/span-->

	</div>

	<div class="col-md-6">
		<div class="form-group" id="dvKalyana2" style="display: none">
			<label class="control-label col-md-3">Kalyana-Karnataka
				(371J)Certificate RD No.<span style="color: red">*</span>
			</label>
			<div class="col-md-9">
				<input type="text" class="form-control" name="hkRDNO"
					value="${formDetailInstance?.hkRDNO}">

			</div>
		</div>
	</div>

	<div class="col-md-6">
		<div class="form-group" id="dvKalyana" style="display: none">
			<label class="control-label col-md-3">Kalyana-Karnataka
				(371J) Certificate Issue Date:<span style="color: red">*</span>
			</label>
			<div class="col-md-9">
				<input type="text" min="2023-02-28" class="form-control date-picker"
					name="hkIssueDate1" onkeydown="return false" value="11/11/1111"
					value="${formatDate(format:'dd/MM/yyyy',date:formDetailInstance?.hkIssueDate)}">
			</div>
		</div>
	</div>







	
</div>



<div class="row">
	<div class="col-md-12">
		<div class="form-group">
			<p class="control-label col-md-4"
				style="margin-left: -250px; color: red;"></p>
			<br>

		</div>
		<div class="col-md-12">
			<div class="form-group">
				<p class="control-label col-md-9"
					style="color: red; font-size: 16px;">
					<b>Note:</b> Please verify all the details before saving.
				</p>
			</div>
			<div class="col-md-12">
				<div class="form-group">
					<label class="control-label col-md-9"
						style="margin-left: -458px; color: red; font-size: 16px;">
						Once Saved details can't be edited. </label>

				</div>
			</div>
		</div>
	</div>
</div>



</div>






