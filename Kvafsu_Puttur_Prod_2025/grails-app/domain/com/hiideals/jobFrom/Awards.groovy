package com.hiideals.jobFrom

import java.util.Date;

class Awards {
	String particularsAwards
	String noofAwards
	Date awardsYear
	String awardedfor
	static constraints = {
		particularsAwards nullable:true
		noofAwards nullable:true
		awardsYear nullable:true
		awardedfor nullable:true
	}
}
