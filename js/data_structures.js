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

add_stuff(horses,names,colors)