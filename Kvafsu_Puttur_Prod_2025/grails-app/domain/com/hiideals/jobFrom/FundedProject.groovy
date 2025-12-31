package com.hiideals.jobFrom

class FundedProject {
	String projectTitle
	String cadre2
	String details2
	String  projectOutlay

	static constraints = {
		projectTitle nullable:true
		cadre2 nullable:true
		projectOutlay nullable:true
		details2 nullable:true
	}
}
