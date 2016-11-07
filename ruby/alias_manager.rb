def swap_name(first_name,last_name)
	first_name, last_name = last_name, first_name
end

def next_vowel(name)
	vowels = "aeiou"
	upcase_vowels = "AEIOU"
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
  name_arr.join('')
end

def next_con(name)
	consonants = "bcdfghjklmnpqrstvwxyz"
	upcase_consonants = "BCDFGHJKLMNPQRSTVWXYZ"
	name_arr = name.chars
	name_arr.each do |i|
		if consonants.include?(i) && i == "z"
			i.replace(consonants[0])   
      elsif consonants.include?(i)
	      i.replace(consonants[consonants.index(i).next])
      elsif upcase_consonants.include?(i) && i == "Z"
	      i.replace(upcase_consonants[0])   
      elsif upcase_consonants.include?(i)
	      i.replace(upcase_consonants[upcase_consonants.index(i).next])
      end
  end
  name_arr.join('')
end

def alias_manager
	names = {}
	puts "Welcome to alias_manager"
	puts "When done inputting names simply press enter or type 'done'"
	index = 0
	
	until index == 1
		puts "please input your first name."
			first_name = gets.chomp
			if first_name == 'done' || first_name == ""
				index += 1	
			end
		puts "Now, your last name."
			last_name = gets.chomp
		name = first_name + " " + last_name
			names[name] = ""
		first_name = next_vowel(first_name)
		last_name = next_vowel(last_name)
			first_name = next_con(first_name)
			last_name = next_con(last_name)
		new_name = swap_name(first_name,last_name).join(" ")
		names[name] = new_name
		puts new_name
	end
	names.each {|real_name, fake_name| puts "#{real_name} is really #{fake_name}!"}
end

alias_manager