function whosBigger(arr) {
	console.log(arr);
	var lgth = 0;
	var longest;
	for(var i=0; i < arr.length; i++){
	    if(arr[i].length > lgth){
	        lgth = arr[i].length;
	        longest = arr[i];
	    }      
	} 
	return console.log(longest);
}

// I didn't know how to do it in one function so I seperated the word generating part
// into a seperate function and called it in the string generator
function wordgen() {
	var text = "";
    var charset = "abcdefghijklmnopqrstuvwxyz0123456789";
	var lngth = (Math.random() * 10) + 1;
    for(var i=0; i < lngth; i++){
    	text += charset.charAt(Math.floor(Math.random() * charset.length));
	}
	return text;
}

function stringGen(words){
	var array = [];
	for(var i=0; i < words; i++){
	    array.push(wordgen());
	}
    return array;
}

var testing = ["long phrase","longest phrase","longer phrase"];
var testing2 = stringGen(10);

whosBigger(testing2);
whosBigger(testing);

function kvMatch(obj1,obj2){
	var obj1_values = Object.values(obj1);
	var obj2_values = Object.values(obj2);
	for(var i=0; i < Object.values(obj1).length; i++){
		if (obj1_values[i] == obj2_values[i]){
			console.log(obj1_values[i]);
			console.log(obj2_values[i]);
			return true;
		} else if (obj1_values[i] != obj2_values[i]){
			return false;}
	}
}
a = {name: "Steven", age: 54};
b = {name: "Tamir", age: 54};
kvMatch(a,b);