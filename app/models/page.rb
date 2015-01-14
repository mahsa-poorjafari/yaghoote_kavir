# encoding: UTF-8
class Page < ActiveRecord::Base
  extend FriendlyId  
  friendly_id :title
  
  
end
