# encoding: UTF-8
class Photo < ActiveRecord::Base
  belongs_to :product
  has_attached_file :image, :styles => { :original => "700x650>" , :medium => "450x450>", :small => "300x350>" }
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]
end
