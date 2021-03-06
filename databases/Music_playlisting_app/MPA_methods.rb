require 'sqlite3'

# database = SQLite3::Database.new("MUsic_playlist.db")

# I had show_playlist try to execute .tables... it didn't work. so I did this non-sense
	# create_playlist_nexus_cmd = <<-SQL
	# 	  CREATE TABLE IF NOT EXISTS playlist_list(
	# 	    playlist_name VARCHAR(255)
	# 	  )
	# 	SQL

	# database.execute(create_playlist_nexus_cmd)
def show_playlists(database)
	p database.execute("SELECT * FROM playlist_list")
end

# I'm having a bug or something that when I use the placeholders (?) for table names
# it doesn't work. My guess is that the placeholder was programmed to only be used for data values and nothing more.
# I know it's unsecure, but i'm short of time so I'll leave what works for now and refactor a solution in a future date.

def display_playlist(database, playlist)
	p database.execute("SELECT * FROM #{playlist}")
end

def delete_playlist(database, playlist)
	database.execute("DROP TABLE #{playlist}")
	database.execute("DELETE FROM playlist_list WHERE playlist_name=?", [playlist])
	puts "Your playlist:#{playlist} has been deleted!"
end

# make this shjt something in the UI 
# I can't flipping interpolate anymore with the <<-SQL SQL qoute shjt, screw it I'm using normal qoute marks
# note: to future self good on ya to making something work, but you better figure this out
# a breach in security is a no-no
def create_playlist(database, playlist_name)
	create_playlist_cmd = "
	  CREATE TABLE IF NOT EXISTS #{playlist_name}(
	    id INTEGER PRIMARY KEY,
	    track_name VARCHAR(255),
	    artist VARCHAR(255),
	    album VARCHAR(255),
	    genre VARCHAR(255)
	  )"
	database.execute(create_playlist_cmd)
	# makes duplicates of names in the playlist_list. tried to use IF NOT EXISTS here. didn't work.
	database.execute("INSERT INTO playlist_list (playlist_name) VALUES (?)", [playlist_name])
	puts "Your playlist:#{playlist_name} has been created!"
end

# makes duplicates of songs note: okay so I found a keyword called unique which sets a constraint to prevent duplicates, 
# but I'm having a hard time with it so I'll just do later when I'm refactoring. 
def add_track(database, playlist, track_name, artist, album, genre)
	database.execute("INSERT INTO #{playlist} (track_name, artist, album, genre) VALUES (?,?,?,?)", [track_name, artist, album, genre])
	puts "Your playlist:#{playlist} has been updated!"
end

def delete_track(database, playlist, track_name)
	# AND artist=?
	database.execute("DELETE FROM #{playlist} WHERE track_name=?", [track_name, artist])
	puts "Your playlist:#{playlist} has been updated!"
end

def find_track(database, playlist, track_name, artist)
	puts "Is this what you're looking for?"
	p database.execute("SELECT * FROM #{playlist} WHERE track_name=? AND artist=?", [track_name, artist])
end


# # show_playlists(database)
# create_playlist(database, "pop")
# # show_playlists(database)
# # delete_playlist(database, "metal")
# # delete_playlist(database, "sd")
# show_playlists(database)
# # add_track(database, "pop", "dark horse", "Katy perry", "idk", "pop")
# # add_track(database, "pop", "panda", "Desiigner", "idk", "rap")
# display_playlist(database, "pop")
# find_track(database, "pop", "dark horse", "Katy perry")
# delete_track(database, "pop", "dark horse", "Katy perry")
# display_playlist(database, "pop")