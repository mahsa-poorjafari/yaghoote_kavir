# encoding: UTF-8
class Subgroup < ActiveRecord::Base
  extend FriendlyId  
  friendly_id :title
  has_many :products
  belongs_to :category
end
