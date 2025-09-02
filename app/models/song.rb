class Song < ApplicationRecord
  belongs_to :artist, optional: true

  def artist_name
    artist&.name
  end

  def artist_name=(name)
    self.artist = if name.present?
                    Artist.find_or_create_by(name: name)
                  else
                    nil
                  end
  end
end
