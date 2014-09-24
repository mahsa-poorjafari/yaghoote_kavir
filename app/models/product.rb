# encoding: UTF-8
class Product < ActiveRecord::Base
  has_many :photos
  belongs_to :category
end
