package com.hiideals.jobFrom

import java.util.Date;

class OtherDegrees {
	String nameofDegree
	String additionalType
	String otherDiploma
	String percentageotherDiploma
	String otherDiplomayear
	String boardUniversityotherDiploma
	static constraints = {
		nameofDegree nullable:true
		additionalType nullable:true
		otherDiploma nullable:true
		percentageotherDiploma nullable:true
		otherDiplomayear nullable:true
		boardUniversityotherDiploma nullable:true
	}
}
