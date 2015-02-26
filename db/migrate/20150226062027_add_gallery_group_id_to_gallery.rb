class AddGalleryGroupIdToGallery < ActiveRecord::Migration
  def change
    add_column :galleries, :gallery_group_id, :integer
  end
end
