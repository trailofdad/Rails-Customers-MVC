class Artist < ActiveRecord::Base
    self.table_name = 'Artist'
    self.primary_key = :ArtistId

    has_many :albums, :class_name => 'Album', :foreign_key => :ArtistId
end
