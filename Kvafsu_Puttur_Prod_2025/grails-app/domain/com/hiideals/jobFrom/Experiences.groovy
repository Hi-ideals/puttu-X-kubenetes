package com.hiideals.jobFrom

import java.util.Date;

class Experiences {
	String workExperience
	String companyName
	String postHeld
	String nameOfTheEmployeer
	String dateOfJoining
	String dateOfLeaving
	String periodOfService
	String reasonOfLeaving
	String basicPay
	static constraints = {
		workExperience nullable:true
		companyName nullable:true
		postHeld nullable:true
		nameOfTheEmployeer nullable:true
		dateOfJoining nullable:true
		dateOfLeaving nullable:true
		periodOfService nullable:true
		reasonOfLeaving nullable:true
		basicPay nullable:true
	}
}
