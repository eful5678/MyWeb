/**
 * 
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

function join(){
	alert("join?");
	fjoin.submit();
}

function login(){
	alert("login?");
	var login_id = document.getElementById("id");
	var login_pwd = document.getElementById("password");
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
	flogin.submit();
}

function fedit(){
	fedit.submit();
}

function moveWrite(){
	location.href="/board/boardForm";
}

function write(){
	freeboard1.submit();
}

function editBoard(){
	editBoard.submit();
}