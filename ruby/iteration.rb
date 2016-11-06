# def TV_shows
# 	tv_shows = ["Luke Cage","Hot Ones","Dare-Devil","Stranger Things"]
# 	yield(tv_shows)
# end

# TV_shows {|current_shows| puts"These are the current shows: #{current_shows}"}

# def TV_shows
# 	tv_shows = {"Luke Cage" => "4 stars",
# 		"Hot Ones" => "4 stars",
# 		"Dare-Devil" => "3.5 star",
# 		"Stranger Things" => "2 stars"
# 	}
# 	yield(tv_shows.keys,tv_shows.values)
# end

# TV_shows {|current_shows,reviews| puts"These are the current shows: #{current_shows}, total ratings: #{reviews}"}

# pizza_toppings = ["pepperoni", "pineapple", "bacon", "chicken"]

# user = {
#  	name: "Bob",
#  	e_mail: "bob1234@gmail.com",
#  	age: 12,
#  	"Do you live in New York?" => false 
# }

# pizza_toppings.each {|topping| puts"Here are your toppings: #{topping}"}

# puts"Before .map!"
# p pizza_toppings

# pizza_toppings.map {pizza_toppings.delete("pineapple")}

# puts"After .map!"
# p pizza_toppings

# user.each {|user_info,user_data| puts"Here is the user information:#{user_data}"}

numbers = [1,2,3,4,5,6,7,8,9,10]
# numbers.delete_if {|numbers| numbers < 5 }
# numbers.keep_if {|numbers| numbers < 5 }
numbers.drop_while {|i| i < 3 }

p numbers