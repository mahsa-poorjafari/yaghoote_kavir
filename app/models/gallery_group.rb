class GalleryGroup < ActiveRecord::Base
  extend FriendlyId  
  friendly_id :title
  has_many :galleries
end
