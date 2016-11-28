require 'sqlite3'

playlist_database = SQLite3::Database.new("MUsic_playlist.db")


def show_playlists(database)
	p database.execute(".tables")
end

def display_playlist(database,playlist)
	database.execute("SELECT * FROM ?", [playlist])
end

def delete_playlist(database,playlist)
	database.execute("DROP TABLE #{playlist}", [playlist])
end

def add_to_playlist(database,playlist,track_name,artist,album,genre)
	database.execute("INSERT INTO ? (track_name, artist, album, genre) VALUES (?,?,?,?)", [playlist, track_name, artist, album, genre])
end

# make this shjt something in the UI 
def create_playlist(database,playlist_name)
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
end

def find_track(database,playlist, track_name, artist)
	database.execute("SELECT * FROM ? WHERE track_name='?' and artist='?'", [playlist, track_name, artist])

loop do 
	puts ""
	
end

