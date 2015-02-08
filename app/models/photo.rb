# encoding: UTF-8
class Photo < ActiveRecord::Base
  extend FriendlyId  
  friendly_id :title
  belongs_to :product
  has_attached_file :image, :styles => { :medium => "450x450>", :small => "300x350>" }
  validates_attachment :image, 
    :content_type => { :content_type => ["image/jpg", "image/jpeg", "image/png"], :message => "فرمت عکس صحیح می باشد." },
    :size => { :in => 0..300.kilobytes , :message => "حجم تصویر بیشتر از 300 کیلوبایت است."}
  
  has_attached_file :second_img, :styles => {  :medium => "450x450>", :small => "300x350>" }
  validates_attachment :second_img, 
    :content_type => { :content_type => ["image/jpg", "image/jpeg", "image/png"], :message => "فرمت عکس صحیح می باشد." },
    :size => { :in => 0..300.kilobytes , :message => "حجم تصویر بیشتر از 300 کیلوبایت است."}
end
