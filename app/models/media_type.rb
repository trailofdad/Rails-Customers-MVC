class MediaType < ActiveRecord::Base
    self.table_name = 'MediaType'
    self.primary_key = :MediaTypeId

    has_many :tracks, :class_name => 'Track', :foreign_key => :MediaTypeId
end
