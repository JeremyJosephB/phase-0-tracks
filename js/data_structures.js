colors = ["blue", "red", "rainbow", "orange", "pink"];
names = ["Ed", "Bill", "Bob", "Chuck", 'floyd'];

horses = {}

function add_stuff(object,k,v) {
	for (var i = 0; i < names.length; i++) {
		keys = k[i]
		values = v[i]
		object[keys] = values
	}
	console.log(object);
}

// add_stuff(horses,names,colors)

function Cars(year,model,isNew) {
	console.log("Our new car:", this);
	this.year = year;
	this.model = model;
	this.isNew = isNew;
	this.carHonk = function () {console.log("Beep Beep!"); };
	console.log("CAR INITIALIZATION COMPLETE");
}

var tesla = new Cars(2014,"S",true);
console.log(tesla);

tesla.carHonk();

