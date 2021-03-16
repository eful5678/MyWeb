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