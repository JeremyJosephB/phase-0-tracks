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
	puts "Do you want to create, delete, update, view a playlist or find a track? (Type 'new', 'delete', 'update', 'view', 'find', '' or 'exit' to exit the program)"
		user_action = gets.chomp
	case user_action
		when "exit" then break
		when "view"
			view_loop = true
			while view_loop == true
				puts "Okay! Which playlist would you like to see?"
					show_playlists(database)
					playlist = gets.chomp
				puts "Alrighty! Here's:#{playlist}"
					display_playlist(database, playlist)
				puts "Would you like to see another? [Y/N]"
					view_choice = gets.chomp
				if view_choice == "Y" || view_choice == "y"
					view_loop
				elsif view_choice == "N" || view_choice == "n"
					view_loop = false
				end
			end
		when "new"
			puts 'Okay! What do you want to name it? (please underscores in place of whitespace)'
				playlist_name = gets.chomp
				create_playlist(database, playlist_name)
			puts 'Would you like to add some tracks right now? [Y/N]'
				update_playlist = gets.chomp
				if update_playlist == "Y" || update_playlist == "y"
					update_loop = true 
					while update_loop == true
						puts "Alright, please enter the following information."
						puts "Track name:"
							track_name = gets.chomp
						puts "Artist:"
							artist = gets.chomp
						puts "Album:"
							album = gets.chomp
						puts "Genre:"
							genre = gets.chomp
						add_track(database, playlist_name, track_name, artist, album, genre)
						display_playlist(database, playlist_name)
							puts "Would you like to add another track? [Y/N]"
								add_track = gets.chomp
								if add_track == "Y" || add_track == "y"
									update_loop
								elsif add_track == "N" || add_track == "n"
									update_loop = false
								end 
					end
				elsif update_playlist == "N" || update_playlist == "n"
					puts "Okay! Don't forget to come back and fill it in later!"
				end
		when "delete"
			update_loop = true 
			while update_loop == true
				puts "Okay! Which playlist do you want to delete?"
					show_playlists(database)
					playlist = gets.chomp
				puts "Are you sure you want to delete #{playlist}? [Y/N or cancel]"
					delete_action = gets.chomp
				if delete_action == "Y" || delete_action == "y"
					delete_playlist(database, playlist)
				puts "you want to delete another? [Y/N]"
					continue_delete = gets.chomp
					if continue_delete == "Y" || continue_delete == "y"
						update_loop
					elsif continue_delete == "N" || continue_delete == "n"
						update_loop = false
					end		
				elsif delete_action == "N" || delete_action == "n"
					update_loop
				elsif delete_action == "cancel"
					update_loop = false
				end
			end		
		when "update"
			puts "Do you want to add or delete a track?"
				update_action = gets.chomp
			puts "Okay! which playlist to you want to update?"
				show_playlists(database)
				playlist = gets.chomp
			if update_action == "add"
				update_loop = true 
				while update_loop == true
					puts "Alright, please enter the following information."
					puts "Track name:"
						track_name = gets.chomp
					puts "Artist:"
						artist = gets.chomp
					puts "Album:"
						album = gets.chomp
					puts "Genre:"
						genre = gets.chomp
					add_track(database, playlist, track_name, artist, album, genre)
					display_playlist(database, playlist)
						puts "Would you like to add another track? [Y/N]"
							add_track = gets.chomp
							if add_track == "Y" || add_track == "y"
								update_loop
							elsif add_track == "N" || add_track == "n"
								update_loop = false
							end
				end
			elsif update_action == "delete"
				update_loop = true 
					while update_loop == true
						puts "Alright, please enter the following information."
						puts "Track name:"
							track_name = gets.chomp
						puts "Artist:"
							artist = gets.chomp
							delete_track(database, playlist, track_name, artist)
							display_playlist(database, playlist)
						puts "Would you like to delete another track? [Y/N]"
							add_track = gets.chomp
							if add_track == "Y" || add_track == "y"
								update_loop
							elsif add_track == "N" || add_track == "n"
								update_loop = false
							end
					end
			end
		when "find"
			view_loop = true 
			while view_loop == true
			puts "Okay! which playlist do you want to search through?"
				show_playlists(database)
			puts "Alright, please enter the following information."
			puts "Track name:"
				track_name = gets.chomp
				find_track(database, playlist, track_name)
			puts "you want to search through another? [Y/N]"
					continue_view = gets.chomp
					if continue_view == "Y" || continue_view == "y"
						update_loop
					elsif continue_view == "N" || continue_view == "n"
						update_loop = false
					end	
			end
	end
end
