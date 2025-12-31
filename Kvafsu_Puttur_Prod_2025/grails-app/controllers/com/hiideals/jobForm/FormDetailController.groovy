package com.hiideals.jobForm



import static org.springframework.http.HttpStatus.*
import grails.plugin.springsecurity.annotation.Secured
import grails.transaction.Transactional

import java.text.DateFormat
import java.text.SimpleDateFormat

import javax.servlet.http.HttpServletRequest

import org.codehaus.groovy.grails.web.servlet.mvc.GrailsWebRequest
import org.codehaus.groovy.grails.web.util.WebUtils

import randomno.RandomNoGenerator

import com.hiideals.PaymentGetway
import com.hiideals.SendSMS
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
import com.springapp.SecUser
@Secured(["ROLE_ADMIN","ROLE_SUPERADMIN","ROLE_USER","ROLE_COMMANUSERS"])
@Transactional
class FormDetailController {
	def userService;
	static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
	private static DateFormat df = new SimpleDateFormat("dd/MM/yyyy");
	private static DateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
	private static DateFormat adf = new SimpleDateFormat("mm/dd/yy");
	def userid
	def totalamt
	@Transactional

	def index() {
		def formdet
		println("params.payment_id"+params.payment_id)

		formdet=FormDetail.findAllByCommonUserId(userService.getCurrentCommanUsers())
		println("hiiiiii"+formdet)

		model:[formdet: formdet]
	}
	@Transactional
	def makePayment(){

		def user = SecUser.findByUsername(userService.getUsername())
		def amount=0
		def Rno=RandomNoGenerator.numberGenerator();
		def paymentURL=null

		FormDetail formdt = FormDetail.findById(params.id)
		userid = formdt.id

		if(formdt.socialcategory =="SC-A" ){

			totalamt="1.00"
		}
		else if(formdt.socialcategory =="SC-B" ){


			totalamt="1.00"
		}
		else if(formdt.socialcategory =="SC-C" ){
			
			
			totalamt="1.00"
		}
		else if(formdt.socialcategory =="ST" ){
			
			
			totalamt="1.00"
		}
		else if(formdt.socialcategory =="Cat-1" ){

			totalamt="1.00"
		}else{

			totalamt="1.00"
		}
		String formsid = formdt.id.toString()

		//production
		String s1 =	PaymentGetway.Payment(Rno.toString(),totalamt,"KVAFSU Application Fee",formdt.firstName,formdt.phoneNumber,formdt.email,"https://tpvetjob.kvafsu.edu.in/svj/FormDetail/transactional"," https://tpvetjob.kvafsu.edu.in/svj/FormDetail/transactional",formsid);

		//local
	//	String s1 =	PaymentGetway.Payment(Rno.toString(),totalamt,"KVAFSU Application Fee",formdt.firstName,formdt.phoneNumber,formdt.email,"http://localhost:8060/svj/FormDetail/transactional"," http://localhost:8060/svj/FormDetail/transactional",formsid);

		//production
		// redirect(url: "https://pay.easebuzz.in/pay/"+s1)
		println("s1.charAt(0)s1.charAt(0)"+s1.charAt(0))

		if(s1.charAt(0).equals("0")){



		}else{

			// formdt.setPaymentInfoId(paym.save())
			// formdt.save();
			 
			 //test url
			// redirect(url: "https://testpay.easebuzz.in/pay/"+s1.substring(1))


			//production  url
			redirect(url: "https://pay.easebuzz.in/pay/"+s1.substring(1))

		}




		//testing




	}



	@Secured([
		'IS_AUTHENTICATED_ANONYMOUSLY'
	])
	def transactional(){
		GrailsWebRequest webRequest = WebUtils.retrieveGrailsWebRequest();
		HttpServletRequest request = webRequest.getCurrentRequest();

		Map map = webRequest.getProperties()
		def datass = map.get("parameterMap")
		println("zxcbzjxc"+datass.get("firstname"))
		println("zxcbzjxc"+datass.get("addedon"))
		println("zxcbzjxc"+datass.get("email"))
		println("zxcbzjxc"+datass.get("txnid"))
		println("zxcbzjxc"+datass.get("amount"))
		println("zxcbzjxc"+datass.get("easepayid"))
		println("zxcbzjxc"+datass.get("phone"))
		println("zxcbzjxc"+datass.get("productinfo"))
		println("zxcbzjxc"+datass.get("status"))
		println("zxcbzjxc"+datass.get("bank_ref_num"))
		println("zxcbzjxc"+datass.get("udf1"))
		FormDetail formdt = FormDetail.findById(datass.get("udf1"))


		if(datass.get("status").equals("success")){
			PaymentInfo paym = new PaymentInfo()
			paym.paymentId = datass.get("easepayid")
			paym.transactionId = datass.get("txnid")
			paym.userId = datass.get("udf1")
			paym.totalamount = datass.get("amount")
			paym.status = datass.get("status")
			paym.discription = "Succesfully done payment"

			paym.name = datass.get("firstname")
			paym.transactionDate = datass.get("addedon")
			paym.phoneNo = datass.get("phone")
			paym.bankRefNo = datass.get("bank_ref_num")
			formdt.setPaymentInfoId(paym.save())
			formdt.setPaystatus("Paid")
			formdt.save();
			redirect(url: "https://tpvetjob.kvafsu.edu.in/svj/FormDetail/thankyou")

		//	redirect action:"thankyou"


		}else{
			PaymentInfo paym = new PaymentInfo()
			paym.paymentId = datass.get("easepayid")
			paym.transactionId = datass.get("txnid")
			paym.userId = datass.get("udf1")
			paym.totalamount = datass.get("amount")
			paym.status = datass.get("status")
			paym.discription = "Something went Wrong"

			paym.name = datass.get("firstname")
			paym.transactionDate = datass.get("addedon")
			paym.phoneNo = datass.get("phone")
			paym.bankRefNo = datass.get("bank_ref_num")

			formdt.setPaymentInfoId(paym.save())
			formdt.setPaystatus("Paid")
			formdt.save();

			redirect action:"paymentfailed"

		}
		String	returnss = "Shzbxjkcvh xiv bn"
		modal:[returnss:returnss,datass:datass]
	}


	@Secured([
		'IS_AUTHENTICATED_ANONYMOUSLY'
	])
	def paymentfailed(){


	}

	@Secured(["ROLE_ADMIN"])
	def adminformDetails(){
		def  formdet=FormDetail.findAll()
		model:[formdet: formdet]
	}
	def show(FormDetail formDetailInstance) {

		respond formDetailInstance
	}

	def getRandomNumber(int num){
		Random random = new Random()
		return random.nextInt(10 ** num)
	}

//	def create() {
//		int num
//		int max = 100000000;
//		int min = 5000000;
//		//def ss1=getRandomNumber()
//		Random random = new Random()
//		def ss1 = min + random.nextInt(max - min + 1);
//		def Date dt= new Date()
//		SimpleDateFormat formatter=new SimpleDateFormat("ddMMyyyyss")
//		def date=formatter.format(dt)
//		def t = "TA"
//		def apllicationNo=t+ss1
//
//		println("adminiD : "+apllicationNo)
//		respond new FormDetail(params),model:[apllicationNo:apllicationNo]
//
//	}
	
	def create() {
		// Define the fixed prefix
		def prefix = "TVCK2025"
	
		// Find all application numbers with the same prefix
		def apllications = FormDetail.findAllByApllicationNoLike("${prefix}%")
		
		// Default the next number to 1
		def nextNumber = 1
	
		if (!apllications.isEmpty()) {
			// Sort applications by applicationNo in descending order and get the first one
			def latestApp = apllications.sort { a, b -> b.apllicationNo <=> a.apllicationNo }.first()
			// Extract the numeric part from the latest application number
			def lastNumberPart = latestApp.apllicationNo.replaceAll("${prefix}", "")
			if (lastNumberPart.isInteger()) {
				nextNumber = lastNumberPart.toInteger() + 1
			}
		}
	
		// Format the next number with leading zeros to make it 4 digits
		def apllicationNo = "${prefix}${String.format('%04d', nextNumber)}"
	
		// Log the generated application number
		println("Generated Application Number: " + apllicationNo)
	
		// Pass the application number to the form page
		respond new FormDetail(params), model: [apllicationNo: apllicationNo]
	}
	
	
	def edId
	def createEducations(){
		edId = params.id
		println("edId  "+edId)
		FormDetail formdt = FormDetail.findById(params.id)
		model:[formdt:formdt]


	}

	def edIds
	def createAddmore(){
		edIds = params.id
		println("edIds  "+edIds)
		FormDetail formdt = FormDetail.findById(params.id)
		model:[formdt:formdt]
	}

	def edIdss
	def createdocumentss(){
		edIdss = params.id
		println("edIds  "+edIdss)
		FormDetail formdt = FormDetail.findById(params.id)
		model:[formdt:formdt]
	}


