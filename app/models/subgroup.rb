# encoding: UTF-8
class Subgroup < ActiveRecord::Base
  extend FriendlyId  
  friendly_id :title
  
  belongs_to :category
end
