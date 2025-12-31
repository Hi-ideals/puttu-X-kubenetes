package com.hiideals.jobFrom

import java.util.Date;

class SpecialAwards {

	String particularsAwards
	String noofAwards
	String awardsYear
	String awardedfor

	static constraints = {

		particularsAwards nullable:true
		noofAwards nullable:true
		awardsYear nullable:true
		awardedfor nullable:true
	}
}