	@Transactional
	def save() {

		FormDetail formDetailInstance = new FormDetail()


		println("params"+ params)

		formDetailInstance.apllicationNo = params.apllicationNo
		formDetailInstance.firstName = params.firstName
		formDetailInstance.lastName = params.lastName
		formDetailInstance.fName = params.fName
		formDetailInstance.mName = params.mName
		formDetailInstance.gender = params.gender
		if(params.dob1 != ""){
			formDetailInstance.dob = df.parse(params.dob1)
		}
		formDetailInstance.email = params.email
		formDetailInstance.phoneNumber = params.phoneNumber
		formDetailInstance.hNo = params.hNo
		formDetailInstance.street = params.street
		formDetailInstance.village = params.village
		formDetailInstance.taluka = params.taluka
		formDetailInstance.district = params.district
		formDetailInstance.state = params.state
		formDetailInstance.pinCode = params.pinCode
		formDetailInstance.country = params.country
		formDetailInstance.socialcategory = params.socialcategory
		formDetailInstance.subcast = params.subcast
		formDetailInstance.rdno = params.rdno
		formDetailInstance.religion = params.religion
		formDetailInstance.appliyingPost = params.appliyingPost
		formDetailInstance.appliyingSub = params.appliyingSub
		formDetailInstance.sslc = params.sslc
		formDetailInstance.obtainedsslc = params.obtainedsslc
		formDetailInstance.maximumsslc = params.maximumsslc

		formDetailInstance.percentagesslc = params.percentagesslc1
		println("params.percentagesslc1"+params.percentagesslc1)
		if(params.sslcyear1 != ""){
			formDetailInstance.sslcyear= df.parse(params.sslcyear1)
		}
		formDetailInstance.boardUniversitysslc = params.boardUniversitysslc
		formDetailInstance.kannadaLanguage = params.kannadaLanguage

		formDetailInstance.puc = params.puc
		formDetailInstance.obtainedpuc = params.obtainedpuc
		formDetailInstance.maximumpuc = params.maximumpuc
		formDetailInstance.percentagepuc = params.percentagepuc
		if(params.pucyear1 != ""){
			formDetailInstance.pucyear= df.parse(params.pucyear1)
		}
		formDetailInstance.boardUniversitypuc = params.boardUniversitypuc
		formDetailInstance.bachelorsDegree = params.bachelorsDegree
		formDetailInstance.percentagebachelorsDegree = params.percentagebachelorsDegree
		if(params.bachelorsDegreeyear1 != ""){
			formDetailInstance.bachelorsDegreeyear= df.parse(params.bachelorsDegreeyear1)
		}
		formDetailInstance.boardUniversitybachelorsDegree = params.boardUniversitybachelorsDegree
		formDetailInstance.mastersDegree = params.mastersDegree
		formDetailInstance.percentagemastersDegree = params.percentagemastersDegree
		if(params.mastersDegreeyear1 != ""){
			formDetailInstance.mastersDegreeyear= df.parse(params.mastersDegreeyear1)
		}
		formDetailInstance.boardUniversitymastersDegree = params.boardUniversitymastersDegree



		formDetailInstance.pHD = params.pHD
		formDetailInstance.pHDSubject = params.pHDSubject
		formDetailInstance.percentagepHD = params.percentagepHD
		if(params.pHDyear1 != ""){
			formDetailInstance.pHDyear= df.parse(params.pHDyear1)
		}
		formDetailInstance.boardUniversitypHD = params.boardUniversitypHD



		formDetailInstance.woman = params.woman
		formDetailInstance.ruralstdy = params.ruralstdy
		formDetailInstance.exServiceMan = params.exServiceMan
		formDetailInstance.kannadaMedium = params.kannadaMedium
		formDetailInstance.projectDisplacedPerson = params.projectDisplacedPerson
		formDetailInstance.j371 = params.j371
		formDetailInstance.pwd = params.pwd

		formDetailInstance.kvcNo = params.kvcNo
		if(params.fvcDate1 != ""){
			formDetailInstance.fvcDate= df.parse(params.fvcDate1)
		}

		formDetailInstance.degreeNameBachelors = params.degreeNameBachelors
		formDetailInstance.subjectMaster = params.subjectMaster


		formDetailInstance.hkRDNO = params.hkRDNO

		formDetailInstance.age = params.age
		formDetailInstance.ageRelax = params.ageRelax
		formDetailInstance.ageCat = params.ageCat

		if(params.hkIssueDate1 != ""){
			formDetailInstance.hkIssueDate= df.parse(params.hkIssueDate1)
		}

		formDetailInstance.neteducation = params.neteducation



		//def users =Usercreation.findAllByAdminId(userService.getCurrentAdmin())

		formDetailInstance.setCommonUserId(userService.getCurrentCommanUsers())

		//def stPaths= grailsApplication.config.jobImages
		//userService.createImagePath(stPath)

		def stPaths = grailsApplication.config.jimagesFolder
		userService.createImagePath(stPaths)
		println("hhhhhhhhhhh")
		// new single image
		def picture1 = request.getFile("picture")

		if(picture1.getOriginalFilename()){

			String s = stPaths + formDetailInstance.apllicationNo +"(Picture)_" + picture1.getOriginalFilename()
			try{
				picture1.transferTo(new File(s))
			}catch(Exception e){}
			Images image = new Images(name:picture1.getOriginalFilename(),imgpath:s).save(flush:true)
			formDetailInstance.setPicture(image)
		}

		def signature1 = request.getFile("signature")

		if(signature1.getOriginalFilename()){

			String s = stPaths + formDetailInstance.apllicationNo +"(Signature)_" +  signature1.getOriginalFilename()
			try{
				signature1.transferTo(new File(s))
			}catch(Exception e){}
			Images image = new Images(name:signature1.getOriginalFilename(),imgpath:s).save(flush:true)
			formDetailInstance.setSignature(image)
		}

		//two

		def sslcMarksSheet1 = request.getFile('sslcMarksSheet')

		if(sslcMarksSheet1.getOriginalFilename()){
			String s = stPaths + formDetailInstance.apllicationNo +"(SSLC MarksSheet)_" +  sslcMarksSheet1.getOriginalFilename()
			try{
				sslcMarksSheet1.transferTo(new File(s))
			}catch(Exception e){}
			Images image = new Images(name:sslcMarksSheet1.getOriginalFilename(),imgpath:s).save(flush:true)
			formDetailInstance.setSslcMarksSheet(image)
		}

		//
		def pucMarksSheet1 = request.getFile('pucMarksSheet')

		if(pucMarksSheet1.getOriginalFilename()){
			String s = stPaths + formDetailInstance.apllicationNo +"(PUC MarksSheet)_" +  pucMarksSheet1.getOriginalFilename()
			try{
				pucMarksSheet1.transferTo(new File(s))
			}catch(Exception e){}
			Images image = new Images(name:pucMarksSheet1.getOriginalFilename(),imgpath:s).save(flush:true)
			formDetailInstance.setPucMarksSheet(image)
		}

		//
		def bachelorsMarksSheet1 = request.getFile('bachelorsMarksSheet')

		if(bachelorsMarksSheet1.getOriginalFilename()){
			String s = stPaths + formDetailInstance.apllicationNo +"(Bachelors MarksSheet)_" +   bachelorsMarksSheet1.getOriginalFilename()
			try{
				bachelorsMarksSheet1.transferTo(new File(s))
			}catch(Exception e){}
			Images image = new Images(name:bachelorsMarksSheet1.getOriginalFilename(),imgpath:s).save(flush:true)
			formDetailInstance.setBachelorsMarksSheet(image)
		}


		def ugPDC1 = request.getFile('ugPDC')

		if(ugPDC1.getOriginalFilename()){
			String s = stPaths + formDetailInstance.apllicationNo +"(Bachelors MarksSheet PDC)_" +   ugPDC1.getOriginalFilename()
			try{
				ugPDC1.transferTo(new File(s))
			}catch(Exception e){}
			Images image = new Images(name:ugPDC1.getOriginalFilename(),imgpath:s).save(flush:true)
			formDetailInstance.setUgPDC(image)
		}





		def masterMarksSheet1 = request.getFile('masterMarksSheet')

		if(masterMarksSheet1.getOriginalFilename()){
			String s = stPaths + formDetailInstance.apllicationNo +"(Master MarksSheet)_" +  masterMarksSheet1.getOriginalFilename()
			try{
				masterMarksSheet1.transferTo(new File(s))
			}catch(Exception e){}
			Images image = new Images(name:masterMarksSheet1.getOriginalFilename(),imgpath:s).save(flush:true)
			formDetailInstance.setMasterMarksSheet(image)
		}

		def pgPDC1 = request.getFile('pgPDC')

		if(pgPDC1.getOriginalFilename()){
			String s = stPaths + formDetailInstance.apllicationNo +"(Master MarksSheet PDC)_" +  pgPDC1.getOriginalFilename()
			try{
				pgPDC1.transferTo(new File(s))
			}catch(Exception e){}
			Images image = new Images(name:pgPDC1.getOriginalFilename(),imgpath:s).save(flush:true)
			formDetailInstance.setPgPDC(image)
		}



		def phDCertificate1 = request.getFile("phDCertificate")

		if(phDCertificate1.getOriginalFilename()){

			String s = stPaths + formDetailInstance.apllicationNo +"(PhD Certificate)_" +  phDCertificate1.getOriginalFilename()
			try{
				phDCertificate1.transferTo(new File(s))
			}catch(Exception e){}
			Images image = new Images(name:phDCertificate1.getOriginalFilename(),imgpath:s).save(flush:true)
			formDetailInstance.setPhDCertificate(image)
		}


		def phdPDc1 = request.getFile("phdPDc")

		if(phdPDc1.getOriginalFilename()){

			String s = stPaths + formDetailInstance.apllicationNo +"(PhD Certificate PDC)_" +  phdPDc1.getOriginalFilename()
			try{
				phdPDc1.transferTo(new File(s))
			}catch(Exception e){}
			Images image = new Images(name:phdPDc1.getOriginalFilename(),imgpath:s).save(flush:true)
			formDetailInstance.setPhdPDc(image)
		}


		//two

		def nETCertificate1 = request.getFile('nETCertificate')

		if(nETCertificate1.getOriginalFilename()){
			String s = stPaths + formDetailInstance.apllicationNo +"(NET Certificate)_" +  nETCertificate1.getOriginalFilename()
			try{
				nETCertificate1.transferTo(new File(s))
			}catch(Exception e){}
			Images image = new Images(name:nETCertificate1.getOriginalFilename(),imgpath:s).save(flush:true)
			formDetailInstance.setNETCertificate(image)
		}

		//
		def casteIncomeCertificate1 = request.getFile('casteIncomeCertificate')

		if(casteIncomeCertificate1.getOriginalFilename()){
			String s = stPaths + formDetailInstance.apllicationNo +"(Caste Income Certificate)_" +   casteIncomeCertificate1.getOriginalFilename()
			try{
				casteIncomeCertificate1.transferTo(new File(s))
			}catch(Exception e){}
			Images image = new Images(name:casteIncomeCertificate1.getOriginalFilename(),imgpath:s).save(flush:true)
			formDetailInstance.setCasteIncomeCertificate(image)
		}

		//
		def ruralCertificate1 = request.getFile('ruralCertificate')

		if(ruralCertificate1.getOriginalFilename()){
			String s = stPaths + formDetailInstance.apllicationNo +"(Rural Certificate)_" +  ruralCertificate1.getOriginalFilename()
			try{
				ruralCertificate1.transferTo(new File(s))
			}catch(Exception e){}
			Images image = new Images(name:ruralCertificate1.getOriginalFilename(),imgpath:s).save(flush:true)
			formDetailInstance.setRuralCertificate(image)
		}





		def exServicemenCertificate1 = request.getFile('exServicemenCertificate')

		if(exServicemenCertificate1.getOriginalFilename()){
			String s = stPaths + formDetailInstance.apllicationNo +"(Ex Servicemen Certificate)_" +   exServicemenCertificate1.getOriginalFilename()
			try{
				exServicemenCertificate1.transferTo(new File(s))
			}catch(Exception e){}
			Images image = new Images(name:exServicemenCertificate1.getOriginalFilename(),imgpath:s).save(flush:true)
			formDetailInstance.setExServicemenCertificate(image)
		}
		
		def ageRelax11 = request.getFile("ageRelax1")
		
				if(ageRelax11.getOriginalFilename()){
		
					String s = stPaths + formDetailInstance.apllicationNo +"(AgeRelaxtion Certificate)_" +   ageRelax11.getOriginalFilename()
					try{
						ageRelax11.transferTo(new File(s))
					}catch(Exception e){}
					Images image = new Images(name:ageRelax11.getOriginalFilename(),imgpath:s).save(flush:true)
					formDetailInstance.setAgeRelax1(image)
				}


		def kannadaMediumCertificate1 = request.getFile("kannadaMediumCertificate")

		if(kannadaMediumCertificate1.getOriginalFilename()){

			String s = stPaths + formDetailInstance.apllicationNo +"(kannada Medium Certificate)_" +   kannadaMediumCertificate1.getOriginalFilename()
			try{
				kannadaMediumCertificate1.transferTo(new File(s))
			}catch(Exception e){}
			Images image = new Images(name:kannadaMediumCertificate1.getOriginalFilename(),imgpath:s).save(flush:true)
			formDetailInstance.setKannadaMediumCertificate(image)
		}

		def kalyanaKarnatakaCertificate1 = request.getFile("kalyanaKarnatakaCertificate")

		if(kalyanaKarnatakaCertificate1.getOriginalFilename()){

			String s = stPaths + formDetailInstance.apllicationNo +"(kalyana Karnataka Certificate)_" +   kalyanaKarnatakaCertificate1.getOriginalFilename()
			try{
				kalyanaKarnatakaCertificate1.transferTo(new File(s))
			}catch(Exception e){}
			Images image = new Images(name:kalyanaKarnatakaCertificate1.getOriginalFilename(),imgpath:s).save(flush:true)
			formDetailInstance.setKalyanaKarnatakaCertificate(image)
		}

		//two

		def personwithDisabilityCertificate1 = request.getFile('personwithDisabilityCertificate')

		if(personwithDisabilityCertificate1.getOriginalFilename()){
			String s = stPaths + formDetailInstance.apllicationNo +"(person with Disability Certificate)_" +   personwithDisabilityCertificate1.getOriginalFilename()
			try{
				personwithDisabilityCertificate1.transferTo(new File(s))
			}catch(Exception e){}
			Images image = new Images(name:personwithDisabilityCertificate1.getOriginalFilename(),imgpath:s).save(flush:true)
			formDetailInstance.setPersonwithDisabilityCertificate(image)
		}


		def experienceCertificate1 = request.getFile('experienceCertificate')
		if(experienceCertificate1 != null){
			if(experienceCertificate1.getOriginalFilename()){
				String s = stPaths + formDetailInstance.apllicationNo +"(Experience Certificate)_" +  experienceCertificate1.getOriginalFilename()
				try{
					experienceCertificate1.transferTo(new File(s))
				}catch(Exception e){}
				Images image = new Images(name:experienceCertificate1.getOriginalFilename(),imgpath:s).save(flush:true)
				formDetailInstance.setExperienceCertificate(image)
			}
		}

		//
		def kVCCertificate1 = request.getFile('kVCCertificate')

		if(kVCCertificate1.getOriginalFilename()){
			String s = stPaths + formDetailInstance.apllicationNo +"(KVC Certificate front)_" +  kVCCertificate1.getOriginalFilename()
			try{
				kVCCertificate1.transferTo(new File(s))
			}catch(Exception e){}
			Images image = new Images(name:kVCCertificate1.getOriginalFilename(),imgpath:s).save(flush:true)
			formDetailInstance.setKVCCertificate(image)
		}

		def kvc21 = request.getFile('kvc2')

		if(kvc21.getOriginalFilename()){
			String s = stPaths + formDetailInstance.apllicationNo +"(KVC Certificate back)_" +  kvc21.getOriginalFilename()
			try{
				kvc21.transferTo(new File(s))
			}catch(Exception e){}
			Images image = new Images(name:kvc21.getOriginalFilename(),imgpath:s).save(flush:true)
			formDetailInstance.setKvc2(image)
		}



		def uploadfile1 = request.getFile("uploade1")

		if(uploadfile1.getOriginalFilename()){

			String s = stPaths + formDetailInstance.apllicationNo +"(Uploade 1)_" +  uploadfile1.getOriginalFilename()
			try{
				uploadfile1.transferTo(new File(s))
			}catch(Exception e){}
			Images image = new Images(name:uploadfile1.getOriginalFilename(),imgpath:s).save(flush:true)
			formDetailInstance.setUploade1(image)
		}

		//two

		def uploadfile2 = request.getFile('uploade2')

		if(uploadfile2.getOriginalFilename()){
			String s = stPaths + formDetailInstance.apllicationNo +"(Uploade 2)_" +  uploadfile2.getOriginalFilename()
			try{
				uploadfile2.transferTo(new File(s))
			}catch(Exception e){}
			Images image = new Images(name:uploadfile2.getOriginalFilename(),imgpath:s).save(flush:true)
			formDetailInstance.setUploade2(image)
		}

		//
		def uploadfile3 = request.getFile('uploade3')

		if(uploadfile3.getOriginalFilename()){
			String s = stPaths + formDetailInstance.apllicationNo +"(Uploade 3)_" +  uploadfile3.getOriginalFilename()
			try{
				uploadfile3.transferTo(new File(s))
			}catch(Exception e){}
			Images image = new Images(name:uploadfile3.getOriginalFilename(),imgpath:s).save(flush:true)
			formDetailInstance.setUploade3(image)
		}

		//
		def uploadfile4 = request.getFile('uploade4')

		if(uploadfile4.getOriginalFilename()){
			String s = stPaths + formDetailInstance.apllicationNo +"(Uploade 4)_" +  uploadfile4.getOriginalFilename()
			try{
				uploadfile4.transferTo(new File(s))
			}catch(Exception e){}
			Images image = new Images(name:uploadfile4.getOriginalFilename(),imgpath:s).save(flush:true)
			formDetailInstance.setUploade4(image)
		}





		def uploadfile5 = request.getFile('uploade5')

		if(uploadfile5.getOriginalFilename()){
			String s = stPaths + formDetailInstance.apllicationNo +"(Uploade 5)_" +  uploadfile5.getOriginalFilename()
			try{
				uploadfile5.transferTo(new File(s))
			}catch(Exception e){}
			Images image = new Images(name:uploadfile5.getOriginalFilename(),imgpath:s).save(flush:true)
			formDetailInstance.setUploade5(image)
		}

		def uploadfile6 = request.getFile("uploade6")

		if(uploadfile6.getOriginalFilename()){

			String s = stPaths + formDetailInstance.apllicationNo +"(Uploade 6)_" +  uploadfile6.getOriginalFilename()
			try{
				uploadfile6.transferTo(new File(s))
			}catch(Exception e){}
			Images image = new Images(name:uploadfile6.getOriginalFilename(),imgpath:s).save(flush:true)
			formDetailInstance.setUploade6(image)
		}

		//two

		def uploadfile7 = request.getFile('uploade7')

		if(uploadfile7.getOriginalFilename()){
			String s = stPaths + formDetailInstance.apllicationNo +"(Uploade 7)_" +  uploadfile7.getOriginalFilename()
			try{
				uploadfile7.transferTo(new File(s))
			}catch(Exception e){}
			Images image = new Images(name:uploadfile7.getOriginalFilename(),imgpath:s).save(flush:true)
			formDetailInstance.setUploade7(image)
		}

		//
		def uploadfile8 = request.getFile('uploade8')

		if(uploadfile8.getOriginalFilename()){
			String s = stPaths + formDetailInstance.apllicationNo +"(Uploade 8)_" +  uploadfile8.getOriginalFilename()
			try{
				uploadfile8.transferTo(new File(s))
			}catch(Exception e){}
			Images image = new Images(name:uploadfile8.getOriginalFilename(),imgpath:s).save(flush:true)
			formDetailInstance.setUploade8(image)
		}

		//
		def uploadfile9 = request.getFile('uploade9')

		if(uploadfile9.getOriginalFilename()){
			String s = stPaths + formDetailInstance.apllicationNo +"(Uploade 9)_" +  uploadfile9.getOriginalFilename()
			try{
				uploadfile9.transferTo(new File(s))
			}catch(Exception e){}
			Images image = new Images(name:uploadfile9.getOriginalFilename(),imgpath:s).save(flush:true)
			formDetailInstance.setUploade9(image)
		}

		def uploadfile10 = request.getFile('uploade10')

		if(uploadfile10.getOriginalFilename()){
			String s = stPaths + formDetailInstance.apllicationNo +"(Uploade 10)_" +  uploadfile10.getOriginalFilename()
			try{
				uploadfile10.transferTo(new File(s))
			}catch(Exception e){}
			Images image = new Images(name:uploadfile10.getOriginalFilename(),imgpath:s).save(flush:true)
			formDetailInstance.setUploade10(image)
		}


		/*	Scientific Publication add more */



		if(params.particulars instanceof String){
			ScientificPublication publications1 = new ScientificPublication(particulars:params.particulars,titlesPapers:params.titlesPapers,publisher:params.publisher,types:params.types,detailsss:params.detailsss)
			formDetailInstance.addToSp(publications1)
		}else {
			def particulars = params.particulars as List
			def titlesPapers = params.titlesPapers as List
			def publisher = params.publisher as List
			def types = params.types as List
			def detailsss = params.detailsss as List

			particulars.eachWithIndex{ def entry, int m ->
				ScientificPublication publications1 = new ScientificPublication(particulars:particulars.get(m),titlesPapers:titlesPapers.get(m),publisher:publisher.get(m),types:types.get(m),detailsss:detailsss.get(m))
				formDetailInstance.addToSp(publications1)
			}
		}

		/*	Langaugea add more */ 



		if(params.language instanceof String){
			Languages publicationss = new Languages(language:params.language,reading:params.reading,writing:params.writing,speaking:params.speaking,examinationpassed:params.examinationpassed,examDetails:params.examDetails)
			formDetailInstance.addToLanguages1(publicationss)
		}else {
			def language = params.language as List
			def reading = params.reading as List
			def writing = params.writing as List
			def speaking = params.speaking as List
			def examinationpassed = params.examinationpassed as List
			def examDetails = params.examDetails as List
			language.eachWithIndex{ def entry, int j ->
				Languages publicationss = new Languages(language:language.get(j),reading:reading.get(j),writing:writing.get(j),speaking:speaking.get(j),examinationpassed:examinationpassed.get(j),examDetails:examDetails.get(j))
				formDetailInstance.addToLanguages1(publicationss)
			}
		}



		/*	Other Degree add more */





		if(params.nameofDegree instanceof String){

			OtherDegrees publicationss1 = new OtherDegrees(nameofDegree:params.nameofDegree, additionalType:params.additionalType,otherDiploma:params.otherDiploma,percentageotherDiploma:params.percentageotherDiploma,otherDiplomayear:params.otherDiplomayear,boardUniversityotherDiploma:params.boardUniversityotherDiploma)
			formDetailInstance.addToOtherDegrees1(publicationss1)

		}else {
			def nameofDegree = params.nameofDegree as List
			def additionalType = params.additionalType as List
			def otherDiploma = params.otherDiploma as List
			def percentageotherDiploma = params.percentageotherDiploma as List
			def otherDiplomayear = params.otherDiplomayear as List
			def boardUniversityotherDiploma = params.boardUniversityotherDiploma as List
			nameofDegree.eachWithIndex{ def entry, int i ->
				OtherDegrees publicationss1 = new OtherDegrees(nameofDegree:nameofDegree.get(i),additionalType:additionalType.get(i),otherDiploma:otherDiploma.get(i),percentageotherDiploma:percentageotherDiploma.get(i),otherDiplomayear:otherDiplomayear.get(i),boardUniversityotherDiploma:boardUniversityotherDiploma.get(i))
				formDetailInstance.addToOtherDegrees1(publicationss1)
			}
		}



		/*	Special Awards add more */


		if(params.particularsAwards instanceof String){

			SpecialAwards publicationff = new SpecialAwards(particularsAwards:params.particularsAwards,noofAwards:params.noofAwards,awardsYear:params.awardsYear,awardedfor:params.awardedfor)
			formDetailInstance.addToSpecialAwards2(publicationff)

		}else {
			def particularsAwards = params.particularsAwards as List
			def noofAwards = params.noofAwards as List
			def awardsYear = params.awardsYear as List
			def awardedfor = params.awardedfor as List
			particularsAwards.eachWithIndex{ def entry, int p ->
				SpecialAwards publicationff = new SpecialAwards(particularsAwards:particularsAwards.get(p),noofAwards:noofAwards.get(p),awardsYear:awardsYear.get(p),awardedfor:awardedfor.get(p))
				formDetailInstance.addToSpecialAwards2(publicationff)
			}
		}


		/*	Experience add more */





		if(params.workExperience instanceof String){

			Experiences publicationhh = new Experiences(workExperience:params.workExperience,companyName:params.companyName,postHeld:params.postHeld,nameOfTheEmployeer:params.nameOfTheEmployeer, dateOfJoining:params.dateOfJoining,dateOfLeaving:params.dateOfLeaving,periodOfService:params.periodOfService,reasonOfLeaving:params.reasonOfLeaving,basicPay:params.basicPay)
			formDetailInstance.addToExperiences1(publicationhh)

		}else {
			def workExperience = params.workExperience as List
			def companyName = params.companyName as List
			def postHeld = params.postHeld as List
			def nameOfTheEmployeer = params.nameOfTheEmployeer as List
			def dateOfJoining = params.dateOfJoining as List
			def dateOfLeaving = params.dateOfLeaving as List
			def periodOfService = params.periodOfService as List
			def reasonOfLeaving = params.reasonOfLeaving as List
			def basicPay = params.basicPay as List
			workExperience.eachWithIndex { def entry, int x ->
				Experiences publicationhh = new Experiences(workExperience:workExperience.get(x),companyName:companyName.get(x),postHeld:postHeld.get(x),nameOfTheEmployeer:nameOfTheEmployeer.get(x), dateOfJoining:dateOfJoining.get(x),dateOfLeaving:dateOfLeaving.get(x),periodOfService:periodOfService.get(x),reasonOfLeaving:reasonOfLeaving.get(x),basicPay:basicPay.get(x))
				formDetailInstance.addToExperiences1(publicationhh)

			}
		}
		// save method for Special attainment in academic field.

		if(params.particular instanceof String){
			SpecialAttainment sa= new SpecialAttainment(particular:params.particular,cadre:params.cadre,year:params.year,details:params.details)
			formDetailInstance.addToSpecialAttainment1(sa)
		}else {
			def particular = params.particular as List
			def cadre = params.cadre as List
			def year = params.year as List
			def details = params.details as List
			particular.eachWithIndex{ def entry, int k ->
				SpecialAttainment sa = new SpecialAttainment(particular:particular.get(k),cadre:cadre.get(k),year:year.get(k),details:details.get(k))
				formDetailInstance.addToSpecialAttainment1(sa)
			}
		}


		// Save method for Patent.


		if(params.details1 instanceof String){
			Patent pt= new Patent(details1:params.details1,year1:params.year1)
			formDetailInstance.addToPatent1(pt)
		}else {
			def details1 = params.details1 as List
			def year1 = params.year1 as List
			details1.eachWithIndex{ def entry, int d ->
				Patent pt = new Patent(details1:details1.get(d),year1:year1.get(d))
				formDetailInstance.addToPatent1(pt)
			}
		}


		// Save method for Funded Projects

		if(params.projectTitle instanceof String){
			FundedProject fp= new FundedProject(projectTitle:params.projectTitle,cadre2:params.cadre2,projectOutlay:params.projectOutlay,details2:params.details2)
			formDetailInstance.addToFproject(fp)
		}else {
			def projectTitle = params.projectTitle as List
			def cadre2 = params.cadre2 as List
			def projectOutlay = params.projectOutlay as List
			def details2 = params.details2 as List
			projectTitle.eachWithIndex{ def entry, int c ->
				FundedProject fp = new FundedProject(projectTitle:projectTitle.get(c),cadre2:cadre2.get(c),projectOutlay:projectOutlay.get(c),details2:details2.get(c))
				formDetailInstance.addToFproject(fp)
			}
		}

		// Save method for workshops


		if(params.particulars3 instanceof String){
			Workshops ws = new Workshops(particulars3:params.particulars3,level3:params.level3,year3:params.year3,details3:params.details3,type10:params.type10)
			formDetailInstance.addToWshop(ws)
		}else {
			def particulars3 = params.particulars3 as List
			def level3 = params.level3 as List
			def year3 = params.year3 as List
			def details3 = params.details3 as List
			def type10 = params.type10 as List
			particulars3.eachWithIndex{ def entry, int b ->
				Workshops ws = new Workshops(particulars3:particulars3.get(b),level3:level3.get(b),year3:year3.get(b),details3:details3.get(b),type10:type10.get(b))
				formDetailInstance.addToWshop(ws)
			}
		}


		// Save method for ACHIEVEMENTS IN SPORTS & CULTURAL / NCC / NSS / SCOUTS & GUIDES ACTIVITIES


		if(params.typeAchievement instanceof String){
			Achievements achi = new Achievements(typeAchievement:params.typeAchievement,particularsEvent:params.particularsEvent,periodDuration:params.periodDuration,level:params.level)
			formDetailInstance.addToAchievements1(achi)
		}else {
			def typeAchievement = params.typeAchievement as List
			def particularsEvent = params.particularsEvent as List
			def periodDuration = params.periodDuration as List
			def level = params.level as List
			typeAchievement.eachWithIndex{ def entry, int kk ->
				Achievements achi = new Achievements(typeAchievement:typeAchievement.get(kk),particularsEvent:particularsEvent.get(kk),periodDuration:periodDuration.get(kk),level:level.get(kk))
				formDetailInstance.addToAchievements1(achi)
			}
		}

		// Save method for Confidential reports


		if(params.year4 instanceof String){
			ConfidentialReports cr = new ConfidentialReports(year4:params.year4,grade:params.grade,cadre6:params.cadre6)
			formDetailInstance.addToCreports(cr)
		}else {
			def year4 = params.year4 as List
			def grade = params.grade as List
			def cadre6 = params.cadre6 as List

			year4.eachWithIndex{ def entry, int a ->
				ConfidentialReports cr = new ConfidentialReports(year4:year4.get(a),grade:grade.get(a),cadre6:cadre6.get(a))
				formDetailInstance.addToCreports(cr)
			}
		}






		def formDet = FormDetail.findByApllicationNo(params.apllicationNo)

		if(!formDet){
			formDetailInstance.save flush:true

		}else{
			flash.message= "Please try Again"
		}

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.created.message', args: [
					message(code: 'formDetail.label', default: 'FormDetail'),
					formDetailInstance.id
				])
				SendSMS.sendSMS(params.phoneNumber,"Thank%20you%20for%20applying%20for%20the%20job%20of%20KVAFSU%20Your%20Application%20number%20is%20"+params.apllicationNo+"%20Regards%2C%20Service%20of%20Hi%20Ideals")

				redirect formDetailInstance
			}
			'*' { respond formDetailInstance, [status: CREATED] }
		}
	}

	def edit(FormDetail formDetailInstance) {

		respond formDetailInstance

	}

	@Transactional
	def updateForm() {

		def formDetailInstance = FormDetail.findById(params.id)



		println("params"+ params)
		formDetailInstance.apllicationNo = params.apllicationNo
		formDetailInstance.firstName = params.firstName
		formDetailInstance.lastName = params.lastName
		formDetailInstance.fName = params.fName
		formDetailInstance.mName = params.mName
		formDetailInstance.gender = params.gender
		if(params.dob1 != ""){
			formDetailInstance.dob = df.parse(params.dob1)
		}
		formDetailInstance.email = params.email
		formDetailInstance.phoneNumber = params.phoneNumber
		formDetailInstance.hNo = params.hNo
		formDetailInstance.street = params.street
		formDetailInstance.village = params.village
		formDetailInstance.taluka = params.taluka
		formDetailInstance.district = params.district
		formDetailInstance.state = params.state
		formDetailInstance.pinCode = params.pinCode
		formDetailInstance.country = params.country
		formDetailInstance.socialcategory = params.socialcategory
		formDetailInstance.subcast = params.subcast
		formDetailInstance.rdno = params.rdno
		formDetailInstance.religion = params.religion
		formDetailInstance.appliyingPost = params.appliyingPost
		formDetailInstance.appliyingSub = params.appliyingSub
		formDetailInstance.sslc = params.sslc
		formDetailInstance.obtainedsslc = params.obtainedsslc
		formDetailInstance.maximumsslc = params.maximumsslc

		formDetailInstance.percentagesslc = params.percentagesslc1
		println("params.percentagesslc1"+params.percentagesslc1)
		if(params.sslcyear1 != ""){
			formDetailInstance.sslcyear= df.parse(params.sslcyear1)
		}
		formDetailInstance.boardUniversitysslc = params.boardUniversitysslc
		formDetailInstance.kannadaLanguage = params.kannadaLanguage
		formDetailInstance.puc = params.puc
		formDetailInstance.obtainedpuc = params.obtainedpuc
		formDetailInstance.maximumpuc = params.maximumpuc
		formDetailInstance.percentagepuc = params.percentagepuc
		if(params.pucyear1 != ""){
			formDetailInstance.pucyear= df.parse(params.pucyear1)
		}
		formDetailInstance.boardUniversitypuc = params.boardUniversitypuc
		formDetailInstance.bachelorsDegree = params.bachelorsDegree
		formDetailInstance.percentagebachelorsDegree = params.percentagebachelorsDegree
		if(params.bachelorsDegreeyear1 != ""){
			formDetailInstance.bachelorsDegreeyear= df.parse(params.bachelorsDegreeyear1)
		}
		formDetailInstance.boardUniversitybachelorsDegree = params.boardUniversitybachelorsDegree
		formDetailInstance.mastersDegree = params.mastersDegree
		formDetailInstance.percentagemastersDegree = params.percentagemastersDegree
		if(params.mastersDegreeyear1 != ""){
			formDetailInstance.mastersDegreeyear= df.parse(params.mastersDegreeyear1)
		}
		formDetailInstance.boardUniversitymastersDegree = params.boardUniversitymastersDegree

		formDetailInstance.pHD = params.pHD
		formDetailInstance.pHDSubject = params.pHDSubject
		formDetailInstance.percentagepHD = params.percentagepHD
		if(params.pHDyear1 != ""){
			formDetailInstance.pHDyear= df.parse(params.pHDyear1)
		}
		formDetailInstance.boardUniversitypHD = params.boardUniversitypHD



		formDetailInstance.woman = params.woman
		formDetailInstance.ruralstdy = params.ruralstdy
		formDetailInstance.exServiceMan = params.exServiceMan
		formDetailInstance.kannadaMedium = params.kannadaMedium
		formDetailInstance.projectDisplacedPerson = params.projectDisplacedPerson
		formDetailInstance.j371 = params.j371
		formDetailInstance.pwd = params.pwd

		formDetailInstance.kvcNo = params.kvcNo
		if(params.fvcDate1 != ""){
			formDetailInstance.fvcDate= df.parse(params.fvcDate1)
		}

		formDetailInstance.degreeNameBachelors = params.degreeNameBachelors
		formDetailInstance.subjectMaster = params.subjectMaster



		//def users =Usercreation.findAllByAdminId(userService.getCurrentAdmin())

		formDetailInstance.setCommonUserId(userService.getCurrentCommanUsers())

		//	def stPaths= grailsApplication.config.jobImages
		//userService.createImagePath(stPath)

		def stPaths = grailsApplication.config.juserPhotos
		userService.createImagePath(stPaths)
		println("hhhhhhhhhhh")
		// new single image

		def picture1 = request.getFile("picture")

		if(picture1.getOriginalFilename()){

			String s = stPaths + picture1.getOriginalFilename()
			try{
				picture1.transferTo(new File(s))
			}catch(Exception e){}
			Images image = new Images(name:picture1.getOriginalFilename(),imgpath:s).save(flush:true)
			formDetailInstance.setPicture(image)
		}

		def signature1 = request.getFile("signature")

		if(signature1.getOriginalFilename()){
			println("stPathstPath"+stPath)
			String s = stPaths+ signature1.getOriginalFilename()
			try{
				signature1.transferTo(new File(s))
			}catch(Exception e){}
			Images image = new Images(name:signature1.getOriginalFilename(),imgpath:s).save(flush:true)
			formDetailInstance.setSignature(image)
		}

		//two

		def sslcMarksSheet1 = request.getFile('sslcMarksSheet')

		if(sslcMarksSheet1.getOriginalFilename()){
			String s = stPaths+ sslcMarksSheet1.getOriginalFilename()
			try{
				sslcMarksSheet1.transferTo(new File(s))
			}catch(Exception e){}
			Images image = new Images(name:sslcMarksSheet1.getOriginalFilename(),imgpath:s).save(flush:true)
			formDetailInstance.setSslcMarksSheet(image)
		}

		//
		def pucMarksSheet1 = request.getFile('pucMarksSheet')

		if(pucMarksSheet1.getOriginalFilename()){
			String s = stPaths+ pucMarksSheet1.getOriginalFilename()
			try{
				pucMarksSheet1.transferTo(new File(s))
			}catch(Exception e){}
			Images image = new Images(name:pucMarksSheet1.getOriginalFilename(),imgpath:s).save(flush:true)
			formDetailInstance.setPucMarksSheet(image)
		}

		//
		def bachelorsMarksSheet1 = request.getFile('bachelorsMarksSheet')

		if(bachelorsMarksSheet1.getOriginalFilename()){
			String s = stPaths+ bachelorsMarksSheet1.getOriginalFilename()
			try{
				bachelorsMarksSheet1.transferTo(new File(s))
			}catch(Exception e){}
			Images image = new Images(name:bachelorsMarksSheet1.getOriginalFilename(),imgpath:s).save(flush:true)
			formDetailInstance.setBachelorsMarksSheet(image)
		}





		def masterMarksSheet1 = request.getFile('masterMarksSheet')

		if(masterMarksSheet1.getOriginalFilename()){
			String s = stPaths+ masterMarksSheet1.getOriginalFilename()
			try{
				masterMarksSheet1.transferTo(new File(s))
			}catch(Exception e){}
			Images image = new Images(name:masterMarksSheet1.getOriginalFilename(),imgpath:s).save(flush:true)
			formDetailInstance.setMasterMarksSheet(image)
		}

		def phDCertificate1 = request.getFile("phDCertificate")

		if(phDCertificate1.getOriginalFilename()){
			println("stPathstPath"+stPath)
			String s = stPaths+ phDCertificate1.getOriginalFilename()
			try{
				phDCertificate1.transferTo(new File(s))
			}catch(Exception e){}
			Images image = new Images(name:phDCertificate1.getOriginalFilename(),imgpath:s).save(flush:true)
			formDetailInstance.setPhDCertificate(image)
		}

		//two

		def nETCertificate1 = request.getFile('nETCertificate')

		if(nETCertificate1.getOriginalFilename()){
			String s = stPaths+ nETCertificate1.getOriginalFilename()
			try{
				nETCertificate1.transferTo(new File(s))
			}catch(Exception e){}
			Images image = new Images(name:nETCertificate1.getOriginalFilename(),imgpath:s).save(flush:true)
			formDetailInstance.setNETCertificate(image)
		}

		//
		def casteIncomeCertificate1 = request.getFile('casteIncomeCertificate')

		if(casteIncomeCertificate1.getOriginalFilename()){
			String s = stPaths+ casteIncomeCertificate1.getOriginalFilename()
			try{
				casteIncomeCertificate1.transferTo(new File(s))
			}catch(Exception e){}
			Images image = new Images(name:casteIncomeCertificate1.getOriginalFilename(),imgpath:s).save(flush:true)
			formDetailInstance.setCasteIncomeCertificate(image)
		}

		//
		def ruralCertificate1 = request.getFile('ruralCertificate')

		if(ruralCertificate1.getOriginalFilename()){
			String s = stPaths+ ruralCertificate1.getOriginalFilename()
			try{
				ruralCertificate1.transferTo(new File(s))
			}catch(Exception e){}
			Images image = new Images(name:ruralCertificate1.getOriginalFilename(),imgpath:s).save(flush:true)
			formDetailInstance.setRuralCertificate(image)
		}





		def exServicemenCertificate1 = request.getFile('exServicemenCertificate')

		if(exServicemenCertificate1.getOriginalFilename()){
			String s = stPaths+ exServicemenCertificate1.getOriginalFilename()
			try{
				exServicemenCertificate1.transferTo(new File(s))
			}catch(Exception e){}
			Images image = new Images(name:exServicemenCertificate1.getOriginalFilename(),imgpath:s).save(flush:true)
			formDetailInstance.setExServicemenCertificate(image)
		}

		def ageRelax11 = request.getFile("ageRelax1")
		
				if(ageRelax11.getOriginalFilename()){
					println("stPathstPath"+stPath)
					String s = stPaths+ ageRelax11.getOriginalFilename()
					try{
						ageRelax11.transferTo(new File(s))
					}catch(Exception e){}
					Images image = new Images(name:ageRelax11.getOriginalFilename(),imgpath:s).save(flush:true)
					formDetailInstance.setAgeRelax1(image)
				}

		def kannadaMediumCertificate1 = request.getFile("kannadaMediumCertificate")

		if(kannadaMediumCertificate1.getOriginalFilename()){
			println("stPathstPath"+stPath)
			String s = stPaths + kannadaMediumCertificate1.getOriginalFilename()
			try{
				kannadaMediumCertificate1.transferTo(new File(s))
			}catch(Exception e){}
			Images image = new Images(name:kannadaMediumCertificate1.getOriginalFilename(),imgpath:s).save(flush:true)
			formDetailInstance.setKannadaMediumCertificate(image)
		}

		def kalyanaKarnatakaCertificate1 = request.getFile("kalyanaKarnatakaCertificate")

		if(kalyanaKarnatakaCertificate1.getOriginalFilename()){
			println("stPathstPath"+stPath)
			String s = stPaths+ kalyanaKarnatakaCertificate1.getOriginalFilename()
			try{
				kalyanaKarnatakaCertificate1.transferTo(new File(s))
			}catch(Exception e){}
			Images image = new Images(name:kalyanaKarnatakaCertificate1.getOriginalFilename(),imgpath:s).save(flush:true)
			formDetailInstance.setKalyanaKarnatakaCertificate(image)
		}

		//two

		def personwithDisabilityCertificate1 = request.getFile('personwithDisabilityCertificate')

		if(personwithDisabilityCertificate1.getOriginalFilename()){
			String s = stPaths+ personwithDisabilityCertificate1.getOriginalFilename()
			try{
				personwithDisabilityCertificate1.transferTo(new File(s))
			}catch(Exception e){}
			Images image = new Images(name:personwithDisabilityCertificate1.getOriginalFilename(),imgpath:s).save(flush:true)
			formDetailInstance.setPersonwithDisabilityCertificate(image)
		}


		def experienceCertificate1 = request.getFile('experienceCertificate')

		if(experienceCertificate1.getOriginalFilename()){
			String s = stPaths+ experienceCertificate1.getOriginalFilename()
			try{
				personwithDisabilityCertificate1.transferTo(new File(s))
			}catch(Exception e){}
			Images image = new Images(name:experienceCertificate1.getOriginalFilename(),imgpath:s).save(flush:true)
			formDetailInstance.setExperienceCertificate(image)
		}

		//
		def kVCCertificate1 = request.getFile('kVCCertificate')

		if(kVCCertificate1.getOriginalFilename()){
			String s = stPaths+ kVCCertificate1.getOriginalFilename()
			try{
				kVCCertificate1.transferTo(new File(s))
			}catch(Exception e){}
			Images image = new Images(name:kVCCertificate1.getOriginalFilename(),imgpath:s).save(flush:true)
			formDetailInstance.setKVCCertificate(image)
		}

		def kvc21 = request.getFile('kvc2')

		if(kvc21.getOriginalFilename()){
			String s = stPaths + formDetailInstance.apllicationNo +"(KVC Certificate back)_" +  kvc21.getOriginalFilename()
			try{
				kvc21.transferTo(new File(s))
			}catch(Exception e){}
			Images image = new Images(name:kvc21.getOriginalFilename(),imgpath:s).save(flush:true)
			formDetailInstance.setKvc2(image)
		}


		def uploadfile1 = request.getFile("uploade1")

		if(uploadfile1.getOriginalFilename()){
			println("stPathstPath"+stPath)
			String s = stPaths+ uploadfile1.getOriginalFilename()
			try{
				uploadfile1.transferTo(new File(s))
			}catch(Exception e){}
			Images image = new Images(name:uploadfile1.getOriginalFilename(),imgpath:s).save(flush:true)
			formDetailInstance.setUploade1(image)
		}

		//two

		def uploadfile2 = request.getFile('uploade2')

		if(uploadfile2.getOriginalFilename()){
			String s = stPaths+ uploadfile2.getOriginalFilename()
			try{
				uploadfile2.transferTo(new File(s))
			}catch(Exception e){}
			Images image = new Images(name:uploadfile2.getOriginalFilename(),imgpath:s).save(flush:true)
			formDetailInstance.setUploade2(image)
		}

		//
		def uploadfile3 = request.getFile('uploade3')

		if(uploadfile3.getOriginalFilename()){
			String s = stPaths+ uploadfile3.getOriginalFilename()
			try{
				uploadfile3.transferTo(new File(s))
			}catch(Exception e){}
			Images image = new Images(name:uploadfile3.getOriginalFilename(),imgpath:s).save(flush:true)
			formDetailInstance.setUploade3(image)
		}

		//
		def uploadfile4 = request.getFile('uploade4')

		if(uploadfile4.getOriginalFilename()){
			String s = stPaths+ uploadfile4.getOriginalFilename()
			try{
				uploadfile4.transferTo(new File(s))
			}catch(Exception e){}
			Images image = new Images(name:uploadfile4.getOriginalFilename(),imgpath:s).save(flush:true)
			formDetailInstance.setUploade4(image)
		}





		def uploadfile5 = request.getFile('uploade5')

		if(uploadfile5.getOriginalFilename()){
			String s = stPaths+ uploadfile5.getOriginalFilename()
			try{
				uploadfile5.transferTo(new File(s))
			}catch(Exception e){}
			Images image = new Images(name:uploadfile5.getOriginalFilename(),imgpath:s).save(flush:true)
			formDetailInstance.setUploade5(image)
		}

		def uploadfile6 = request.getFile("uploade6")

		if(uploadfile6.getOriginalFilename()){
			println("stPathstPath"+stPath)
			String s = stPaths+ uploadfile6.getOriginalFilename()
			try{
				uploadfile6.transferTo(new File(s))
			}catch(Exception e){}
			Images image = new Images(name:uploadfile6.getOriginalFilename(),imgpath:s).save(flush:true)
			formDetailInstance.setUploade6(image)
		}

		//two

		def uploadfile7 = request.getFile('uploade7')

		if(uploadfile7.getOriginalFilename()){
			String s = stPaths+ uploadfile7.getOriginalFilename()
			try{
				uploadfile7.transferTo(new File(s))
			}catch(Exception e){}
			Images image = new Images(name:uploadfile7.getOriginalFilename(),imgpath:s).save(flush:true)
			formDetailInstance.setUploade7(image)
		}

		//
		def uploadfile8 = request.getFile('uploade8')

		if(uploadfile8.getOriginalFilename()){
			String s = stPaths+ uploadfile8.getOriginalFilename()
			try{
				uploadfile8.transferTo(new File(s))
			}catch(Exception e){}
			Images image = new Images(name:uploadfile8.getOriginalFilename(),imgpath:s).save(flush:true)
			formDetailInstance.setUploade8(image)
		}

		//
		def uploadfile9 = request.getFile('uploade9')

		if(uploadfile9.getOriginalFilename()){
			String s = stPaths+ uploadfile9.getOriginalFilename()
			try{
				uploadfile9.transferTo(new File(s))
			}catch(Exception e){}
			Images image = new Images(name:uploadfile9.getOriginalFilename(),imgpath:s).save(flush:true)
			formDetailInstance.setUploade9(image)
		}





		def uploadfile10 = request.getFile('uploade10')

		if(uploadfile10.getOriginalFilename()){
			String s = stPaths+ uploadfile10.getOriginalFilename()
			try{
				uploadfile10.transferTo(new File(s))
			}catch(Exception e){}
			Images image = new Images(name:uploadfile10.getOriginalFilename(),imgpath:s).save(flush:true)
			formDetailInstance.setUploade10(image)
		}


		/*	Scientific Publication add more */



		if(params.particulars instanceof String){
			ScientificPublication publications1 = new ScientificPublication(particulars:params.particulars,titlesPapers:params.titlesPapers,publisher:params.publisher,types:params.types)
			formDetailInstance.addToSp(publications1)
		}else {
			def particulars = params.particulars as List
			def titlesPapers = params.titlesPapers as List
			def publisher = params.publisher as List
			def types = params.types as List
			particulars.eachWithIndex{ def entry, int m ->
				ScientificPublication publications1 = new ScientificPublication(particulars:particulars.get(m),titlesPapers:titlesPapers.get(m),publisher:publisher.get(m),types:types.get(m))
				formDetailInstance.addToSp(publications1)
			}
		}

		/*	Langaugea add more */ 



		if(params.language instanceof String){
			Languages publicationss = new Languages(language:params.language,reading:params.reading,writing:params.writing,speaking:params.speaking,examinationpassed:params.examinationpassed,examDetails:params.examDetails)
			formDetailInstance.addToLanguages1(publicationss)
		}else {
			def language = params.language as List
			def reading = params.reading as List
			def writing = params.writing as List
			def speaking = params.speaking as List
			def examinationpassed = params.examinationpassed as List
			def examDetails = params.examDetails as List
			language.eachWithIndex{ def entry, int j ->
				Languages publicationss = new Languages(language:language.get(j),reading:reading.get(j),writing:writing.get(j),speaking:speaking.get(j),examinationpassed:examinationpassed.get(j),examDetails:examDetails.get(j))
				formDetailInstance.addToLanguages1(publicationss)
			}
		}



		/*	Other Degree add more */





		if(params.nameofDegree instanceof String){
			if(params.otherDiplomayear1 != ""){
				OtherDegrees publicationss1 = new OtherDegrees(nameofDegree:params.nameofDegree, additionalType:params.additionalType,otherDiploma:params.otherDiploma,percentageotherDiploma:params.percentageotherDiploma,otherDiplomayear:df.parse(params.otherDiplomayear1),boardUniversityotherDiploma:params.boardUniversityotherDiploma)
				formDetailInstance.addToOtherDegrees1(publicationss1)
			}
		}else {
			def nameofDegree = params.nameofDegree as List
			def additionalType = params.additionalType as List
			def otherDiploma = params.otherDiploma as List
			def percentageotherDiploma = params.percentageotherDiploma as List
			def otherDiplomayear
			if(params.otherDiplomayear1 != ""){
				otherDiplomayear = params.otherDiplomayear1 as List
			}
			def boardUniversityotherDiploma = params.boardUniversityotherDiploma as List
			nameofDegree.eachWithIndex{ def entry, int i ->
				OtherDegrees publicationss1 = new OtherDegrees(nameofDegree:nameofDegree.get(i),additionalType:additionalType.get(i),otherDiploma:otherDiploma.get(i),percentageotherDiploma:percentageotherDiploma.get(i),otherDiplomayear:df.parse(otherDiplomayear.get(i)),boardUniversityotherDiploma:boardUniversityotherDiploma.get(i))
				formDetailInstance.addToOtherDegrees1(publicationss1)
			}
		}



		/*	Special Awards add more */


		if(params.particularsAwards instanceof String){
			if(params.awardsYear1 != ""){
				SpecialAwards publicationff = new SpecialAwards(particularsAwards:params.particularsAwards,noofAwards:params.noofAwards,awardsYear:df.parse(params.awardsYear1),awardedfor:params.awardedfor)
				formDetailInstance.addToSpecialAwards2(publicationff)
			}
		}else {
			def particularsAwards = params.particularsAwards as List
			def noofAwards = params.noofAwards as List
			def awardsYear
			if(params.awardsYear1 != ""){
				awardsYear = params.awardsYear1 as List
			}
			def awardedfor = params.awardedfor as List
			particularsAwards.eachWithIndex{ def entry, int p ->
				SpecialAwards publicationff = new SpecialAwards(particularsAwards:particularsAwards.get(p),noofAwards:noofAwards.get(p),awardsYear:df.parse(awardsYear.get(p)),awardedfor:awardedfor.get(p))
				formDetailInstance.addToSpecialAwards2(publicationff)
			}
		}


		/*	Experience add more */





		if(params.workExperience instanceof String){
			if(params.dateOfJoining1 != "" && params.dateOfLeaving1 != "" ){
				Experiences publicationhh = new Experiences(workExperience:params.workExperience,companyName:params.companyName,postHeld:params.postHeld,nameOfTheEmployeer:params.nameOfTheEmployeer, dateOfJoining:df.parse(params.dateOfJoining1),dateOfLeaving:df.parse(params.dateOfLeaving1),periodOfService:params.periodOfService,reasonOfLeaving:params.reasonOfLeaving,basicPay:params.basicPay)
				formDetailInstance.addToExperiences1(publicationhh)
			}
		}else {
			def workExperience = params.workExperience as List
			def companyName = params.companyName as List
			def postHeld = params.postHeld as List
			def nameOfTheEmployeer = params.nameOfTheEmployeer as List
			def dateOfJoining
			def dateOfLeaving
			if(params.dateOfJoining1 && params.dateOfLeaving1 != ""){
				dateOfJoining = params.dateOfJoining1 as List
				dateOfLeaving = params.dateOfLeaving1 as List
			}
			def periodOfService = params.periodOfService as List
			def reasonOfLeaving = params.reasonOfLeaving as List
			def basicPay = params.basicPay as List
			workExperience.eachWithIndex { def entry, int x ->
				Experiences publicationhh = new Experiences(workExperience:workExperience.get(x),companyName:companyName.get(x),postHeld:postHeld.get(x),nameOfTheEmployeer:nameOfTheEmployeer.get(x), dateOfJoining:df.parse(dateOfJoining.get(x)),dateOfLeaving:df.parse(dateOfLeaving.get(x)),periodOfService:periodOfService.get(x),reasonOfLeaving:reasonOfLeaving.get(x),basicPay:basicPay.get(x))
				formDetailInstance.addToExperiences1(publicationhh)
			}
		}
		// save method for Special attainment in academic field.

		if(params.particular instanceof String){
			SpecialAttainment sa= new SpecialAttainment(particular:params.particular,cadre:params.cadre,year:params.year,details:params.details)
			formDetailInstance.addToSpecialAttainment1(sa)
		}else {
			def particular = params.particular as List
			def cadre = params.cadre as List
			def year = params.year as List
			def details = params.details as List
			particular.eachWithIndex{ def entry, int k ->
				SpecialAttainment sa = new SpecialAttainment(particular:particular.get(k),cadre:cadre.get(k),year:year.get(k),details:details.get(k))
				formDetailInstance.addToSpecialAttainment1(sa)
			}
		}


		// Save method for Patent.


		if(params.details1 instanceof String){
			Patent pt= new Patent(details1:params.details1,year1:params.year1)
			formDetailInstance.addToPatent1(pt)
		}else {
			def details1 = params.details1 as List
			def year1 = params.year1 as List
			details1.eachWithIndex{ def entry, int d ->
				Patent pt = new Patent(details1:details1.get(d),year1:year1.get(d))
				formDetailInstance.addToPatent1(pt)
			}
		}


		// Save method for Funded Projects

		if(params.projectTitle instanceof String){
			FundedProject fp= new FundedProject(projectTitle:params.projectTitle,cadre2:params.cadre2,projectOutlay:params.projectOutlay,details2:params.details2)
			formDetailInstance.addToFproject(fp)
		}else {
			def projectTitle = params.projectTitle as List
			def cadre2 = params.cadre2 as List
			def projectOutlay = params.projectOutlay as List
			def details2 = params.details2 as List
			projectTitle.eachWithIndex{ def entry, int c ->
				FundedProject fp = new FundedProject(projectTitle:projectTitle.get(c),cadre2:cadre2.get(c),projectOutlay:projectOutlay.get(c),details2:details2.get(c))
				formDetailInstance.addToFproject(fp)
			}
		}

		// Save method for workshops


		if(params.particulars3 instanceof String){
			Workshops ws = new Workshops(particulars3:params.particulars3,level3:params.level3,year3:params.year3,details3:params.details3,type10:params.type10)
			formDetailInstance.addToWshop(ws)
		}else {
			def particulars3 = params.particulars3 as List
			def level3 = params.level3 as List
			def year3 = params.year3 as List
			def details3 = params.details3 as List
			def type10 = params.type10 as List
			particulars3.eachWithIndex{ def entry, int b ->
				Workshops ws = new Workshops(particulars3:particulars3.get(b),level3:level3.get(b),year3:year3.get(b),details3:details3.get(b),type10:type10.get(b))
				formDetailInstance.addToWshop(ws)
			}
		}


		// Save method for ACHIEVEMENTS IN SPORTS & CULTURAL / NCC / NSS / SCOUTS & GUIDES ACTIVITIES


		if(params.typeAchievement instanceof String){
			Achievements achi = new Achievements(typeAchievement:params.typeAchievement,particularsEvent:params.particularsEvent,periodDuration:params.periodDuration,level:params.level)
			formDetailInstance.addToAchievements1(achi)
		}else {
			def typeAchievement = params.typeAchievement as List
			def particularsEvent = params.particularsEvent as List
			def periodDuration = params.periodDuration as List
			def level = params.level as List

			typeAchievement.eachWithIndex{ def entry, int kk ->
				Achievements achi = new Achievements(typeAchievement:typeAchievement.get(kk),particularsEvent:particularsEvent.get(kk),periodDuration:periodDuration.get(kk),level:level.get(kk))
				formDetailInstance.addToAchievements1(achi)
			}
		}

		// Save method for Confidential reports


		if(params.year4 instanceof String){
			ConfidentialReports cr = new ConfidentialReports(year4:params.year4,grade:params.grade,cadre6:params.cadre6)
			formDetailInstance.addToCreports(cr)
		}else {
			def year4 = params.year4 as List
			def grade = params.grade as List
			def cadre6 = params.cadre6 as List

			year4.eachWithIndex{ def entry, int a ->
				ConfidentialReports cr = new ConfidentialReports(year4:year4.get(a),grade:grade.get(a),cadre6:cadre6.get(a))
				formDetailInstance.addToCreports(cr)
			}
		}








		formDetailInstance.save flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.created.message', args: [
					message(code: 'formDetail.label', default: 'FormDetail'),
					formDetailInstance.id
				])
				redirect formDetailInstance
			}
			'*' { respond formDetailInstance, [status: CREATED] }
		}
	}
	def viewimg(){

		Images images = Images.get(params.int('id'));


		if ( images == null) {
			flash.message = "image not found."
			redirect (action:'index')
		} else {
			def file = new File(images?.imgpath)
			def fileInputStream = new FileInputStream(file)
			def outputStream = response.getOutputStream()
			byte[] buffer = new byte[4096];
			int len;
			while ((len = fileInputStream.read(buffer)) > 0) {
				outputStream.write(buffer, 0, len);
			}
			outputStream.flush()
			outputStream.close()
			fileInputStream.close()
		}
	}

	@Transactional
	def delete(FormDetail formDetailInstance) {

		if (formDetailInstance == null) {
			notFound()
			return
		}

		formDetailInstance.delete flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.deleted.message', args: [
					message(code: 'FormDetail.label', default: 'FormDetail'),
					formDetailInstance.id
				])
				redirect action:"index", method:"GET"
			}
			'*'{ render status: NO_CONTENT }
		}
	}

	protected void notFound() {
		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.not.found.message', args: [
					message(code: 'formDetail.label', default: 'FormDetail'),
					params.id
				])
				redirect action: "index", method: "GET"
			}
			'*'{ render status: NOT_FOUND }
		}
	}



	@Secured([
		'IS_AUTHENTICATED_ANONYMOUSLY'
	])
	def thankyou1(){


	}

	@Secured(["ROLE_ADMIN"])
	def Manualthankyou(){
		def manuals
		def results
		manuals = params.apllicationNo

		def c = FormDetail.createCriteria()

		results = c.list {  eq("apllicationNo",manuals) }

		def data = results as Object[]

		FormDetail formdt = FormDetail.findById(results[0].id)

		println("formdtformdtformdtformdt"+formdt)
		//formdet=FormDetail.findAllByCommonUserId(userService.getCurrentCommanUsers())
		PaymentInfo payment =  new PaymentInfo()

		payment.userId=formdt.firstName
		payment.terms=true
		payment.paymentId=params.paymentId
		payment.transactionId=params.transactionId
		payment.paymentrequestId=params.paymentrequestId
		payment.status=params.status
		payment.totalamount=params.totalamount



		//payment.save();
		formdt.setPaymentInfoId(payment.save())
		formdt.save();
		redirect action: "adminformDetails"


	}
	def report(){

		def  formdet=FormDetail.findById(params.id)
		model:[formdet:formdet]

	}

	def manualPayment(){
		def  formdetss=FormDetail.findById(params.id)
		model:[manualPaymenformdets:formdetss]

	}
	@Secured(["ROLE_ADMIN"])
	def userlist(){
		def  formdets=CommanUsers?.findAll()
		model:[formdet: formdets]
	}

	def personalDetails(){

		FormDetail formDetailInstance = new FormDetail()


		println("params"+ params)
		formDetailInstance.apllicationNo = params.apllicationNo
		formDetailInstance.appliyingPost = params.appliyingPost
		formDetailInstance.appliyingSub = params.appliyingSub
		formDetailInstance.firstName = params.firstName
		formDetailInstance.lastName = params.lastName
		formDetailInstance.fName = params.fName
		formDetailInstance.mName = params.mName
		formDetailInstance.gender = params.gender
		/*SimpleDateFormat format = new SimpleDateFormat("EEE MMM dd yyyy");*/
		if(params.dob1 != ""){
			formDetailInstance.dob = adf.parse(params.dob1)
		}
		formDetailInstance.email = params.email
		formDetailInstance.phoneNumber = params.phoneNumber
		formDetailInstance.hNo = params.hNo
		formDetailInstance.street = params.street
		formDetailInstance.village = params.village
		formDetailInstance.taluka = params.taluka
		formDetailInstance.district = params.district
		formDetailInstance.state = params.state
		formDetailInstance.pinCode = params.pinCode
		formDetailInstance.country = params.country
		formDetailInstance.socialcategory = params.socialcategory
		formDetailInstance.subcast = params.subcast
		formDetailInstance.rdno = params.rdno
		formDetailInstance.religion = params.religion
		formDetailInstance.kvcNo = params.kvcNo
		if(params.fvcDate1 != ""){

			formDetailInstance.fvcDate= df.parse(params.fvcDate1)


		}

		formDetailInstance.neteducation = params.neteducation
		formDetailInstance.age = params.age
		formDetailInstance.ageRelax = params.ageRelax
		formDetailInstance.ageCat = params.ageCat

		formDetailInstance.woman = params.woman
		formDetailInstance.ruralstdy = params.ruralstdy
		formDetailInstance.exServiceMan = params.exServiceMan
		formDetailInstance.kannadaMedium = params.kannadaMedium
		formDetailInstance.projectDisplacedPerson = params.projectDisplacedPerson
		formDetailInstance.j371 = params.j371
		formDetailInstance.pwd = params.pwd

		formDetailInstance.setCommonUserId(userService.getCurrentCommanUsers())

		def formDet = FormDetail.findByApllicationNo(params.apllicationNo)

		if(params.hkIssueDate1 != null){
			formDetailInstance.hkIssueDate= df.parse(params.hkIssueDate1)
		}


		formDetailInstance.hkRDNO = params.hkRDNO

		if(!formDet){
			formDetailInstance.save flush:true

		}else{
			flash.message= "Please try Again"
		}

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.created.message', args: [
					message(code: 'formDetail.label', default: 'FormDetail'),
					formDetailInstance.id
				])
				//SendSMS.sendSMS(params.phoneNumber,"Thank%20you%20for%20applying%20for%20the%20job%20of%20KVAFSU%20Your%20Application%20number%20is%20"+params.apllicationNo+"%20Regards%2C%20Service%20of%20Hi%20Ideals")

				redirect action: "index"
			}
			'*' { respond formDetailInstance, [status: CREATED] }
		}


	}
	def EducationDetails(){

		println("formDetailInstance Rajppo"+params.formdt)

		def formDetailInstance = FormDetail.findById(params.formdt)
		println("formDetailInstance formDetailInstance" +formDetailInstance)

		formDetailInstance.sslc = params.sslc
		formDetailInstance.obtainedsslc = params.obtainedsslc
		formDetailInstance.maximumsslc = params.maximumsslc

		formDetailInstance.percentagesslc = params.percentagesslc1
		println("params.percentagesslc1"+params.percentagesslc1)
		if(params.sslcyear1 != ""){
			formDetailInstance.sslcyear= df.parse(params.sslcyear1)
		}
		formDetailInstance.boardUniversitysslc = params.boardUniversitysslc
		formDetailInstance.kannadaLanguage = params.kannadaLanguage
		formDetailInstance.kpsckannadaexam = params.kpsckannadaexam

		formDetailInstance.puc = params.puc
		formDetailInstance.obtainedpuc = params.obtainedpuc
		formDetailInstance.maximumpuc = params.maximumpuc
		formDetailInstance.percentagepuc = params.percentagepuc
		if(params.pucyear1 != ""){
			formDetailInstance.pucyear= df.parse(params.pucyear1)
		}
		formDetailInstance.boardUniversitypuc = params.boardUniversitypuc


		formDetailInstance.degreeNameBachelors = params.degreeNameBachelors
		formDetailInstance.bachelorsDegree = params.bachelorsDegree
		formDetailInstance.percentagebachelorsDegree = params.percentagebachelorsDegree
		if(params.bachelorsDegreeyear1 != ""){
			formDetailInstance.bachelorsDegreeyear= df.parse(params.bachelorsDegreeyear1)
		}
		formDetailInstance.boardUniversitybachelorsDegree = params.boardUniversitybachelorsDegree

		formDetailInstance.subjectMaster = params.subjectMaster
		formDetailInstance.mastersDegree = params.mastersDegree
		formDetailInstance.percentagemastersDegree = params.percentagemastersDegree
		if(params.mastersDegreeyear1 != ""){
			formDetailInstance.mastersDegreeyear= df.parse(params.mastersDegreeyear1)
		}
		formDetailInstance.boardUniversitymastersDegree = params.boardUniversitymastersDegree

		formDetailInstance.pHD = params.pHD
		formDetailInstance.pHDSubject = params.pHDSubject
		formDetailInstance.percentagepHD = params.percentagepHD
		if(params.pHDyear1 != ""){
			formDetailInstance.pHDyear= df.parse(params.pHDyear1)
		}
		formDetailInstance.boardUniversitypHD = params.boardUniversitypHD



		if(params.nameofDegree instanceof String){

			OtherDegrees publicationss1 = new OtherDegrees(nameofDegree:params.nameofDegree, additionalType:params.additionalType,otherDiploma:params.otherDiploma,percentageotherDiploma:params.percentageotherDiploma,otherDiplomayear:params.otherDiplomayear,boardUniversityotherDiploma:params.boardUniversityotherDiploma)
			formDetailInstance.addToOtherDegrees1(publicationss1)

		}else {
			def nameofDegree = params.nameofDegree as List
			def additionalType = params.additionalType as List
			def otherDiploma = params.otherDiploma as List
			def percentageotherDiploma = params.percentageotherDiploma as List
			def otherDiplomayear = params.otherDiplomayear as List
			def boardUniversityotherDiploma = params.boardUniversityotherDiploma as List
			nameofDegree.eachWithIndex{ def entry, int i ->
				OtherDegrees publicationss1 = new OtherDegrees(nameofDegree:nameofDegree.get(i),additionalType:additionalType.get(i),otherDiploma:otherDiploma.get(i),percentageotherDiploma:percentageotherDiploma.get(i),otherDiplomayear:otherDiplomayear.get(i),boardUniversityotherDiploma:boardUniversityotherDiploma.get(i))
				formDetailInstance.addToOtherDegrees1(publicationss1)
			}
		}
		def formDet = FormDetail.findByApllicationNo(params.apllicationNo)


		formDetailInstance.save flush:true



		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.created.message', args: [
					message(code: 'formDetail.label', default: 'FormDetail'),
					formDetailInstance.id
				])
				//SendSMS.sendSMS(params.phoneNumber,"Thank%20you%20for%20applying%20for%20the%20job%20of%20KVAFSU%20Your%20Application%20number%20is%20"+params.apllicationNo+"%20Regards%2C%20Service%20of%20Hi%20Ideals")

				redirect action: "index"
			}
			'*' { respond formDetailInstance, [status: CREATED] }
		}

	}
	def addMoreField(){

		println("edIds edIds" +edIds)
		def formDetailInstance = FormDetail.findById(params.formId)
		println("formDetailInstance formDetailInstance" +formDetailInstance)

		if(params.typeAchievement instanceof String){
			Achievements achi = new Achievements(typeAchievement:params.typeAchievement,particularsEvent:params.particularsEvent,periodDuration:params.periodDuration,level:params.level)
			formDetailInstance.addToAchievements1(achi)
		}else {
			def typeAchievement = params.typeAchievement as List
			def particularsEvent = params.particularsEvent as List
			def periodDuration = params.periodDuration as List
			def level = params.level as List
			typeAchievement.eachWithIndex{ def entry, int kk ->
				Achievements achi = new Achievements(typeAchievement:typeAchievement.get(kk),particularsEvent:particularsEvent.get(kk),periodDuration:periodDuration.get(kk),level:level.get(kk))
				formDetailInstance.addToAchievements1(achi)
			}
		}



		if(params.particular instanceof String){
			SpecialAttainment sa= new SpecialAttainment(particular:params.particular,cadre:params.cadre,year:params.year,details:params.details)
			formDetailInstance.addToSpecialAttainment1(sa)
		}else {
			def particular = params.particular as List
			def cadre = params.cadre as List
			def year = params.year as List
			def details = params.details as List
			particular.eachWithIndex{ def entry, int k ->
				SpecialAttainment sa = new SpecialAttainment(particular:particular.get(k),cadre:cadre.get(k),year:year.get(k),details:details.get(k))
				formDetailInstance.addToSpecialAttainment1(sa)
			}
		}



		if(params.details1 instanceof String){
			Patent pt= new Patent(details1:params.details1,year1:params.year1)
			formDetailInstance.addToPatent1(pt)
		}else {
			def details1 = params.details1 as List
			def year1 = params.year1 as List
			details1.eachWithIndex{ def entry, int d ->
				Patent pt = new Patent(details1:details1.get(d),year1:year1.get(d))
				formDetailInstance.addToPatent1(pt)
			}
		}



		if(params.projectTitle instanceof String){
			FundedProject fp= new FundedProject(projectTitle:params.projectTitle,cadre2:params.cadre2,projectOutlay:params.projectOutlay,details2:params.details2)
			formDetailInstance.addToFproject(fp)
		}else {
			def projectTitle = params.projectTitle as List
			def cadre2 = params.cadre2 as List
			def projectOutlay = params.projectOutlay as List
			def details2 = params.details2 as List
			projectTitle.eachWithIndex{ def entry, int c ->
				FundedProject fp = new FundedProject(projectTitle:projectTitle.get(c),cadre2:cadre2.get(c),projectOutlay:projectOutlay.get(c),details2:details2.get(c))
				formDetailInstance.addToFproject(fp)
			}
		}



		if(params.particulars3 instanceof String){
			Workshops ws = new Workshops(particulars3:params.particulars3,level3:params.level3,year3:params.year3,details3:params.details3,type10:params.type10)
			formDetailInstance.addToWshop(ws)
		}else {
			def particulars3 = params.particulars3 as List
			def level3 = params.level3 as List
			def year3 = params.year3 as List
			def details3 = params.details3 as List
			def type10 = params.type10 as List
			particulars3.eachWithIndex{ def entry, int b ->
				Workshops ws = new Workshops(particulars3:particulars3.get(b),level3:level3.get(b),year3:year3.get(b),details3:details3.get(b),type10:type10.get(b))
				formDetailInstance.addToWshop(ws)
			}
		}

		if(params.workExperience instanceof String){

			Experiences publicationhh = new Experiences(workExperience:params.workExperience,companyName:params.companyName,postHeld:params.postHeld,nameOfTheEmployeer:params.nameOfTheEmployeer, dateOfJoining:params.dateOfJoining,dateOfLeaving:params.dateOfLeaving,periodOfService:params.periodOfService,reasonOfLeaving:params.reasonOfLeaving,basicPay:params.basicPay)
			formDetailInstance.addToExperiences1(publicationhh)

		}else {
			def workExperience = params.workExperience as List
			def companyName = params.companyName as List
			def postHeld = params.postHeld as List
			def nameOfTheEmployeer = params.nameOfTheEmployeer as List
			def dateOfJoining = params.dateOfJoining as List
			def dateOfLeaving = params.dateOfLeaving as List
			def periodOfService = params.periodOfService as List
			def reasonOfLeaving = params.reasonOfLeaving as List
			def basicPay = params.basicPay as List
			workExperience.eachWithIndex { def entry, int x ->
				Experiences publicationhh = new Experiences(workExperience:workExperience.get(x),companyName:companyName.get(x),postHeld:postHeld.get(x),nameOfTheEmployeer:nameOfTheEmployeer.get(x), dateOfJoining:dateOfJoining.get(x),dateOfLeaving:dateOfLeaving.get(x),periodOfService:periodOfService.get(x),reasonOfLeaving:reasonOfLeaving.get(x),basicPay:basicPay.get(x))
				formDetailInstance.addToExperiences1(publicationhh)

			}
		}



		if(params.particulars instanceof String){
			ScientificPublication publications1 = new ScientificPublication(particulars:params.particulars,titlesPapers:params.titlesPapers,publisher:params.publisher,types:params.types,detailsss:params.detailsss)
			formDetailInstance.addToSp(publications1)
		}else {
			def particulars = params.particulars as List
			def titlesPapers = params.titlesPapers as List
			def publisher = params.publisher as List
			def types = params.types as List
			def detailsss = params.detailsss as List

			particulars.eachWithIndex{ def entry, int m ->
				ScientificPublication publications1 = new ScientificPublication(particulars:particulars.get(m),titlesPapers:titlesPapers.get(m),publisher:publisher.get(m),types:types.get(m),detailsss:detailsss.get(m))
				formDetailInstance.addToSp(publications1)
			}
		}


		if(params.particularsAwards instanceof String){

			SpecialAwards publicationff = new SpecialAwards(particularsAwards:params.particularsAwards,noofAwards:params.noofAwards,awardsYear:params.awardsYear,awardedfor:params.awardedfor)
			formDetailInstance.addToSpecialAwards2(publicationff)

		}else {
			def particularsAwards = params.particularsAwards as List
			def noofAwards = params.noofAwards as List
			def awardsYear = params.awardsYear as List
			def awardedfor = params.awardedfor as List
			particularsAwards.eachWithIndex{ def entry, int p ->
				SpecialAwards publicationff = new SpecialAwards(particularsAwards:particularsAwards.get(p),noofAwards:noofAwards.get(p),awardsYear:awardsYear.get(p),awardedfor:awardedfor.get(p))
				formDetailInstance.addToSpecialAwards2(publicationff)
			}
		}

		def formDet = FormDetail.findByApllicationNo(params.apllicationNo)


		formDetailInstance.save flush:true



		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.created.message', args: [
					message(code: 'formDetail.label', default: 'FormDetail'),
					formDetailInstance.id
				])
				//SendSMS.sendSMS(params.phoneNumber,"Thank%20you%20for%20applying%20for%20the%20job%20of%20KVAFSU%20Your%20Application%20number%20is%20"+params.apllicationNo+"%20Regards%2C%20Service%20of%20Hi%20Ideals")

				redirect action: "index"
			}
			'*' { respond formDetailInstance, [status: CREATED] }
		}


	}

	def unusedOPT(){
		def formDetailInstance = FormDetail.findAll()
		println("formDetailInstance"+formDetailInstance.apllicationNo)
		def payment
		def c = FormDetail.createCriteria()
		def results = c.list { isNull("paystatus") }
		model:[formdet: results]

	}

	def deleteOPT(){

		def formDetailInstance = FormDetail.findAll()
		println("formDetailInstance"+formDetailInstance.apllicationNo)
		def payment
		def c = FormDetail.createCriteria()
		def results = c.list { isNull("paystatus") }

		for(def docs in results.apllicationNo){

			def stPaths = grailsApplication.config.jimagesFolder  + docs
			boolean storagePathDirectory = new File(stPaths).deleteDir()//(gpath)
			println("deleting storagePathDirectory"+storagePathDirectory)
			println("stPathsstPathsstPaths"+stPaths)
		}
		redirect action: "unusedOPT"
	}

	def documrnts(){


		def formDetailInstance = FormDetail.findById(params.formId)


		println("formDetailInstance hellooloo formDetailInstance" +formDetailInstance)
		def stPaths = grailsApplication.config.jimagesFolder  + formDetailInstance.apllicationNo + "/"
		userService.createImagePath(stPaths)
		println("params.apllicationNo"+formDetailInstance.apllicationNo)
		// new single image
		def picture1 = request.getFile("picture")

		if(picture1.getOriginalFilename()){

			String s = stPaths +"(Picture)_" + picture1.getOriginalFilename()
			try{
				picture1.transferTo(new File(s))
			}catch(Exception e){}
			Images image = new Images(name:picture1.getOriginalFilename(),imgpath:s).save(flush:true)
			formDetailInstance.setPicture(image)
		}

		def signature1 = request.getFile("signature")

		if(signature1.getOriginalFilename()){

			String s = stPaths +"(Signature)_" + signature1.getOriginalFilename()
			try{
				signature1.transferTo(new File(s))
			}catch(Exception e){}
			Images image = new Images(name:signature1.getOriginalFilename(),imgpath:s).save(flush:true)
			formDetailInstance.setSignature(image)
		}

		//two

		def sslcMarksSheet1 = request.getFile('sslcMarksSheet')

		if(sslcMarksSheet1.getOriginalFilename()){
			String s = stPaths +"(SSLC MarksSheet)_" + sslcMarksSheet1.getOriginalFilename()
			try{
				sslcMarksSheet1.transferTo(new File(s))
			}catch(Exception e){}
			Images image = new Images(name:sslcMarksSheet1.getOriginalFilename(),imgpath:s).save(flush:true)
			formDetailInstance.setSslcMarksSheet(image)
		}

		//
		def pucMarksSheet1 = request.getFile('pucMarksSheet')

		if(pucMarksSheet1.getOriginalFilename()){
			String s = stPaths +"(PUC MarksSheet)_" + pucMarksSheet1.getOriginalFilename()
			try{
				pucMarksSheet1.transferTo(new File(s))
			}catch(Exception e){}
			Images image = new Images(name:pucMarksSheet1.getOriginalFilename(),imgpath:s).save(flush:true)
			formDetailInstance.setPucMarksSheet(image)
		}

		//
		def bachelorsMarksSheet1 = request.getFile('bachelorsMarksSheet')

		if(bachelorsMarksSheet1.getOriginalFilename()){
			String s = stPaths +"(Bachelors MarksSheet)_" + bachelorsMarksSheet1.getOriginalFilename()
			try{
				bachelorsMarksSheet1.transferTo(new File(s))
			}catch(Exception e){}
			Images image = new Images(name:bachelorsMarksSheet1.getOriginalFilename(),imgpath:s).save(flush:true)
			formDetailInstance.setBachelorsMarksSheet(image)
		}


		def ugPDC1 = request.getFile('ugPDC')

		if(ugPDC1.getOriginalFilename()){
			String s = stPaths +"(Bachelors MarksSheet PDC)_" + ugPDC1.getOriginalFilename()
			try{
				ugPDC1.transferTo(new File(s))
			}catch(Exception e){}
			Images image = new Images(name:ugPDC1.getOriginalFilename(),imgpath:s).save(flush:true)
			formDetailInstance.setUgPDC(image)
		}





		def masterMarksSheet1 = request.getFile('masterMarksSheet')

		if(masterMarksSheet1.getOriginalFilename()){
			String s = stPaths +"(Master MarksSheet)_" + masterMarksSheet1.getOriginalFilename()
			try{
				masterMarksSheet1.transferTo(new File(s))
			}catch(Exception e){}
			Images image = new Images(name:masterMarksSheet1.getOriginalFilename(),imgpath:s).save(flush:true)
			formDetailInstance.setMasterMarksSheet(image)
		}

		def pgPDC1 = request.getFile('pgPDC')

		if(pgPDC1.getOriginalFilename()){
			String s = stPaths +"(Master MarksSheet PDC)_" + pgPDC1.getOriginalFilename()
			try{
				pgPDC1.transferTo(new File(s))
			}catch(Exception e){}
			Images image = new Images(name:pgPDC1.getOriginalFilename(),imgpath:s).save(flush:true)
			formDetailInstance.setPgPDC(image)
		}



		def phDCertificate1 = request.getFile("phDCertificate")

		if(phDCertificate1.getOriginalFilename()){

			String s = stPaths +"(PhD Certificate)_" + phDCertificate1.getOriginalFilename()
			try{
				phDCertificate1.transferTo(new File(s))
			}catch(Exception e){}
			Images image = new Images(name:phDCertificate1.getOriginalFilename(),imgpath:s).save(flush:true)
			formDetailInstance.setPhDCertificate(image)
		}


		def phdPDc1 = request.getFile("phdPDc")

		if(phdPDc1.getOriginalFilename()){

			String s = stPaths +"(PhD Certificate PDC)_" + phdPDc1.getOriginalFilename()
			try{
				phdPDc1.transferTo(new File(s))
			}catch(Exception e){}
			Images image = new Images(name:phdPDc1.getOriginalFilename(),imgpath:s).save(flush:true)
			formDetailInstance.setPhdPDc(image)
		}


		//two

		def nETCertificate1 = request.getFile('nETCertificate')
		if(nETCertificate1 != null){
			if(nETCertificate1.getOriginalFilename()){
				String s = stPaths + "(NET Certificate)_" + nETCertificate1.getOriginalFilename()
				try{
					nETCertificate1.transferTo(new File(s))
				}catch(Exception e){}
				Images image = new Images(name:nETCertificate1.getOriginalFilename(),imgpath:s).save(flush:true)
				formDetailInstance.setNETCertificate(image)
			}
		}

		//
		def casteIncomeCertificate1 = request.getFile('casteIncomeCertificate')
		if(casteIncomeCertificate1 != null){
			if(casteIncomeCertificate1.getOriginalFilename()){
				String s = stPaths +"(Caste Income Certificate)_" + casteIncomeCertificate1.getOriginalFilename()
				try{
					casteIncomeCertificate1.transferTo(new File(s))
				}catch(Exception e){}
				Images image = new Images(name:casteIncomeCertificate1.getOriginalFilename(),imgpath:s).save(flush:true)
				formDetailInstance.setCasteIncomeCertificate(image)
			}
		}

		//
		def ruralCertificate1 = request.getFile('ruralCertificate')
		if(ruralCertificate1 != null){
			if(ruralCertificate1.getOriginalFilename()){
				String s = stPaths +"(Rural Certificate)_" + ruralCertificate1.getOriginalFilename()
				try{
					ruralCertificate1.transferTo(new File(s))
				}catch(Exception e){}
				Images image = new Images(name:ruralCertificate1.getOriginalFilename(),imgpath:s).save(flush:true)
				formDetailInstance.setRuralCertificate(image)
			}
		}




		def exServicemenCertificate1 = request.getFile('exServicemenCertificate')
		if(exServicemenCertificate1 != null){
			if(exServicemenCertificate1.getOriginalFilename()){
				String s = stPaths +"(Ex Servicemen Certificate)_" + exServicemenCertificate1.getOriginalFilename()
				try{
					exServicemenCertificate1.transferTo(new File(s))
				}catch(Exception e){}
				Images image = new Images(name:exServicemenCertificate1.getOriginalFilename(),imgpath:s).save(flush:true)
				formDetailInstance.setExServicemenCertificate(image)
			}
		}
		
		def ageRelax11 = request.getFile("ageRelax1")
		if(ageRelax11 != null){
			if(ageRelax11.getOriginalFilename()){

				String s = stPaths +"(Age Relaxation Certificate)_" + ageRelax11.getOriginalFilename()
				try{
					ageRelax11.transferTo(new File(s))
				}catch(Exception e){}
				Images image = new Images(name:ageRelax11.getOriginalFilename(),imgpath:s).save(flush:true)
				formDetailInstance.setAgeRelax1(image)
			}
		}


		def kannadaMediumCertificate1 = request.getFile("kannadaMediumCertificate")
		if(kannadaMediumCertificate1 != null){
			if(kannadaMediumCertificate1.getOriginalFilename()){

				String s = stPaths +"(kannada Medium Certificate)_" + kannadaMediumCertificate1.getOriginalFilename()
				try{
					kannadaMediumCertificate1.transferTo(new File(s))
				}catch(Exception e){}
				Images image = new Images(name:kannadaMediumCertificate1.getOriginalFilename(),imgpath:s).save(flush:true)
				formDetailInstance.setKannadaMediumCertificate(image)
			}
		}

		def kpsckannadaCertificate1 = request.getFile("kpsckannadaCertificate")
		if(kpsckannadaCertificate1 != null){
			if(kpsckannadaCertificate1.getOriginalFilename()){

				String s = stPaths +"(kannada Language Certificate)"+ kpsckannadaCertificate1.getOriginalFilename()
				try{
					kpsckannadaCertificate1.transferTo(new File(s))
				}catch(Exception e){}
				Images image = new Images(name:kpsckannadaCertificate1.getOriginalFilename(),imgpath:s).save(flush:true)
				formDetailInstance.setKpsckannadaCertificate(image)
			}
		}

		def kalyanaKarnatakaCertificate1 = request.getFile("kalyanaKarnatakaCertificate")
		if(kalyanaKarnatakaCertificate1 != null){
			if(kalyanaKarnatakaCertificate1.getOriginalFilename()){

				String s = stPaths +"(kalyana Karnataka Certificate)_" + kalyanaKarnatakaCertificate1.getOriginalFilename()
				try{
					kalyanaKarnatakaCertificate1.transferTo(new File(s))
				}catch(Exception e){}
				Images image = new Images(name:kalyanaKarnatakaCertificate1.getOriginalFilename(),imgpath:s).save(flush:true)
				formDetailInstance.setKalyanaKarnatakaCertificate(image)
			}
		}

		//two

		def personwithDisabilityCertificate1 = request.getFile('personwithDisabilityCertificate')
		if(personwithDisabilityCertificate1 != null){
			if(personwithDisabilityCertificate1.getOriginalFilename()){
				String s = stPaths +"(person with Disability Certificate)"+ personwithDisabilityCertificate1.getOriginalFilename()
				try{
					personwithDisabilityCertificate1.transferTo(new File(s))
				}catch(Exception e){}
				Images image = new Images(name:personwithDisabilityCertificate1.getOriginalFilename(),imgpath:s).save(flush:true)
				formDetailInstance.setPersonwithDisabilityCertificate(image)
			}
		}

		def experienceCertificate1 = request.getFile('experienceCertificate')
		if(experienceCertificate1 != null){
			if(experienceCertificate1.getOriginalFilename()){
				String s = stPaths + "(Experience Certificate)_" + experienceCertificate1.getOriginalFilename()
				try{
					experienceCertificate1.transferTo(new File(s))
				}catch(Exception e){}
				Images image = new Images(name:experienceCertificate1.getOriginalFilename(),imgpath:s).save(flush:true)
				formDetailInstance.setExperienceCertificate(image)
			}
		}

		//
		def kVCCertificate1 = request.getFile('kVCCertificate')
		if(kVCCertificate1 != null){
			if(kVCCertificate1.getOriginalFilename()){
				String s = stPaths + "(KVC Certificate front)_" + kVCCertificate1.getOriginalFilename()
				try{
					kVCCertificate1.transferTo(new File(s))
				}catch(Exception e){}
				Images image = new Images(name:kVCCertificate1.getOriginalFilename(),imgpath:s).save(flush:true)
				formDetailInstance.setKVCCertificate(image)
			}
		}

		def kvc21 = request.getFile('kvc2')
		if(kvc21 != null){
			if(kvc21.getOriginalFilename()){
				String s = stPaths +"(KVC Certificate back)_" +  kvc21.getOriginalFilename()
				try{
					kvc21.transferTo(new File(s))
				}catch(Exception e){}
				Images image = new Images(name:kvc21.getOriginalFilename(),imgpath:s).save(flush:true)
				formDetailInstance.setKvc2(image)
			}
		}




		def uploadfile10 = request.getFile('uploade10')

		if(uploadfile10.getOriginalFilename()){
			String s = stPaths +"(Zip file)_" + uploadfile10.getOriginalFilename()
			try{
				uploadfile10.transferTo(new File(s))
			}catch(Exception e){}
			Images image = new Images(name:uploadfile10.getOriginalFilename(),imgpath:s).save(flush:true)
			formDetailInstance.setUploade10(image)
		}





		def formDet = FormDetail.findByApllicationNo(params.apllicationNo)


		formDetailInstance.save flush:true



		request.withFormat {
			form multipartForm {

				println("formDetailInstance.apllicationNo"+formDetailInstance.apllicationNo)
				flash.message = message(code: 'default.created.message', args: [
					message(code: 'formDetail.label', default: 'FormDetail'),
					formDetailInstance.id
				])

				redirect formDetailInstance
			}
			'*' { respond formDetailInstance, [status: CREATED] }
		}


	}


}

