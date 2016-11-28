require_relative 'MPA_methods'

database = SQLite3::Database.new("MUsic_playlist.db")

# I had show_playlist try to execute .tables... it didn't work. so I did this non-sense
create_playlist_nexus_cmd = <<-SQL
	  CREATE TABLE IF NOT EXISTS playlist_list(
	    playlist_name VARCHAR(255)
	  )
	SQL

database.execute(create_playlist_nexus_cmd)

loop do 
	puts "Do you want to creating, deleting, updating a playlist? (Type 'new', 'delete', 'update', or 'exit' to exit the program)"
	user_action = gets.chomp
		case user_action
		when "exit" then break
		when "new"
			puts 'Okay! What do you want to name it?'
				playlist_name = gets.chomp
				create_playlist(database, playlist_name)
			puts 'Would you like to add some tracks right now? [Y/N]'
				update_playlist = gets.chomp
				if update_playlist == "Y" || update_playlist == "y"
					user_action == "update"
				elsif update_playlist == "N" || update_playlist == "n"
					puts "Okay! Don't forget to come back and fill it in later!"
				end
		# when "delete"
		when "update"
			puts "Okay!"	
		end
end
