package com.hiideals.jobFrom

class Languages {
	String language
	String reading
	String writing
	String speaking
	String examinationpassed
	String examDetails
	static constraints = {
		language nullable:true
		reading nullable:true
		writing nullable:true
		speaking nullable:true
		examinationpassed nullable:true
		examDetails nullable:true
	}
}
