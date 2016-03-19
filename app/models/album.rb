class Album < ActiveRecord::Base
    self.table_name = 'Album'
    self.primary_key = :AlbumId

    belongs_to :artist, :class_name => 'Artist', :foreign_key => :ArtistId
    has_many :tracks, :class_name => 'Track', :foreign_key => :AlbumId
end
