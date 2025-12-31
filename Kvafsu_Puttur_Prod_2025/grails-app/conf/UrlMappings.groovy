class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?(.$format)?" { constraints  { // apply constraints here
			} }

		"/"(controller:"mainPage")
		"500"(view:'/error')


		"/Super@dm!n"(controller:'superadmin', action:'index')
		"500"(view:'/error')

		"/Dashboard"(controller:'superadmin', action:'indexx')
		"500"(view:'/error')

		"/register"(controller:'register', action:'index')
		"500"(view:'/error')

		"/Usercreates"(controller:'usercreate', action:'index')
		"500"(view:'/error')

		"/CommanUsers"(controller:'commanUsers', action:'index')
		"500"(view:'/error')

		"/CommanUserscreates"(controller:'superadmin', action:'dashboard')
		"500"(view:'/error')


		"/Usercreatesindex"(controller:'usercreate', action:'index')
		"500"(view:'/error')


		"/FormDetail"(controller:'formDetail', action:'index')
		"500"(view:'/error')

		"/FormDetailcreate"(controller:'formDetail', action:'create')
		"500"(view:'/error')

		"/FormDetailedit"(controller:'formDetail', action:'edit')
		"500"(view:'/error')

		"/FormDetailshow"(controller:'formDetail', action:'show')
		"500"(view:'/error')

		"/FormDetailadminformDetails"(controller:'formDetail', action:'adminformDetails')
		"500"(view:'/error')

		"/FormDetailReports"(controller:'formDetail', action:'report')
		"500"(view:'/error')


		"/FormDetailmanualPayment"(controller:'formDetail', action:'manualPayment')
		"500"(view:'/error')





		"/thankyou"(controller:'formDetail', action:'thankyou')
		"500"(view:'/error')

		"/paymentfailed"(controller:'formDetail', action:'paymentfailed')
		"500"(view:'/error')

		"/transactional"(controller:'formDetail', action:'transactional')
		"500"(view:'/error')



		"/userlist"(controller:'formDetail', action:'userlist')
		"500"(view:'/error')


		"/createEducations"(controller:'formDetail', action:'createEducations')
		"500"(view:'/error')

		"/createAddmore"(controller:'formDetail', action:'createAddmore')
		"500"(view:'/error')

		"/createdocumentss"(controller:'formDetail', action:'createdocumentss')
		"500"(view:'/error')



		"/unusedOPT"(controller:'formDetail', action:'unusedOPT')
		"500"(view:'/error')
	}
}
