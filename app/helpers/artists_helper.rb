module ArtistsHelper
  def display_artist(song)
    return link_to song.artist_name, artist_path(song.artist) if song.artist
    link_to 'Add Artist', edit_song_path(song)
  end
end
