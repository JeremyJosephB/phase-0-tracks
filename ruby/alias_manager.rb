# the method first takes a  first name and last name and swaps them
def swap_name(first_name,last_name)
	first_name, last_name = last_name, first_name
end

def next_vowel(name)
	vowels = ["a","e","i","o","u"]
	upcase_vowels = ["A","E","I","O","U"]
	name_arr = name.chars
	name_arr.each do |i|
		if vowels.include?(i) && i == "u"
			i.replace(vowels[0])   
      elsif vowels.include?(i)
	      i.replace(vowels[vowels.index(i).next])
      elsif upcase_vowels.include?(i) && i == "U"
	      i.replace(upcase_vowels[0])   
      elsif upcase_vowels.include?(i)
	      i.replace(upcase_vowels[upcase_vowels.index(i).next])
      end
  end
	puts name_arr.join('')
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
