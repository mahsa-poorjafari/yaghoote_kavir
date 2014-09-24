# encoding: UTF-8
class Slide < ActiveRecord::Base
  has_attached_file :image, :styles => { :small => "150x150",
                                        :gallery_size => {:geometry => "965x680#", :processors => [:jcropper]}}
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]
  attr_accessor :crop_x, :crop_y, :crop_w, :crop_h 
  def cropping?
    p '123cropping'
    p  (!crop_x.blank? && !crop_y.blank? && !crop_w.blank? && !crop_h.blank?)
    !crop_x.blank? && !crop_y.blank? && !crop_w.blank? && !crop_h.blank?
  end
end
