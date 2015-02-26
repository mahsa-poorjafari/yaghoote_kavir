# encoding: UTF-8
class Gallery < ActiveRecord::Base
  has_attached_file :photo, :styles => { :original => "700x650>" , :medium => "450x450>", :small => "300x350>" }
  validates_attachment :photo, 
    :content_type => { :content_type => ["image/jpg", "image/jpeg", "image/png"], :message => "فرمت عکس صحیح می باشد." },
    :size => { :in => 0..300.kilobytes , :message => "حجم تصویر بیشتر از 300 کیلوبایت است."}
  belongs_to :gallery_group

end
