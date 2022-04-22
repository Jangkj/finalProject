function check() {

	var count; // 체크박스 카운트 변수
	var form = document.form;
	count = 0;
	var agreone = form.agrone.length;
	var agrtwo = form.agrtwo.length;

	if (form.agrone.checked != true || form.agrtwo.checked != true) {
		alert("이용 약관에 동의 하셔야 회원 가입이 가능 합니다.");
		return;
	}
	if (form.agrone.checked == true && form.agrtwo.checked == true) {
		location.href = "/user/loginpage"

	}

}

function back(){
	
	location.href="/";
	
}
