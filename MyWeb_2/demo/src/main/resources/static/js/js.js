/**
 * 전체 페이지의 HTML을 불러오기 위한 함수
 */

function includeHTML(){
	var z, i, elem, file, xhttp;
	
	z = document.getElementsByTagName("*");
	console.log(z);
	
	for(i = 0; i < z.length; i++){
		elem = z[i];
		file = elem.getAttribute("include-html");
		if(file){
			xhttp = new XMLHttpRequest();
			xhttp.onreadystatechange = function(){
				if(this.readyState == 4){
					if(this.status == 200){
						elem.innerHTML = this.responseText;
					}
					if(this.status == 404){
						elem.innerHTML = "page not found.";
					}
					elem.removeAttribute("include-html");
					includeHTML();
				}
			}
			xhttp.open("GET", file, true);
			xhttp.send();
			return;
		}
	}
};

/**
* 회원가입 기능
*/

function join(){
	alert("join?");
	var i;
	var join_id = document.getElementById("id");
	var join_password = document.getElementById("password");
	var join_email = document.getElementById("email");
	var join_name = document.getElementById("name");
	console.log("id : " + join_id.value);
	var memberInfo = new Array(join_id, join_password, join_email, join_name);
	
	console.log(memberInfo);
	for(i = 0; i < memberInfo.length; i++){
		if(memberInfo[i].value == ""){
			alert("빈칸을 채워주세요");
			return;
		}
	}
	fjoin.submit();
	
}

function join_emptyCheck(){
	var join_id = document.getElementById("id");
	
	if(join_id.value.length < 5 || join_id.value.length > 16){
		document.getElementById("join_id").innerHTML = "id는 4자 이상 16자 이하로 입력해주세요";
	}else{
		document.getElementById("join_id").innerHTML = "";
	}
	return;
}

function join_idCheck(){
	var id = document.getElementById("id");
	console.log("입력된 id = " + id.value);
	var xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function(){
		if(xhttp.readyState == 4 && xhttp.status === 200){
			console.log(xhttp.responseText);
			if(xhttp.responseText == "가능"){
				document.getElementById("join_check").innerHTML = "사용가능한 id";
			}else{
				document.getElementById("join_check").innerHTML = "사용불가한 id";
			}
		}
	
	}
	
	xhttp.open("GET", "/member/idCheck?id=" + id.value, true);
	xhttp.send();
}

function pwdCheck(){
	var password = document.getElementById("password");
	var passwordCheck = document.getElementById("passwordCheck");
	console.log("password : " + password.value);
	console.log("passwordCheck : " + passwordCheck.value);
	
	if(password.value != passwordCheck.value){
		document.getElementById("pwd_check").innerHTML = "비밀번호가 일치하지 않습니다";
	}else{
		document.getElementById("pwd_check").innerHTML = "비밀번호가 일치합니다";
	}
}

function login(){
	alert("login?");
	var login_id = document.getElementById("id");
	var login_pwd = document.getElementById("password");
	var session_id = document.getElementById("sessionId");
	console.log("id : " + login_id.value);
	console.log("pwd : " + login_pwd.value);
	if(login_id.value == ""){
		alert("아이디를 입력해주세요");
		return;
	}
	if(login_pwd.value == ""){
		alert("비밀번호를 입력해주세요");
		return;
	}
	//flogin.submit();
	
	if(sessionId.value != ""){
		alert(sessionId.value + "님 이미 로그인 하셨습니다");
		return;
	}
	
	var xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function(){
		if(xhttp.readyState == 4 && xhttp.status === 200){
			console.log(xhttp.responseText);
			
			if(xhttp.responseText == "로그인 성공"){
				alert("로그인 성공");
				location.href="/";
		
			}else{
				alert("ID 또는 비밀번호가 틀렸습니다");
				location.href="/member/loginForm";
			}
		}
	}
	xhttp.open("POST","/member/login?id=" + login_id.value + "&password=" + login_pwd.value, true);
	xhttp.send();
	
	
}



function fedit(){
	fedit.submit();
}

function del(){
	var id = document.getElementById("sessionId");
	location.href = "/member/del";
}

function moveWrite(){
	alert("글쓰기?");
	var id = document.getElementById("sessionId");
	console.log("로그인된 id = " + id.value);
	console.log(typeof(id.value));
	if(id.value === ""){
		alert("로그인 해주세요!");
		return;
	}else{
		alert(id.value + "님");
		location.href="/board/boardForm";
	}
	
}

function write(){
	freeboard1.submit();
}

function boardIdCheck(num){
	var session_id = document.getElementById("sessionId");
	var writer = document.getElementById("writer");
	console.log("접속중인 id = " + session_id.value);
	console.log("글쓴이 = " + writer.value);
	if(session_id.value == ""){
		alert("로그인을 해주세요");
	}else if(session_id.value == writer.value){
		location.href="/board/boardUpdate?b_num=" + num;
	}else{
		alert("글쓴이가 아닙니다");
	}
	
}

function editBoard(){
	editBoard.submit();
}


var clockContainer = document.querySelector(".js-clock");
var clockTitle = clockContainer.querySelector("h1");
console.log(clockContainer);
function getTime(){
    const date = new Date();
    const minutes = date.getMinutes();
    const hours = date.getHours();
    const seconds = date.getSeconds();
    clockTitle.innerText = `${hours < 10 ? `0${hours}` : hours}:${
        minutes < 10 ? `0${minutes}` : minutes}:${
        seconds < 10 ? `0${seconds}` : seconds
    }`;
    
}

function init(){
    getTime();
    setInterval(getTime, 1000);
}
init();