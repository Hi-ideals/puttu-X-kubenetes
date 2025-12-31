package com.hiideals.jobForm

import com.hiideals.jobFrom.Achievements
import com.hiideals.jobFrom.ConfidentialReports
import com.hiideals.jobFrom.Experiences
import com.hiideals.jobFrom.FundedProject
import com.hiideals.jobFrom.Languages
import com.hiideals.jobFrom.OtherDegrees
import com.hiideals.jobFrom.Patent
import com.hiideals.jobFrom.PaymentInfo
import com.hiideals.jobFrom.ScientificPublication
import com.hiideals.jobFrom.SpecialAttainment
import com.hiideals.jobFrom.SpecialAwards
import com.hiideals.jobFrom.Workshops
import com.springapp.CommanUsers
import com.springapp.Images

class FormDetail {
	String apllicationNo
	String appliyingPost
	String appliyingSub
	String firstName
	String lastName
	String fName
	String mName
	String gender
	Date dob
	String email
	String phoneNumber
	String hNo
	String street
	String village
	String city
	String taluka
	String district
	String state
	String pinCode
	String country
	String socialcategory
	String subcast
	String rdno
	String religion
	String kvcNo
	Date fvcDate
	String sslc
	String obtainedsslc
	String maximumsslc
	String percentagesslc
	Date sslcyear
	String boardUniversitysslc
	String kannadaLanguage
	String kpsckannadaexam
	String puc
	String obtainedpuc
	String maximumpuc
	String percentagepuc
	Date pucyear
	String boardUniversitypuc
	String degreeNameBachelors
	String bachelorsDegree
	String percentagebachelorsDegree
	Date bachelorsDegreeyear
	String boardUniversitybachelorsDegree
	String subjectMaster
	String mastersDegree
	String percentagemastersDegree
	Date mastersDegreeyear
	String boardUniversitymastersDegree
	String pHD
	String pHDSubject
	String percentagepHD
	Date pHDyear
	String boardUniversitypHD
	String woman
	String ruralstdy
	String exServiceMan
	String kannadaMedium
	String projectDisplacedPerson
	String j371
	String pwd
	Images picture
	Images signature
	Images sslcMarksSheet
	Images pucMarksSheet
	Images bachelorsMarksSheet
	Images masterMarksSheet
	Images phDCertificate
	Images nETCertificate
	Images casteIncomeCertificate
	Images ruralCertificate
	Images exServicemenCertificate
	Images kannadaMediumCertificate
	Images kpsckannadaCertificate
	Images kalyanaKarnatakaCertificate
	Images personwithDisabilityCertificate
	Images kVCCertificate
	Images experienceCertificate
	Images ageRelax1
	Images uploade1
	Images uploade2
	Images uploade3
	Images uploade4
	Images uploade5
	Images uploade6
	Images uploade7
	Images uploade8
	Images uploade9
	Images uploade10
	String particularsAwards
	String noofAwards
	Date awardsYear
	String awardedfor
	CommanUsers commonUserId
	PaymentInfo paymentInfoId


	String neteducation
	String hkRDNO

	Images ugPDC
	Images pgPDC
	Images phdPDc
	Images kvc2

	String age
	String ageRelax
	String ageCat

	Date hkIssueDate

	String paystatus






	static hasMany = [sp:ScientificPublication,experiences1:Experiences,languages1:Languages,otherDegrees1:OtherDegrees,specialAwards2:SpecialAwards,achievements1:Achievements,specialAttainment1:SpecialAttainment,patent1:Patent,fproject:FundedProject,wshop:Workshops,creports:ConfidentialReports]
	static constraints = {
		commonUserId nullable:true
		apllicationNo nullable:true
		appliyingSub nullable:true
		firstName nullable:true
		lastName nullable:true
		fName nullable:true
		mName nullable:true
		gender nullable:true
		dob nullable:true
		email nullable:true
		phoneNumber nullable:true
		hNo nullable:true
		street nullable:true
		village nullable:true
		city nullable:true
		taluka nullable:true
		district nullable:true
		state nullable:true
		pinCode nullable:true
		country nullable:true
		socialcategory nullable:true
		subcast nullable:true
		rdno nullable:true
		religion nullable:true
		appliyingPost nullable:true
		sslc nullable:true
		obtainedsslc nullable:true
		maximumsslc nullable:true
		percentagesslc nullable:true
		sslcyear nullable:true
		boardUniversitysslc nullable:true
		kannadaLanguage nullable:true
		kpsckannadaexam nullable:true
		puc nullable:true
		obtainedpuc nullable:true
		maximumpuc nullable:true
		percentagepuc nullable:true
		pucyear nullable:true
		boardUniversitypuc nullable:true
		bachelorsDegree nullable:true
		percentagebachelorsDegree nullable:true
		bachelorsDegreeyear nullable:true
		boardUniversitybachelorsDegree nullable:true
		mastersDegree nullable:true
		percentagemastersDegree nullable:true
		mastersDegreeyear nullable:true
		boardUniversitymastersDegree nullable:true
		pHD nullable:true
		pHDSubject nullable:true
		percentagepHD nullable:true
		pHDyear nullable:true
		boardUniversitypHD nullable:true
		woman nullable:true
		ruralstdy nullable:true
		exServiceMan nullable:true
		kannadaMedium nullable:true
		projectDisplacedPerson nullable:true
		j371 nullable:true
		pwd nullable:true
		picture nullable:true
		signature nullable:true
		sslcMarksSheet nullable:true
		pucMarksSheet nullable:true
		bachelorsMarksSheet nullable:true
		masterMarksSheet nullable:true
		phDCertificate nullable:true
		nETCertificate nullable:true
		casteIncomeCertificate nullable:true
		ruralCertificate nullable:true
		exServicemenCertificate nullable:true
		kannadaMediumCertificate nullable:true
		kpsckannadaCertificate nullable:true
		kalyanaKarnatakaCertificate nullable:true
		personwithDisabilityCertificate nullable:true
		experienceCertificate nullable:true
		kVCCertificate nullable:true
		ageRelax1 nullable:true
		uploade1 nullable:true
		uploade2 nullable:true
		uploade3 nullable:true
		uploade4 nullable:true
		uploade5 nullable:true
		uploade6 nullable:true
		uploade7 nullable:true
		uploade8 nullable:true
		uploade9 nullable:true
		uploade10 nullable:true
		paymentInfoId nullable:true
		sp nullable:true
		experiences1 nullable:true
		languages1 nullable:true
		otherDegrees1 nullable:true
		specialAwards2 nullable:true
		achievements1 nullable:true
		specialAttainment1 nullable:true
		patent1 nullable:true
		fproject nullable:true
		wshop nullable:true
		creports nullable:true


		particularsAwards nullable:true
		noofAwards nullable:true
		awardsYear nullable:true
		awardedfor nullable:true

		kvcNo nullable:true
		fvcDate nullable:true
		degreeNameBachelors nullable:true
		subjectMaster nullable:true

		neteducation nullable:true
		hkRDNO nullable:true

		ugPDC nullable:true
		pgPDC nullable:true
		phdPDc nullable:true
		kvc2 nullable:true

		age nullable:true

		hkIssueDate nullable:true

		paystatus nullable:true
	}
}
