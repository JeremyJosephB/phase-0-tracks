testing = ["long phrase","longest phrase","longer phrase"];
function whosBigger(arr) {
	console.log(arr);
	var lgth = 0;
	var longest;
	for(var i=0; i < arr.length; i++){
	    if(arr[i].length > lgth){
	        var lgth = arr[i].length;
	        longest = arr[i];
	    }      
	} 
	return console.log(longest);
}
whosBigger(testing);