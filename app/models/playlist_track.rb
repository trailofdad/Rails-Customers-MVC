class PlaylistTrack < ActiveRecord::Base
    self.table_name = 'PlaylistTrack'


    belongs_to :playlist, :class_name => 'Playlist', :foreign_key => :PlaylistId
    belongs_to :track, :class_name => 'Track', :foreign_key => :TrackId
end
