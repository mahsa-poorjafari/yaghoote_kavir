# encoding: UTF-8
class StaticController < ApplicationController
  def home
    @contact = Page.find_by_title('تماس با ما')
  end
end
