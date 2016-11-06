# the method first takes a  first name and last name and swaps them
def swap_name(first_name,last_name)
	first_name, last_name = last_name, first_name
end

def alias_manager
	real_names = []
	alias_names = []
	puts "Welcome to alias_manager"
	puts "please input your first name."
		first_name = gets.chomp
	puts "Now, your last name."
		last_name = gets.chomp
	name = first_name + " " + last_name
	real_names << name
	new_name = swap_name(first_name,last_name).join(" ")
	alias_names << new_name
	puts new_name
end

alias_manager

# alias_manager

# p swap_name("first_name","last_name")
