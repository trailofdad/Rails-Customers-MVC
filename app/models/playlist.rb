class Playlist < ActiveRecord::Base
    self.table_name = 'Playlist'
    self.primary_key = :PlaylistId

    has_many :playlisttracks, :class_name => 'PlaylistTrack', :foreign_key => :PlaylistId
end
