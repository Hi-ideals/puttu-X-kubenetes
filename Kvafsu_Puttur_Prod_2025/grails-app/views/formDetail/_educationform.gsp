<%@ page import="com.hiideals.jobForm.FormDetail"%>
<input type="hidden" name="formdt" value="${formdt?.id }">
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


	<h3 class="form-section caption-subject font-blue bold uppercase"
		style="TEXT-ALIGN: center !important;">ACADEMIC QUALIFICATIONS</h3>

	<h4 style="color: red; font-weight: bold; text-align: center;">
		<b>Note:</b> Please refer Academic Score card as notified by the
		University for entering relevant details as applicable.
	</h4>

	<!--/span-->
	<h4 class="form-section caption-subject font-red-sunglo bold uppercase"
		style="TEXT-ALIGN: center !important;">SECONDARY EDUCATION
		BOARD(X/SSLC)</h4>



	<div class="row">
		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label col-md-3">Registration No.<span
					style="color: red">*</span></label>
				<div class="col-md-9">
					<input type="text" class="form-control" name="sslc"
						value="${formDetailInstance?.sslc}" id="sslc">
					<div id="sslc1" style="display: none; color: red;">
						<label for="id" class="error"> Registration No must be at
							this formate. e.g. VET123456</label>
					</div>
					<div id="sslcc" style="display: none; color: red;">
						<label for="id" class="error">Please Enter Your
							Registration No</label>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label col-md-3">Obtained Marks<span
					style="color: red">*</span></label>
				<div class="col-md-9">
					<input type="text" class="form-control" name="obtainedsslc"
						id="pointsgiven" value="${formDetailInstance?.obtainedsslc}">
					<div id="pointsgiven111" style="display: none; color: red;">
						<label for="id" class="error">Obtained Marks must be at
							this formate. e.g. 655</label>
					</div>
					<div id="pointsgivens221" style="display: none; color: red;">
						<label for="id" class="error">Please Enter Your Obtained
							Marks</label>
					</div>
				</div>
			</div>
		</div>
		<!--/span-->
	</div>
	<div class="row">
		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label col-md-3">Maximum / Total Marks<span
					style="color: red">*</span></label>
				<div class="col-md-9">
					<input type="text" class="form-control" name="maximumsslc"
						id="pointspossible" value="${formDetailInstance?.maximumsslc}">
					<div id="pointspossible111" style="display: none; color: red;">
						<label for="id" class="error">Maximum / Total Marks must
							be at this formate. e.g. 900</label>
					</div>
					<div id="pointspossibles222" style="display: none; color: red;">
						<label for="id" class="error">Please Enter Your Maximum /
							Total Marks</label>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label col-md-3">Percentage of Marks<span
					style="color: red">*</span></label>
				<div class="col-md-9">
					<input type="text" class="form-control" name="percentagesslc1"
						id="percentagesslc" readonly
						value="${formDetailInstance?.percentagesslc}">

				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label col-md-3">Date of Passing<span
					style="color: red">*</span></label>
				<div class="col-md-9">
					<input type="text" class="form-control  date-picker" id="sslcyear"
						name="sslcyear1"
						value="${formatDate(format:'dd/MM/yyyy',date:formDetailInstance?.sslcyear)}">
					<div id="sslcyears1" style="display: none; color: red;">
						<label for="id" class="error"> Date of Passing must be at
							this formate. e.g. DD/MM/YYYY </label>
					</div>
					<div id="sslcyears" style="display: none; color: red;">
						<label for="id" class="error">Please Enter Your Date of
							Passing</label>
					</div>

				</div>
			</div>
		</div>

		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label col-md-3">Board<span
					style="color: red">*</span></label>
				<div class="col-md-9">
					<input type="text" class="form-control" name="boardUniversitysslc"
						value="${formDetailInstance?.boardUniversitysslc}"
						id="boardUniversitysslc">
					<div id="boardUniversitysslc1" style="display: none; color: red;">
						<label for="id" class="error"> Board Name must be at least
							3 characters. e.g. Karnataka </label>
					</div>
					<div id="boardUniversitysslcs" style="display: none; color: red;">
						<label for="id" class="error">Please Enter Your Board Name</label>
					</div>
				</div>
			</div>
		</div>
	</div>



	<h4 class="form-section caption-subject font-red-sunglo bold uppercase"
		style="TEXT-ALIGN: center !important;">Pre-University Education
		Board (XII)</h4>
	<div class="row">
		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label col-md-3">Registration No.<span
					style="color: red">*</span></label>
				<div class="col-md-9">
					<input type="text" class="form-control" name="puc"
						value="${formDetailInstance?.puc}" id="puc">
					<div id="puc1" style="display: none; color: red;">
						<label for="id" class="error"> Registration No must be at
							this formate. e.g. VET123456</label>
					</div>
					<div id="pucs" style="display: none; color: red;">
						<label for="id" class="error">Please Enter Your
							Registration No</label>
					</div>
				</div>
			</div>
		</div>

		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label col-md-3">Obtained Marks<span
					style="color: red">*</span></label>
				<div class="col-md-9">
					<input type="text" class="form-control" name="obtainedpuc"
						id="pointsgiven1" value="${formDetailInstance?.obtainedpuc}">
					<div id="obtainedpuc11" style="display: none; color: red;">
						<label for="id" class="error">Obtained Marks must be at
							this formate. e.g. 655</label>
					</div>
					<div id="obtainedpuc1" style="display: none; color: red;">
						<label for="id" class="error">Please Enter Your Obtained
							Marks</label>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="row">
		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label col-md-3">Maximum Marks<span
					style="color: red">*</span></label>
				<div class="col-md-9">
					<input type="text" class="form-control" name="maximumpuc"
						id="pointspossible1" value="${formDetailInstance?.maximumpuc}">
					<div id="maximumpuc1" style="display: none; color: red;">
						<label for="id" class="error">Maximum / Total Marks must
							be at this formate. e.g. 900</label>
					</div>
					<div id="maximumpucs" style="display: none; color: red;">
						<label for="id" class="error">Please Enter Your Maximum /
							Total Marks</label>
					</div>
				</div>
			</div>
		</div>



		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label col-md-3">Percentage of Marks<span
					style="color: red">*</span></label>
				<div class="col-md-9">
					<input type="text" class="form-control" name="percentagepuc"
						id="percentagepuc" readonly
						value="${formDetailInstance?.percentagepuc}" required="required">
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label col-md-3">Date of Passing<span
					style="color: red">*</span></label>
				<div class="col-md-9">
					<input type="text" class="form-control  date-picker"
						name="pucyear1"
						value="${formatDate(format:'dd/MM/yyyy',date:formDetailInstance?.pucyear)}"
						id="pucyear1">
					<div id="pucyears1" style="display: none; color: red;">
						<label for="id" class="error"> Date of Passing must be at
							this formate. e.g. DD/MM/YYYY </label>
					</div>
					<div id="pucyears" style="display: none; color: red;">
						<label for="id" class="error">Please Enter Your Date of
							Passing</label>
					</div>

				</div>
			</div>
		</div>


		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label col-md-3">Board<span
					style="color: red">*</span></label>
				<div class="col-md-9">
					<input type="text" class="form-control" name="boardUniversitypuc"
						value="${formDetailInstance?.boardUniversitypuc}"
						id="boardUniversitypuc">
					<div id="boardUniversitypuc1" style="display: none; color: red;">
						<label for="id" class="error"> Board Name must be at least
							3 characters. e.g. Karnataka </label>
					</div>
					<div id="boardUniversitypucs" style="display: none; color: red;">
						<label for="id" class="error">Please Enter Your Board Name</label>
					</div>
				</div>
			</div>
		</div>
	</div>


	<h4 class="form-section caption-subject font-red-sunglo bold uppercase"
		style="TEXT-ALIGN: center !important;">Kannada Language</h4>


	<div class="row">
		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label col-md-3">Have you studied
					Kannada in SSLC/PUC(X/XII) ?<span style="color: red">*</span>
				</label>
				<div class="col-md-9">
					<select id="kannadaLanguage" name="kannadaLanguage"
						class="form-control">
						<option value="" selected="selected">Select</option>
						<option value="No">No</option>
						<option value="Yes">Yes</option>
					</select>
					<div id="kannadaLanguage1" style="display: none; color: red;">
						Please select Yes/No</div>

				</div>
			</div>
		</div>

		<div class="col-md-6">
			<div class="form-group" id="dvKannadaLanguage" style="display: none;">
				<label class="control-label col-md-3">Have you passed KPSC
					departmental Kannada Language Exam?<span style="color: red">*</span>
				</label>
				<div class="col-md-9">
					<select id="kpsckannadaexam" name="kpsckannadaexam"
						class="form-control">

						<option value="No">No</option>
						<option value="Yes">Yes</option>
					</select>
					<div id="kannadaLanguage1" style="display: none; color: red;">
						Please select any one kannada language</div>
					<p id="dvkpsc"
						style="display: none; color: red; font-weight: bold;">Please
						upload relevant documents as proof.</p>
				</div>
			</div>
		</div>
	</div>


	<!--/span-->
	<h4 class="form-section caption-subject font-red-sunglo bold uppercase"
		style="TEXT-ALIGN: center !important;">Bachelor's Degree</h4>

	<div class="row">
		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label col-md-3">Degree Name<span
					style="color: red">*</span></label>
				<div class="col-md-9">
					<input type="text" class="form-control" name="degreeNameBachelors"
						value="${formDetailInstance?.degreeNameBachelors}"
						id="degreeNameBachelors">
					<div id="degreeNameBachelors1" style="display: none; color: red;">
						<label for="id" class="error"> Degree Name must be at this
							formate. e.g. MSc</label>
					</div>
					<div id="degreeNameBachelorss" style="display: none; color: red;">
						<label for="id" class="error">Please Enter Your Degree
							Name</label>
					</div>
				</div>
			</div>
		</div>
	</div>


	<div class="row">
		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label col-md-3"> Registration No / ID
					No.<span style="color: red">*</span>
				</label>
				<div class="col-md-9">
					<input type="text" class="form-control" name="bachelorsDegree"
						value="${formDetailInstance?.bachelorsDegree}"
						id="bachelorsDegree">
					<div id="bachelorsDegree1" style="display: none; color: red;">
						<label for="id" class="error"> Registration No / ID No
							must be at this formate. e.g. VET123456</label>
					</div>
					<div id="bachelorsDegrees" style="display: none; color: red;">
						<label for="id" class="error">Please Enter Your
							Registration No</label>
					</div>
				</div>
			</div>
		</div>

		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label col-md-3">Percentage of Marks<span
					style="color: red">*</span></label>
				<div class="col-md-9">
					<input type="text" class="form-control"
						name="percentagebachelorsDegree"
						value="${formDetailInstance?.percentagebachelorsDegree}"
						id="percentagebachelorsDegree">
					<div id="percentagebachelorsDegree1"
						style="display: none; color: red;">
						<label for="id" class="error">Percentage of Marks must be
							at this formate. e.g. 80.65</label>
					</div>
					<div id="percentagebachelorsDegrees"
						style="display: none; color: red;">
						<label for="id" class="error">Please Enter Your Percentage
							of Marks</label>
					</div>
				</div>
			</div>
		</div>
	</div>


	<div class="row">
		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label col-md-3">Date of Passing<span
					style="color: red">*</span></label>
				<div class="col-md-9">
					<input type="text" class="form-control  date-picker"
						name="bachelorsDegreeyear1"
						value="${formatDate(format:'dd/MM/yyyy',date:formDetailInstance?.bachelorsDegreeyear)}"
						id="bachelorsDegreeyear1">
					<div id="bachelorsDegreeyear11" style="display: none; color: red;">
						<label for="id" class="error"> Date of Passing must be at
							this formate. e.g. DD/MM/YYYY </label>
					</div>
					<div id="bachelorsDegreeyear1s" style="display: none; color: red;">
						<label for="id" class="error">Please Enter Your Date of
							Passing</label>
					</div>

				</div>
			</div>
		</div>

		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label col-md-3">University<span
					style="color: red">*</span></label>
				<div class="col-md-9">
					<input type="text" class="form-control"
						name="boardUniversitybachelorsDegree"
						value="${formDetailInstance?.boardUniversitybachelorsDegree}"
						id="boardUniversitybachelorsDegree">
					<div id="boardUniversitybachelorsDegree1"
						style="display: none; color: red;">
						<label for="id" class="error"> University must be at least
							3 characters. e.g. Karnataka </label>
					</div>
					<div id="boardUniversitybachelorsDegrees"
						style="display: none; color: red;">
						<label for="id" class="error">Please Enter Your University</label>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--/span-->

	<h4 class="form-section caption-subject font-red-sunglo bold uppercase"
		style="TEXT-ALIGN: center !important;">Master's Degree</h4>
	<div class="row">
		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label col-md-3">Subject /
					Specification<span style="color: red">*</span>
				</label>
				<div class="col-md-9">
					<input type="text" class="form-control" name="subjectMaster"
						value="${formDetailInstance?.subjectMaster}" id="subjectMaster">
					<div id="subjectMaster1" style="display: none; color: red;">
						<label for="id" class="error"> Subject / Specification
							must be at this formate. e.g. MSc</label>
					</div>
					<div id="subjectMasters" style="display: none; color: red;">
						<label for="id" class="error">Please Enter Your Subject /
							Specificatio</label>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="row">
		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label col-md-3">Registration No / ID
					No.<span style="color: red">*</span>
				</label>
				<div class="col-md-9">
					<input type="text" class="form-control" name="mastersDegree"
						value="${formDetailInstance?.mastersDegree}" id="mastersDegree">
					<div id="mastersDegree1" style="display: none; color: red;">
						<label for="id" class="error"> Registration No / ID No
							must be at this formate. e.g. VET123456</label>
					</div>
					<div id="mastersDegrees" style="display: none; color: red;">
						<label for="id" class="error">Please Enter Your
							Registration No</label>
					</div>
				</div>
			</div>
		</div>

		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label col-md-3">Percentage of marks<span
					style="color: red">*</span></label>
				<div class="col-md-9">
					<input type="text" class="form-control"
						name="percentagemastersDegree"
						value="${formDetailInstance?.percentagemastersDegree}"
						id="percentagemastersDegree">
					<div id="percentagemastersDegree1"
						style="display: none; color: red;">
						<label for="id" class="error">Percentage of Marks must be
							at this formate. e.g. 80.65</label>
					</div>
					<div id="percentagemastersDegrees"
						style="display: none; color: red;">
						<label for="id" class="error">Please Enter Your Percentage
							of Marks</label>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label col-md-3">Date of Passing<span
					style="color: red">*</span></label>
				<div class="col-md-9">
					<input type="text" class="form-control  date-picker"
						name="mastersDegreeyear1" id="mastersDegreeyear1"
						value="${formatDate(format:'dd/MM/yyyy',date:formDetailInstance?.mastersDegreeyear)}">
					<div id="mastersDegreeyear11" style="display: none; color: red;">
						<label for="id" class="error"> Date of Passing must be at
							this formate. e.g. DD/MM/YYYY </label>
					</div>
					<div id="mastersDegreeyear1s" style="display: none; color: red;">
						<label for="id" class="error">Please Enter Your Date of
							Passing</label>
					</div>

				</div>
			</div>
		</div>

		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label col-md-3"> University<span
					style="color: red">*</span></label>
				<div class="col-md-9">
					<input type="text" class="form-control"
						name="boardUniversitymastersDegree"
						value="${formDetailInstance?.boardUniversitymastersDegree}"
						id="boardUniversitymastersDegree">
					<div id="boardUniversitymastersDegree1"
						style="display: none; color: red;">
						<label for="id" class="error"> University must be at least
							3 characters. e.g. Karnataka </label>
					</div>
					<div id="boardUniversitymastersDegrees"
						style="display: none; color: red;">
						<label for="id" class="error">Please Enter Your University</label>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!--/span-->







	<h4 class="form-section caption-subject font-red-sunglo bold "
		style="TEXT-ALIGN: center !important;">PhD</h4>
	<p style="color: red; font-weight: bold;"></p>
	<h5 style="color: red; font-weight: bold; text-align: center;">
		<b>Note:</b>PhD is mandatory for Assistant Professors(Without NET
		Certificate), Assocciate Professors and Professors.
	</h5>
	<div class="row">
		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label col-md-3">Registration No / ID
					No.<span style="color: red"></span>
				</label>
				<div class="col-md-9">
					<input type="text" class="form-control" name="pHD"
						value="${formDetailInstance?.pHD}">
				</div>
			</div>
		</div>

		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label col-md-3">PhD Subject <span
					style="color: red"></span></label>
				<div class="col-md-9">
					<input type="text" class="form-control" name="pHDSubject"
						value="${formDetailInstance?.pHDSubject}">
				</div>
			</div>
		</div>
	</div>


	<div class="row">
		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label col-md-3">Percentage of Marks <span
					style="color: red"></span></label>
				<div class="col-md-9">
					<input type="text" class="form-control" name="percentagepHD"
						value="${formDetailInstance?.percentagepHD}">
				</div>
			</div>
		</div>

		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label col-md-3">Date of Passing<span
					style="color: red"></span></label>
				<div class="col-md-9">
					<input type="text" class="form-control  date-picker"
						onkeydown="return false" name="pHDyear1"
						value="${formatDate(format:'dd/MM/yyyy',date:formDetailInstance?.pHDyear)}">

				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label col-md-3">University<span
					style="color: red"></span></label>
				<div class="col-md-9">
					<input type="text" class="form-control" name="boardUniversitypHD"
						value="${formDetailInstance?.boardUniversitypHD}">
				</div>
			</div>
		</div>
	</div>



	<h4 class="form-section caption-subject font-red-sunglo bold uppercase"
		style="TEXT-ALIGN: center !important;">additional qualifications</h4>


	<h5 style="color: red; font-weight: bold; text-align: center;">
		<b>Note:</b>*The related documents must be attached in the zip file in
		documents section.
	</h5>
	<h5 style="color: red; font-weight: bold; text-align: center;">
		<b>*Only from recognized Universities/Institutions.
	</h5>
	<div class="input_fields_wrap1">
		<div class="row">
			<div class="col-md-6">
				<div class="form-group">
					<label class="control-label col-md-3">Degree Name</label>
					<g:if test="${params?.action != "edit"}">
						<div class="col-md-9">
							<input type="text" class="form-control" name="nameofDegree"
								value="${formDetailInstance?.otherDegrees1?.nameofDegree}">
						</div>
					</g:if>
					<g:else>
						<div class="col-md-9">
							<input type="text" class="form-control" name="nameofDegree"
								value="${formDetailInstance?.otherDegrees1?.nameofDegree.last()}">
						</div>
					</g:else>
				</div>
			</div>


			<div class="col-md-6">
				<div class="form-group">
					<label class="control-label col-md-3">Types</label>
					<g:if test="${params?.action != "edit"}">
						<div class="col-md-9">

							<select class="form-control" name="additionalType">
								<option value="" selected="selected">Select Type</option>
								<option value="Higher Academic Training(Above 21 day's)">Higher
									Academic Training(Above 21 day's)</option>
								<option value="Diploma">Diploma(Not less than 10
									month's)</option>
								<option value="Certificate Course">Certificate Course</option>
								<option value="PG Diploma">PG Diploma(Not less than 10
									month's)</option>
								<option value="M.Phil">M.Phil(Not less than 10 month's)</option>
								<option value="Post Graduation">Post Graduation</option>
								<option value="Post-Doctoral Studies">Post-Doctoral
									Studies</option>
							</select>
						</div>
					</g:if>
					<g:else>
						<div class="col-md-9">
							<select class="form-control" name="additionalType" value="">
								<option value="" selected="selected">Select Type</option>
								<option value="Higher Academic Training(Above 21 day's)">Higher
									Academic Training(Above 21 day's)</option>
								<option value="Diploma">Diploma</option>
								<option value="Certificate Course">Certificate Course</option>
								<option value="PG Diploma">PG Diploma</option>
								<option value="M.Phil">M.Phil</option>
								<option value="Post Graduation">Post Graduation</option>
								<option value="Post-Doctoral Studies">Post-Doctoral
									Studies</option>
							</select>
						</div>
					</g:else>
				</div>
			</div>


		</div>
		<div class="row">
			<div class="col-md-6">
				<div class="form-group">
					<label class="control-label col-md-3">Registration No.</label>
					<g:if test="${params?.action != "edit"}">
						<div class="col-md-9">
							<input type="text" class="form-control" name="otherDiploma"
								value="${formDetailInstance?.otherDegrees1?.otherDiploma}">
						</div>
					</g:if>
					<g:else>
						<div class="col-md-9">
							<input type="text" class="form-control" name="otherDiploma"
								value="${formDetailInstance?.otherDegrees1?.otherDiploma.last()}">
						</div>
					</g:else>
				</div>
			</div>

			<div class="col-md-6">
				<div class="form-group">
					<label class="control-label col-md-3">Percentage Of Marks</label>
					<g:if test="${params?.action != "edit"}">
						<div class="col-md-9">
							<input type="text" class="form-control"
								name="percentageotherDiploma"
								value="${formDetailInstance?.otherDegrees1?.percentageotherDiploma}">
						</div>
					</g:if>
					<g:else>
						<div class="col-md-9">
							<input type="text" class="form-control"
								name="percentageotherDiploma"
								value="${formDetailInstance?.otherDegrees1?.percentageotherDiploma.last()}">
						</div>
					</g:else>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-md-6">
				<div class="form-group">
					<label class="control-label col-md-3">Date of Passing</label>
					<g:if test="${params?.action != "edit"}">
						<div class="col-md-9">
							<%--<input type="text" class="form-control" 
								name="otherDiplomayear"
								value="${formDetailInstance?.otherDegrees1?.otherDiplomayear}">
                                  
								--%>
							<input id="date" name="otherDiplomayear" class="form-control"
								placeholder="DD/MM/YYYY" data-inputmask="'alias': 'date'" />
						</div>
					</g:if>
					<g:else>
						<div class="col-md-9">
							<%-- <input type="text" class="form-control  "
								name="otherDiplomayear"
								value="${formDetailInstance?.otherDegrees1?.otherDiplomayear.last()}"> --%>

							<input id="date" name="otherDiplomayear" class="form-control"
								placeholder="DD/MM/YYYY" data-inputmask="'alias': 'date'" />


						</div>
					</g:else>
				</div>
			</div>
			<!--/span-->

			<div class="col-md-6">
				<div class="form-group">
					<label class="control-label col-md-3">University</label>
					<g:if test="${params?.action != "edit"}">
						<div class="col-md-9">
							<input type="text" class="form-control"
								name="boardUniversityotherDiploma"
								value="${formDetailInstance?.otherDegrees1?.boardUniversityotherDiploma}">
						</div>
					</g:if>
					<g:else>
						<div class="col-md-9">
							<input type="text" class="form-control"
								name="boardUniversityotherDiploma"
								value="${formDetailInstance?.otherDegrees1?.boardUniversityotherDiploma.last()}">
						</div>
					</g:else>
				</div>
			</div>
		</div>
		<input type="hidden" value="1" id="ty1" name="ty1" class="ty1">
	</div>

	<div class="row">
		<div class="col-md-4" style="text-align: center;">
			<g:hiddenField name="reportId" value="${formDetailInstance?.id}" />
			&emsp;&emsp;
			<g:actionSubmit class="btn yellow" id="add_field_button1"
				value="Add More"></g:actionSubmit>
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