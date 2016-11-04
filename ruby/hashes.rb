# Pseudocode: 
# 1. create the data structure in order to hold any data to begin with.
# 2. In the driver code get user input, it's to be able to take anything 
#    so gets.chomp should should work
# 3. store that data in the data structure, "hash[0] = user_input"
#    would be good
# 4. print back the hash.

client_app = {
	name: "",
	age: 0,
	number_of_kids: 0,
	decor_theme: "",
	using_credit: true
}

puts "What's the client's name?"
	client_app[:name] = gets.chomp
puts "What's the client's age?"
	client_app[:age] = gets.chomp.to_i
puts "How kids does the client have?"
	client_app[:number_of_kids] = gets.chomp.to_i
puts "What decor theme does the client want?"
	client_app[:decor_theme] = gets.chomp
puts "What is the cilent using credit?"
	using_credit = gets.chomp
	case using_credit
		when "true" then client_app[:using_credit] = true
		when "false" then client_app[:using_credit] = false
	end

index = 0
until index == 1
client_app.each {|key,value| puts "#{key}:#{value}"}
puts "Is this all correct?[Y/N]"
app_correct = gets.chomp
	if app_correct == "Y" || app_correct == "y"
		puts "Okay, Thank you for using client application filler 3000 or whatever.
		Have a nice day!"
		index += 1
		elsif app_correct == "N" || app_correct == "n"
			puts "Okay,What is the data you want to edit?"
			puts client_app.keys
				client_app_editkey = gets.chomp.to_sym
			puts "Okay, What is the new information?"
			if client_app_editkey == :age || client_app_editkey == :number_of_kids
				client_app_editvalue = gets.chomp.to_i
			elsif client_app_editkey == :using_credit
				client_app_editvalue = gets.chomp
				case client_app_editvalue
					when "true" then client_app[:using_credit] = true
					when "false" then client_app[:using_credit] = false
				end
			else
				client_app_editvalue = gets.chomp
			end
			client_app[client_app_editkey] = client_app_editvalue
		else
			puts "invalid input, please use Y or N."
	end
end
		
