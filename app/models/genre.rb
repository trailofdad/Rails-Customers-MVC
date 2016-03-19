class Genre < ActiveRecord::Base
    self.table_name = 'Genre'
    self.primary_key = :GenreId

    has_many :tracks, :class_name => 'Track', :foreign_key => :GenreId
end
