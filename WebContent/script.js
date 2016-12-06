function FormValidation(){
	var radios = document.getElementsByName("option");
    flag = false; 

    var i = 0;
    while (!flag && i < radios.length) {
        if (radios[i].checked) 
        	flag = true;
        i++;        
    }

    if (!flag) {
    	alert("Please select atleast one radio button");
    }

}

function SearchValidation(){
	var radios = document.getElementsByName("search");
    flag = false; 

    var i = 0;
    while (!flag && i < radios.length) {
        if (radios[i].checked) 
        	flag = true;
        i++;        
    }

    if (!flag) {
    	alert("Please select atleast one radio button");
    }
}

function ModifyValidation(){
	var radios = document.getElementsByName("modify");
    flag = false; 

    var i = 0;
    while (!flag && i < radios.length) {
        if (radios[i].checked) 
        	flag = true;
        i++;        
    }

    if (!flag) {
    	alert("Please select atleast one radio button");
    }
}