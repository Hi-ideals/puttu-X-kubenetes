package com.hiideals.jobFrom

class Achievements {
	String typeAchievement
	String particularsEvent
	String  periodDuration
	String level

	static constraints = {
		typeAchievement nullable:true
		particularsEvent nullable:true
		periodDuration nullable:true
		level nullable:true
	}
}
