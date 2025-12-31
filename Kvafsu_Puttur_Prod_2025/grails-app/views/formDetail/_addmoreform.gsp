<%@ page import="com.hiideals.jobForm.FormDetail"%>
<input type="hidden" name="formId" value="${formdt?.id }">
<div class="form-body">
	<h1 class="form-section caption-subject font-red bold"
		style="TEXT-ALIGN: center !important;">Teaching Job Application
		Form</h1>

	<div class="row">
		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label col-md-6">Application Number : <span
					style="color: red; font-weight: bold">
						${formdt?.apllicationNo}
				</span></label>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-6">
			<div class="form-group">
				<p
					style="color: red; text-align: center; margin-left: -20px; font-size: 15px;">
					<b>Note:Examples are only for reference.</b><br/>
					<b>Note:All text fields length must be less than 250 characters </b>
				</p>
			</div>
		</div>
	</div>

	<h4 class="form-section caption-subject font-red-sunglo bold uppercase"
		style="TEXT-ALIGN: center !important;">Achievements in Sports &
		Cultural / NCC / NSS / Scouts & Guides Activities</h4>
	<div class="input_fields_wrap5">
		<div class="row">
			<div class="col-md-6">
				<div class="form-group">
					<label class="control-label col-md-3">Types</label>
					<g:if test="${params?.action != "edit"}">
						<div class="col-md-9">

							<select class="form-control" name="typeAchievement" value="">
								<option value="" selected="selected">Select Type</option>
								<option value="Sports and Cultural">Sports and Cultural</option>
								<option value="NCC">NCC</option>
								<option value="NSS">NSS</option>
								<option value="Scouts And Guides">Scouts And Guides</option>
							</select>
						</div>

					</g:if>
					<g:else>
						<div class="col-md-9">
							<input type="text" class="form-control" name="typeAchievement"
								value="${formDetailInstance?.achievements1?.typeAchievement.last()}">
						</div>
					</g:else>
				</div>
			</div>

			<div class="col-md-6">
				<div class="form-group">
					<label class="control-label col-md-3">Particulars / Event</label>
					<g:if test="${params?.action != "edit"}">
						<div class="col-md-9">
							<input type="text" class="form-control" name="particularsEvent" maxlength="250"
								value="${formDetailInstance?.achievements1?.particularsEvent}">
						</div>
					</g:if>
					<g:else>
						<div class="col-md-9">
							<input type="text" class="form-control" name="particularsEvent"
								value="${formDetailInstance?.achievements1?.particularsEvent.last()}">
						</div>
					</g:else>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-6">
				<div class="form-group">
					<label class="control-label col-md-3">Period & Duration</label>
					<g:if test="${params?.action != "edit"}">
						<div class="col-md-9">
							<input type="text" class="form-control" name="periodDuration"
								value="${formDetailInstance?.achievements1?.periodDuration}">
						</div>
					</g:if>
					<g:else>
						<div class="col-md-9">
							<input type="text" class="form-control" name="periodDuration"
								value="${formDetailInstance?.achievements1?.periodDuration.last()}">
						</div>
					</g:else>
				</div>
			</div>



			<!--/span-->
			<div class="col-md-6">
				<div class="form-group">
					<label class="control-label col-md-3">Level</label>
					<g:if test="${params?.action != "edit"}">
						<div class="col-md-9">

							<select class="form-control" name="level" value="">
								<option value="" selected="selected">Select Type</option>
								<option value="International">International</option>
								<option value="National">National</option>
								<option value="University Level">University Level</option>
								<option value="A Certificate">A Certificate</option>
								<option value="B Certificate">B Certificate</option>
								<option value="C Certificate">C Certificate</option>
								<option value="Other">Other</option>

							</select>
						</div>
					</g:if>
					<g:else>
						<div class="col-md-9">
							<select class="form-control" name="level" value="">
								<option value="" selected="selected">Select Type</option>
								<option value="International">International</option>
								<option value="National">National</option>
								<option value="University Level">University Level</option>
								<option value="A Certificate">A Certificate</option>
								<option value="B Certificate">B Certificate</option>
								<option value="C Certificate">C Certificate</option>
								<option value="Other">Other</option>
							</select>
						</div>
					</g:else>
				</div>
			</div>
			<!--/span-->
		</div>
		<input type="hidden" value="1" id="ty" name="ty" class="ty">
	</div>


	<div class="row">
		<div class="col-md-4" style="text-align: center;">
			<g:hiddenField name="reportId" value="${formDetailInstance?.id}" />
			&emsp;&emsp;
			<g:actionSubmit class="btn yellow" id="add_field_button5"
				value="Add More"></g:actionSubmit>
		</div>
	</div>

	<div class="row">
		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label col-md-12"><span
					style="color: red; font-weight: bold">Note:Refer the
						example, To add multiple similar items. And Please do add all the
						related documents in the common Zip file in "Documents section" <a
						class="btn btn-transparent blue btn-outline btn-circle btn-sm active"
						style="width: 100px;" data-target="#details" data-toggle="modal">Example</a>
				</span></label>
			</div>

		</div>
	</div>


	<h4 class="form-section caption-subject font-red-sunglo bold uppercase"
		style="TEXT-ALIGN: center !important;">Special Attainment in
		Academic Field</h4>
	<div class="input_fields_wrap6">
		<div class="row">
			<div class="col-md-6">
				<div class="form-group">
					<label class="control-label col-md-3">Particular</label>
					<g:if test="${params?.action != "edit"}">
						<div class="col-md-9">
							<input type="text" class="form-control" name="particular" maxlength="250"
								value="${formDetailInstance?.specialAttainment1?.particular}">

						</div>

					</g:if>
					<g:else>
						<div class="col-md-9">
							<input type="text" class="form-control" name="particular"
								value="${formDetailInstance?.specialAttainment1?.particular.last()}">
						</div>
					</g:else>
				</div>
			</div>

			<div class="col-md-6">
				<div class="form-group">
					<label class="control-label col-md-3">Cadre</label>
					<g:if test="${params?.action != "edit"}">
						<div class="col-md-9">

							<select class="form-control" name="cadre" value="">
								<option value="" selected="selected">Select Type</option>
								<option value="Assistant Professor">Assistant Professor</option>
								<option value="Associate Professor ">Associate
									Professor</option>
								<option value="Professor">Professor</option>

							</select>

						</div>
					</g:if>
					<g:else>
						<div class="col-md-9">
							<input type="text" class="form-control" name="cadre"
								value="${formDetailInstance?.specialAttainment1?.cadre.last()}">
						</div>
					</g:else>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-6">
				<div class="form-group">
					<label class="control-label col-md-3">Year</label>
					<g:if test="${params?.action != "edit"}">
						<div class="col-md-9">
							<input type="text" class="form-control" name="year"
								value="${formDetailInstance?.specialAttainment1?.year}">
						</div>
					</g:if>
					<g:else>
						<div class="col-md-9">
							<input type="text" class="form-control" name="year"
								value="${formDetailInstance?.specialAttainment1?.year.last()}">
						</div>
					</g:else>
				</div>
			</div>



			<!--/span-->
			<div class="col-md-6">
				<div class="form-group">
					<label class="control-label col-md-3">Details</label>
					<g:if test="${params?.action != "edit"}">
						<div class="col-md-9">
							<input type="text" class="form-control" name="details" maxlength="250"
								value="${formDetailInstance?.specialAttainment1?.details}">
						</div>
					</g:if>
					<g:else>
						<div class="col-md-9">
							<input type="text" class="form-control" name="details"
								value="${formDetailInstance?.specialAttainment1?.details.last()}">
						</div>
					</g:else>
				</div>
			</div>
			<!--/span-->
		</div>
		<input type="hidden" value="1" id="ty" name="ty" class="ty">
	</div>


	<div class="row">
		<div class="col-md-4" style="text-align: center;">
			<g:hiddenField name="reportId" value="${formDetailInstance?.id}" />
			&emsp;&emsp;
			<g:actionSubmit class="btn yellow" id="add_field_button6"
				value="Add More"></g:actionSubmit>
		</div>
	</div>

	<div class="row">
		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label col-md-12"><span
					style="color: red; font-weight: bold">Note:Refer the
						example, To add multiple similar items. And Please do add all the
						related documents in the common Zip file in "Documents section"<a
						class="btn btn-transparent blue btn-outline btn-circle btn-sm active"
						style="width: 100px;" data-target="#details2" data-toggle="modal">Example</a>
				</span></label>
			</div>
		</div>
	</div>

	<h4 class="form-section caption-subject font-red-sunglo bold uppercase"
		style="TEXT-ALIGN: center !important;">Patent / Technology / App
		Developed</h4>
	<div class="input_fields_wrap7">
		<div class="row">
			<div class="col-md-6">
				<div class="form-group">
					<label class="control-label col-md-3">Details</label>
					<g:if test="${params?.action != "edit"}">
						<div class="col-md-9">
							<input type="text" class="form-control" name="details1" maxlength="250"
								value="${formDetailInstance?.patent1?.details1}">
						</div>

					</g:if>
					<g:else>
						<div class="col-md-9">
							<input type="text" class="form-control" name="details1"
								value="${formDetailInstance?.patent1?.details1.last()}">
						</div>
					</g:else>
				</div>
			</div>

			<div class="col-md-6">
				<div class="form-group">
					<label class="control-label col-md-3">Year</label>
					<g:if test="${params?.action != "edit"}">
						<div class="col-md-9">
							<input type="text" class="form-control" name="year1"
								value="${formDetailInstance?.patent1?.year1}">
						</div>
					</g:if>
					<g:else>
						<div class="col-md-9">
							<input type="text" class="form-control" name="year1"
								value="${formDetailInstance?.patent1?.year1.last()}">
						</div>
					</g:else>
				</div>
			</div>
		</div>
		<input type="hidden" value="1" id="ty" name="ty" class="ty">
	</div>
	<div class="row">
		<div class="col-md-4" style="text-align: center;">
			<g:hiddenField name="reportId" value="${formDetailInstance?.id}" />
			&emsp;&emsp;
			<g:actionSubmit class="btn yellow" id="add_field_button7"
				value="Add More"></g:actionSubmit>
		</div>
	</div>


	<div class="row">
		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label col-md-12"><span
					style="color: red; font-weight: bold">Note:The relevant
						documents must be attached in the common "Zip file" in documents
						section.</span></label>
			</div>
		</div>
	</div>



	<h4 class="form-section caption-subject font-red-sunglo bold uppercase"
		style="TEXT-ALIGN: center !important;">Externally Funded Projects</h4>
	<div class="input_fields_wrap8">
		<div class="row">
			<div class="col-md-6">
				<div class="form-group">
					<label class="control-label col-md-3">Project Title</label>
					<g:if test="${params?.action != "edit"}">
						<div class="col-md-9">
							<input type="text" class="form-control" name="projectTitle" maxlength="250"
								value="${formDetailInstance?.fproject?.projectTitle}">
						</div>

					</g:if>
					<g:else>
						<div class="col-md-9">
							<input type="text" class="form-control" name="projectTitle"
								value="${formDetailInstance?.fproject?.projectTitle.last()}">
						</div>
					</g:else>
				</div>
			</div>

			<div class="col-md-6">
				<div class="form-group">
					<label class="control-label col-md-3">Cadre</label>
					<g:if test="${params?.action != "edit"}">
						<div class="col-md-9">

							<select class="form-control" name="cadre2" value="">
								<option value="" selected="selected">Select Type</option>
								<option value="Assistant Professor">Assistant Professor</option>
								<option value="Associate Professor ">Associate
									Professor</option>
								<option value="Professor">Professor</option>

							</select>
						</div>
					</g:if>
					<g:else>
						<div class="col-md-9">
							<select class="form-control" name="cadre2" value="">
								<option value="" selected="selected">Select Type</option>
								<option value="Assistant Professor">Assistant Professor</option>
								<option value="Associate Professor ">Associate
									Professor</option>
								<option value="Professor">Professor</option>

							</select>
						</div>
					</g:else>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-6">
				<div class="form-group">
					<label class="control-label col-md-3">Details</label>
					<g:if test="${params?.action != "edit"}">
						<div class="col-md-9">
							<input type="text" class="form-control" name="details2" maxlength="250"
								value="${formDetailInstance?.fproject?.details2}">
						</div>

					</g:if>
					<g:else>
						<div class="col-md-9">
							<input type="text" class="form-control" name="details2"
								value="${formDetailInstance?.fproject?.details2.last()}">
						</div>
					</g:else>
				</div>
			</div>

			<div class="col-md-6">
				<div class="form-group">
					<label class="control-label col-md-3">Project Outlay</label>
					<g:if test="${params?.action != "edit"}">
						<div class="col-md-9">

							<select class="form-control" name="projectOutlay" value="">
								<option value="" selected="selected">Select Type</option>
								<option value="2 Lakh to 5 Lakh">2 Lakh to 5 Lakh</option>
								<option value="5 Lakh to 10 Lakh ">5 Lakh to 10 Lakh</option>
								<option value="Above 10 Lakh">Above 10 Lakh</option>

							</select>
						</div>
					</g:if>
					<g:else>
						<div class="col-md-9">
							<input type="text" class="form-control" name="projectOutlay"
								value="${formDetailInstance?.fproject?.projectOutlay.last()}"
								placeholder="Yes / No">
						</div>
					</g:else>
				</div>
			</div>
		</div>

		<input type="hidden" value="1" id="ty" name="ty" class="ty">
	</div>
	<div class="row">
		<div class="col-md-4" style="text-align: center;">
			<g:hiddenField name="reportId" value="${formDetailInstance?.id}" />
			&emsp;&emsp;
			<g:actionSubmit class="btn yellow" id="add_field_button8"
				value="Add More"></g:actionSubmit>
		</div>
	</div>

	<div class="row">
		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label col-md-12"><span
					style="color: red; font-weight: bold">Note:Refer the
						example, To add multiple similar items. And Please do add all the
						related documents in the common Zip file in "Documents section" <a
						class="btn btn-transparent blue btn-outline btn-circle btn-sm active"
						style="width: 100px;" data-target="#details3" data-toggle="modal">Example</a>
				</span></label>
			</div>
		</div>
	</div>


	<h4 class="form-section caption-subject font-red-sunglo bold uppercase"
		style="TEXT-ALIGN: center !important;">Workshops/Trainings</h4>
	<div class="input_fields_wrap9">
		<div class="row">
			<div class="col-md-6">
				<div class="form-group">
					<label class="control-label col-md-3">Type</label>

					<div class="col-md-9">

						<select class="form-control" name="type10" value="">
							<option value="" selected="selected">Select Type</option>

							<option value="Organized">Organized</option>
							<option value="Participated">Participated</option>

						</select>
					</div>

				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-6">
				<div class="form-group">
					<label class="control-label col-md-3">Particulars</label>
					<g:if test="${params?.action != "edit"}">
						<div class="col-md-9">
							<input type="text" class="form-control" name="particulars3" maxlength="250"
								value="${formDetailInstance?.wshop?.particulars3}">
						</div>

					</g:if>
					<g:else>
						<div class="col-md-9">
							<input type="text" class="form-control" name="particulars3"
								value="${formDetailInstance?.wshop?.particulars3.last()}">
						</div>
					</g:else>
				</div>
			</div>

			<div class="col-md-6">
				<div class="form-group">
					<label class="control-label col-md-3">Level</label>
					<g:if test="${params?.action != "edit"}">
						<div class="col-md-9">

							<select class="form-control" name="level3" value="">
								<option value="" selected="selected">Select Type</option>
								<option value="International">International</option>
								<option value="National">National</option>
								<option value="University Level">University Level</option>

							</select>
						</div>
					</g:if>
					<g:else>
						<div class="col-md-9">
							<select class="form-control" name="level3" value="">
								<option value="" selected="selected">Select Type</option>
								<option value="International">International</option>
								<option value="National">National</option>
								<option value="University Level">University Level</option>

							</select>
						</div>
					</g:else>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-6">
				<div class="form-group">
					<label class="control-label col-md-3">Details</label>
					<g:if test="${params?.action != "edit"}">
						<div class="col-md-9">
							<input type="text" class="form-control" name="details3" maxlength="250"
								value="${formDetailInstance?.wshop?.details3}">
						</div>

					</g:if>
					<g:else>
						<div class="col-md-9">
							<input type="text" class="form-control" name="details3"
								value="${formDetailInstance?.wshop?.details3.last()}">
						</div>
					</g:else>
				</div>
			</div>

			<div class="col-md-6">
				<div class="form-group">
					<label class="control-label col-md-3">Year</label>
					<g:if test="${params?.action != "edit"}">
						<div class="col-md-9">
							<input type="text" class="form-control" name="year3"
								value="${formDetailInstance?.wshop?.year3}">
						</div>
					</g:if>
					<g:else>
						<div class="col-md-9">
							<input type="text" class="form-control" name="year3"
								value="${formDetailInstance?.wshop?.year3.last()}">
						</div>
					</g:else>
				</div>
			</div>
		</div>
		<input type="hidden" value="1" id="ty" name="ty" class="ty">
	</div>

	<div class="row">
		<div class="col-md-4" style="text-align: center;">
			<g:hiddenField name="reportId" value="${formDetailInstance?.id}" />
			&emsp;&emsp;
			<g:actionSubmit class="btn yellow" id="add_field_button9"
				value="Add More"></g:actionSubmit>
		</div>
	</div>

	<div class="row">
		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label col-md-12"><span
					style="color: red; font-weight: bold">Note:Refer the
						example, To add multiple similar items. And Please do add all the
						related documents in the common Zip file in "Documents section" <a
						class="btn btn-transparent blue btn-outline btn-circle btn-sm active"
						style="width: 100px;" data-target="#details4" data-toggle="modal">Example</a>
				</span></label>
			</div>
		</div>
	</div>


	<h3 class="form-section caption-subject font-blue bold uppercase"
		style="TEXT-ALIGN: center !important;">Experience</h3>


	<div class="row">
		<div class="col-md-10">
			<div class="form-group">
				<label class="control-label col-md-12"><span
					style="color: red; font-weight: bold">Note:If you are
						claiming age relaxation under In-service quota than please do add
						the details in the above section.Other applicants can also enter
						their relevant experience and must upload supporting documents. </span></label>
			</div>
		</div>
	</div>

	<div class="input_fields_wrap3">
		<div class="row">
			<div class="col-md-6">
				<div class="form-group">
					<label class="control-label col-md-3">Work Experience In</label>
					<g:if test="${params?.action != "edit"}">
						<div class="col-md-9">
							<input type="text" class="form-control" name="workExperience" maxlength="250"
								value="${formDetailInstance?.experiences1?.workExperience}"
								placeholder="Teaching / Research / Extension in Particular Cadre.">
						</div>
					</g:if>
					<g:else>
						<div class="col-md-9">
							<input type="text" class="form-control" name="workExperience"
								value="${formDetailInstance?.experiences1?.workExperience.last()}">
						</div>
					</g:else>
				</div>
			</div>
			<!--/span-->
			<div class="col-md-6">
				<div class="form-group">
					<label class="control-label col-md-3">Organization Name</label>
					<g:if test="${params?.action != "edit"}">
						<div class="col-md-9">
							<input type="text" class="form-control" name="companyName" maxlength="250"
								value="${formDetailInstance?.experiences1?.companyName}">
						</div>
					</g:if>
					<g:else>
						<div class="col-md-9">
							<input type="text" class="form-control" name="companyName"
								value="${formDetailInstance?.experiences1?.companyName.last()}">
						</div>
					</g:else>
				</div>
			</div>
		</div>



		<div class="row">
			<div class="col-md-6">
				<div class="form-group">
					<label class="control-label col-md-3">Post Held</label>
					<g:if test="${params?.action != "edit"}">
						<div class="col-md-9">
							<input type="text" class="form-control" name="postHeld" maxlength="250"
								value="${formDetailInstance?.experiences1?.postHeld}">
						</div>
					</g:if>
					<g:else>
						<div class="col-md-9">
							<input type="text" class="form-control" name="postHeld"
								value="${formDetailInstance?.experiences1?.postHeld.last()}">
						</div>
					</g:else>
				</div>
			</div>
			<!--/span-->
			<div class="col-md-6">
				<div class="form-group">
					<label class="control-label col-md-3">Name of the Employer</label>
					<g:if test="${params?.action != "edit"}">
						<div class="col-md-9">
							<input type="text" class="form-control" name="nameOfTheEmployeer" maxlength="250"
								value="${formDetailInstance?.experiences1?.nameOfTheEmployeer}">
						</div>
					</g:if>
					<g:else>
						<div class="col-md-9">
							<input type="text" class="form-control" name="nameOfTheEmployeer"
								value="${formDetailInstance?.experiences1?.nameOfTheEmployeer.last()}">
						</div>
					</g:else>
				</div>
			</div>
		</div>



		<div class="row">
			<div class="col-md-6">
				<div class="form-group">
					<label class="control-label col-md-3">Date of Joining</label>
					<g:if test="${params?.action != "edit"}">
						<div class="col-md-9">
							<!--	  <input type="text" class="form-control js-date"
							name="dateOfJoining"  placeholder="DD/MM/YYYY" maxlength="10"
							value="${formDetailInstance?.experiences1?.dateOfJoining}"> -->

							<input id="date" name="dateOfJoining" class="form-control"
								placeholder="DD/MM/YYYY" data-inputmask="'alias': 'date'" />

						</div>
					</g:if>
					<g:else>
						<div class="col-md-9">
							<!-- 	<input type="text" class="form-control js-date" 
							name="dateOfJoining" placeholder="DD/MM/YYYY" maxlength="10"
							value="${formDetailInstance?.experiences1?.dateOfJoining.last()}">  -->

							<input id="date" name="dateOfJoining" class="form-control"
								placeholder="DD/MM/YYYY" data-inputmask="'alias': 'date'" />

						</div>
					</g:else>
				</div>
			</div>


			<!--/span-->
			<div class="col-md-6">
				<div class="form-group">
					<label class="control-label col-md-3">Date of Leaving</label>
					<g:if test="${params?.action != "edit"}">
						<div class="col-md-9">
							<!-- 	<input type="text" class="form-control js-date " 
							name="dateOfLeaving" placeholder="DD/MM/YYYY" maxlength="10"
							value="${formDetailInstance?.experiences1?.dateOfLeavin}">  -->


							<input id="date" name="dateOfLeaving" class="form-control"
								placeholder="DD/MM/YYYY" data-inputmask="'alias': 'date'" />


						</div>
					</g:if>
					<g:else>
						<div class="col-md-9">
							<!-- 	<input type="text" class="form-control js-date " 
							name="dateOfLeaving"  placeholder="DD/MM/YYYY" maxlength="10"
							value="${formDetailInstance?.experiences1?.dateOfLeaving.last()}">  -->

							<input id="date" name="dateOfLeaving" class="form-control"
								placeholder="DD/MM/YYYY" data-inputmask="'alias': 'date'" />

						</div>
					</g:else>
				</div>
			</div>
		</div>


		<div class="row">
			<div class="col-md-6">
				<div class="form-group">
					<label class="control-label col-md-3">Period of Service</label>
					<g:if test="${params?.action != "edit"}">
						<div class="col-md-9">
							<input type="text" class="form-control" name="periodOfService" maxlength="250"
								value="${formDetailInstance?.experiences1?.periodOfService}">

						</div>
					</g:if>
					<g:else>
						<div class="col-md-9">
							<input type="text" class="form-control" name="periodOfService" 
								value="${formDetailInstance?.experiences1?.periodOfService.last()}">

						</div>
					</g:else>
				</div>
			</div>
			<!--/span-->
			<div class="col-md-6">
				<div class="form-group">
					<label class="control-label col-md-3">Reason for Leaving</label>
					<g:if test="${params?.action != "edit"}">
						<div class="col-md-9">
							<input type="text" class="form-control" name="reasonOfLeaving" maxlength="250"
								value="${formDetailInstance?.experiences1?.reasonOfLeaving}">

						</div>
					</g:if>
					<g:else>
						<div class="col-md-9">
							<input type="text" class="form-control" name="reasonOfLeaving"
								value="${formDetailInstance?.experiences1?.reasonOfLeaving.last()}">

						</div>
					</g:else>
				</div>
			</div>
		</div>



		<div class="row">
			<div class="col-md-6">
				<div class="form-group">
					<label class="control-label col-md-3">Basic Pay</label>
					<g:if test="${params?.action != "edit"}">
						<div class="col-md-9">
							<input type="text" class="form-control" name="basicPay"
								value="${formDetailInstance?.experiences1?.basicPay}">
						</div>
					</g:if>
					<g:else>
						<div class="col-md-9">
							<input type="text" class="form-control" name="basicPay"
								value="${formDetailInstance?.experiences1?.basicPay.last()}">
						</div>
					</g:else>
				</div>
			</div>
			<!--/span-->
		</div>
		<input type="hidden" value="1" id="ty" name="ty" class="ty">
	</div>


	<div class="row">
		<div class="col-md-4" style="text-align: center;">
			<g:hiddenField name="reportId" value="${formDetailInstance?.id}" />
			&emsp;&emsp;
			<g:actionSubmit class="btn yellow" id="add_field_button3"
				value="Add More"></g:actionSubmit>
		</div>
	</div>




	<h3 class="form-section caption-subject font-blue bold uppercase"
		style="TEXT-ALIGN: center !important;">SCIENTIFIC PUBLICATION</h3>
	<div class="input_fields_wrap">
		<div class="row">
			<div class="col-md-6">
				<div class="form-group">
					<label class="control-label col-md-3">Particulars</label>
					<g:if test="${params?.action != "edit"}">
						<div class="col-md-9">

							<select class="form-control" name="particulars" value="">
								<option value="" selected="selected">Select Type</option>
								<option
									value="Full length Papers published in NAAS rated Scientific Journal">Full
									length Papers published in NAAS rated Scientific Journal</option>
								<option value="Research Note/Abstracts ">Research
									Note/Abstracts</option>
								<option value="Full Length Papers">Full Length Papers</option>
								<option value="Short Communication presented">Short
									Communication presented</option>
								<option value="Books published with ISBM number ">Books
									published with ISBM number</option>
								<option value="Reasearch/Extension Bulletins">Reasearch/Extension
									Bulletins</option>
								<option value="Extension Leaflets/Brochures">Extension
									Leaflets/Brochures</option>
								<option value="Popular Articles ">Popular Articles</option>


							</select>
						</div>
					</g:if>
					<g:else>
						<div class="col-md-9">
							<input type="text" class="form-control" name="particulars"
								value="${formDetailInstance?.sp?.particulars.last()}">
						</div>
					</g:else>
				</div>
			</div>

			<!--/span-->
			<div class="col-md-6">
				<div class="form-group">
					<label class="control-label col-md-3">Title of the
						Paper/Book/Journal..etc.</label>
					<g:if test="${params?.action != "edit"}">
						<div class="col-md-9">
							<input type="text" class="form-control" name="titlesPapers" maxlength="250"
								value="${formDetailInstance?.sp?.titlesPapers}">
						</div>
					</g:if>
					<g:else>
						<div class="col-md-9">
							<input type="text" class="form-control" name="titlesPapers"
								value="${formDetailInstance?.sp?.titlesPapers.last()}">
						</div>
					</g:else>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-md-6">
				<div class="form-group">
					<label class="control-label col-md-3">Year</label>
					<g:if test="${params?.action != "edit"}">
						<div class="col-md-9">
							<input type="text" class="form-control" name="publisher"
								value="${formDetailInstance?.sp?.publisher}">
						</div>
					</g:if>
					<g:else>
						<div class="col-md-9">
							<input type="text" class="form-control" name="publisher"
								value="${formDetailInstance?.sp?.publisher.last()}">
						</div>
					</g:else>
				</div>
			</div>

			<div class="col-md-6">
				<div class="form-group">
					<label class="control-label col-md-3">Types</label>
					<g:if test="${params?.action != "edit"}">
						<div class="col-md-9">

							<select class="form-control" name="types"
								value="${formDetailInstance?.sp?.types}">
								<option value="" selected="selected">Select Type</option>
								<option value="International">International</option>
								<option value="National">National</option>
								<option value="Seminar">Seminar</option>
								<option value="Symposium">Symposium</option>
								<option value="Conference Proceedings">Conference
									Proceedings</option>
								<option value="Government Departments">Government
									Departments</option>
								<option value="Training/Teaching Manuals">Training/Teaching
									Manuals</option>
								<option value="Radio Talks">Radio Talks</option>
								<option value="TV Programmes">TV Programmes</option>

							</select>
						</div>
					</g:if>
					<g:else>
						<div class="col-md-9">
							<select class="form-control" name="types"
								value="${formDetailInstance?.sp?.types}">
								<option value="" selected="selected">Select Type</option>
								<option value="International">International</option>
								<option value="National">National</option>
								<option value="Seminar">Seminar</option>
								<option value="Symposium">Symposium</option>
								<option value="Conference Proceedings">Conference
									Proceedings</option>
								<option value="Government Departments">Government
									Departments</option>
								<option value="Training/Teaching Manuals">Training/Teaching
									Manuals</option>
								<option value="Radio Talks">Radio Talks</option>
								<option value="TV Programmes">TV Programmes</option>
							</select>
						</div>
					</g:else>
				</div>
			</div>


		</div>
		<div class="row">
			<div class="col-md-6">
				<div class="form-group">
					<label class="control-label col-md-3">Details</label>
					<g:if test="${params?.action != "edit"}">
						<div class="col-md-9">
							<input type="text" class="form-control" name="detailsss" maxlength="250"
								placeholder="NAAS Rating / Other Dtails"
								value="${formDetailInstance?.sp?.detailsss}">(Please
							Enter NAAS Rating,If Full length Papers published in NAAS rated
							Scientific Journal.)
						</div>
					</g:if>
					<g:else>
						<div class="col-md-9">
							<input type="text" class="form-control" name="detailsss"
								placeholder="NAAS Rating / Other Dtails"
								value="${formDetailInstance?.sp?.detailsss.last()}">
						</div>
					</g:else>
				</div>
			</div>
		</div>
		<input type="hidden" value="1" id="ty" name="ty" class="ty">
	</div>


	<div class="row">
		<div class="col-md-4" style="text-align: center;">
			<g:hiddenField name="reportId" value="${formDetailInstance?.id}" />
			&emsp;&emsp;
			<g:actionSubmit class="btn yellow" id="add_field_button"
				value="Add More"></g:actionSubmit>
		</div>
	</div>




	<!--<div class="row">
	<div class="col-md-6">
		<div class="form-group">
			<div class="col-md-9">
				<button type="button" id="addmore1" class="add_input1 btn red">Add
					more</button>
			</div>
		</div>
	</div>
