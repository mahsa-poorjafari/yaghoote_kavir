# encoding: UTF-8
class Product < ActiveRecord::Base
  extend FriendlyId  
  friendly_id :title_fa
  has_many :photos
  belongs_to :subgroup
end
