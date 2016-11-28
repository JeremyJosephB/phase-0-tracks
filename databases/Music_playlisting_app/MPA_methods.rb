require 'sqlite3'

database = SQLite3::Database.new("MUsic_playlist.db")

create_playlist_nexus_cmd = <<-SQL
	  CREATE TABLE IF NOT EXISTS playlist_list(
	    playlist_name VARCHAR(255)
	  )
	SQL

database.execute(create_playlist_nexus_cmd)
# I had it try to execute .tables... it didn't work. so I did this non-sense
def show_playlists(database)
	p database.execute("SELECT * FROM playlist_list")
end

# I'm having a bug or something that when I use the placeholders (?) for table names
# it doesn't work. My guess is that the placeholder was programmed to only be used for data values and nothing more.
# I know it's unsecure, but i'm short of time so I'll leave what works for now and refactor a solution in a future date.

def display_playlist(database, playlist)
	database.execute("SELECT * FROM #{playlist}")
end

def delete_playlist(database, playlist)
	database.execute("DROP TABLE #{playlist}")
	database.execute("DELETE FROM playlist_list WHERE playlist_name=?", [playlist])
end

def add_to_playlist(database, playlist, track_name, artist, album, genre)
	database.execute("INSERT INTO #{playlist} (track_name, artist, album, genre) VALUES (?,?,?,?)", [track_name, artist, album, genre])
end

# make this shjt something in the UI 

def create_playlist(database)
	playlist_name = gets.chomp
	create_playlist_cmd = <<-SQL
	  CREATE TABLE IF NOT EXISTS playlist_name(
	    id INTEGER PRIMARY KEY,
	    track_name VARCHAR(255),
	    artist VARCHAR(255),
	    album VARCHAR(255),
	    genre VARCHAR(255)
	  )
	SQL
	database.execute(create_playlist_cmd)
	# makes duplicates of names in the playlist_list. tried to use if not exists here. didn't work.
	database.execute("INSERT INTO playlist_list (playlist_name) VALUES (?)", [playlist_name])
end

def find_track(database,playlist, track_name, artist)
	database.execute("SELECT * FROM #{playlist} WHERE track_name='?' and artist='?'", [track_name, artist])
end

show_playlists(database)

create_playlist(database)

show_playlists(database)

delete_playlist(database, "metal")