</div>
-->


	<div class="row">
		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label col-md-12"><span
					style="color: red; font-weight: bold">Note:Uploading of
						Scientific publications is not required. Candidates are advised to
						submit all the relevant publications during physical document
						verification <a
						class="btn btn-transparent blue btn-outline btn-circle btn-sm active"
						style="width: 100px;" data-target="#details5" data-toggle="modal">Example</a>
				</span></label>
			</div>
		</div>
	</div>


	<h3 class="form-section caption-subject font-blue bold uppercase"
		style="TEXT-ALIGN: center !important;">Medals / Awards /
		Recognition</h3>
	<div class="input_fields_wrap4">
		<div class="row">
			<div class="col-md-6">
				<div class="form-group">
					<label class="control-label col-md-3">Particulars</label>
					<g:if test="${params?.action != "edit"}">
						<div class="col-md-9">
							<input type="text" class="form-control" name="particularsAwards" maxlength="250"
								value="${formDetailInstance?.specialAwards2?.particularsAwards}"
								placeholder="Medals / Awards / Recognition">
						</div>
					</g:if>
					<g:else>

						<div class="col-md-9">
							<input type="text" class="form-control" name="particularsAwards"
								value="${formDetailInstance?.specialAwards2?.particularsAwards.first()}">
						</div>

					</g:else>
				</div>
			</div>
			<!--/span-->
			<div class="col-md-6">
				<div class="form-group">
					<label class="control-label col-md-3">Level</label>
					<g:if test="${params?.action != "edit"}">
						<div class="col-md-9">

							<select class="form-control" name="noofAwards"
								value="${formDetailInstance?.sp?.noofAwards}">
								<option value="" selected="selected">Select Type</option>
								<option value="International">International</option>
								<option value="National">National</option>
								<option value="State">State</option>
								<option value="University">University</option>
								<option value="Professional Societies">Professional
									Societies</option>

							</select>
						</div>
					</g:if>
					<g:else>
						<div class="col-md-9">
							<input type="text" class="form-control" name="noofAwards"
								value="${formDetailInstance?.specialAwards2?.noofAwards.last()}">
						</div>
					</g:else>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-6">
				<div class="form-group">
					<label class="control-label col-md-3">Year</label>
					<g:if test="${params?.action != "edit"}">
						<div class="col-md-9">
							<!-- <input type="text" class="form-control"
							name="awardsYear"
							value="${formDetailInstance?.specialAwards2?.awardsYear}">   -->
							<input id="date" name="awardsYear" class="form-control"
								placeholder="DD/MM/YYYY" data-inputmask="'alias': 'date'" />

						</div>
					</g:if>
					<g:else>
						<div class="col-md-9">
							<!-- <input type="text" class="form-control  date-picker"
							name="awardsYear"
							value="${formDetailInstance?.specialAwards2?.awardsYear.last()}"> -->
							<input id="date" name="awardsYear" class="form-control"
								placeholder="DD/MM/YYYY" data-inputmask="'alias': 'date'" />

						</div>
					</g:else>
				</div>
			</div>

			<div class="col-md-6">
				<div class="form-group">
					<label class="control-label col-md-3">Awarded for</label>
					<g:if test="${params?.action != "edit"}">
						<div class="col-md-9">
							<input type="text" class="form-control" name="awardedfor" maxlength="250"
								value="${formDetailInstance?.specialAwards2?.awardedfor}">
						</div>
					</g:if>
					<g:else>
						<div class="col-md-9">
							<input type="text" class="form-control" name="awardedfor"
								value="${formDetailInstance?.specialAwards2?.awardedfor.last()}">
						</div>
					</g:else>
				</div>
			</div>
		</div>
		<input type="hidden" value="1" id="ty" name="ty" class="ty">
	</div>


	<div class="row">
		<div class="col-md-4" style="text-align: center;">
			<g:hiddenField name="reportId" value="${formDetailInstance?.id}" />
			&emsp;&emsp;
			<g:actionSubmit class="btn yellow" id="add_field_button4"
				value="Add More"></g:actionSubmit>
		</div>
	</div>



	<div class="row">
		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label col-md-12"><span
					style="color: red; font-weight: bold">Note:The relevant
						documents must be attached in the common "Zip file" in documents
						section.</span></label>
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