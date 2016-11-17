function reverse(word) {
	reversed = "";
	for (var index = word.length; index > 0; index --) {
		reversed = reversed + word[index - 1];
	}
	console.log(reversed);
}

reverse("hello");