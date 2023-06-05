/**
 * 
 */

 function checkMember() {
	const regExpId = /^[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/
	const regExpName = /^[가-힣]*$/
	const regExpPasswd = /^[0-9|a-z|A-Z]*$/
	const regExpPhone = /^\d{3}-\d{3,4}-\d{4}$/
	const regExpAddress = /^[가-힣\s]*$/
	const regExpEmail = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i
//	const regExpAdmin = /^[admin|root|insert|update|revoke|submit|select|delete|create|drop]+*$/
	
	const form = document.member
	const id = form.uid.value
	const name = form.uname.value
	const passwd1 = form.upassword1.value
	const passwd2 = form.upassword2.value
	const phone = form.fphone.value + "-" + form.mphone.value + "-" + form.lphone.value
	const address = form.uaddress.value
	const email = form.uemail.value
	
	if(!regExpId.test(id)){
		alert("아이디는 문자로 시작해 주세요.")
		form.uid.select()
		return
	}
	
//	if(!regExpAdmin.test(id)){
//		alert("사용이 불가능한 아이디 입니다. 다시 작성해주세요.")
//		form.uid.select()
//		return
//	}
	
//	if(form.idDuplication.value != "idCheck"){
//		alert("아이디 중복체크를 해주세요.")
//		return	
//	}
	
	if(!regExpName.test(name)){
		alert("이름은 한글로만 입력해 주세요.")
		form.uname.select()
		return
	}
	
	if(!regExpPasswd.test(passwd1)){
		alert("비밀번호는 영문 또는 숫자로만 입력해 주세요.")
		form.upasswd1.select()
		return
	}
	
	if(!regExpPasswd.test(passwd2)){
		alert("비밀번호는 영문 또는 숫자로만 입력해 주세요.")
		form.upasswd2.select()
		return
	}
	
	if(passwd1 !== passwd2){
		alert("비밀번호가 일치 하지 않습니다.")
		form.upasswd2.select()
		return
	}
	
	if(!regExpAddress.test(address)){
		alert("주소는 한글로만 입력해 주세요.")
		form.uaddress.select()
		return	
	}
		
	if(!regExpPhone.test(phone)){
		alert("연락처 입력을 확인해주세요.")
		return
	}
	
	if(!regExpEmail.test(email)){
		alert("이메일 입력을 확인해주세요.")
		return
	}
	
	alert("환영합니다.")
	
	form.submit()
}
	
function checkPassword(){
	var password1 = document.member.upassword1.value
	var password2 = document.member.upassword2.value
	
	if(password1 === password2){
		document.member.passwordStatus.value = "비밀번호 일치"
	} else{
		document.member.passwordStatus.value = "비밀번호 불일치"
	}
}

function checkWho(){
	var result = document.loginfn.result.value
	
	if(result === ""){
		alert("아이디 혹은 비밀번호가 틀렸습니다.")
		return
	}else if(result === "admin"){
		alert("안녕하세요, 관리자님")
		return
	}else if(result === "user"){
		alert("환영합니다." + document.loginfn.loginuid.value + "님")
		return
	}
}

function doKakaoLogin() {
	const url = 'https://kauth.kakao.com/oauth/authorize?client_id=' +
		process.env.VUE_APP_KAKAO_JS_KEY +
		'&redirect_uri=' +
		process.env.VUE_APP_KAKAO_REDIRECT_URL +
		'&response_type=code&' +
		'scope=account_email birthday gender profile_nickname profile_image'
}

function doLoginController(){
	var getResult = sessionStorage.getItem("login");
	var getId = sessionStorage.getItem("ID");
	
	const user = 'user'
	const admin = 'admin'
	
	if(getResult === user){
		alert('환영합니다. ${getId}')
		window.location.href = "main.do"
	} else if(getResult === admin){
		alert('안녕하세요, 관리자님')
		window.location.href = "admin_main.do"
	} else{
		alert('아이디 혹은 비밀번호가 틀렸습니다. 다시 시도해 주세요.')
		window.location.href = "login.do"
	}
	
}