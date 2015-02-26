class CreateGalleryGroups < ActiveRecord::Migration
  def change
    create_table :gallery_groups do |t|
      t.string :title

      t.timestamps
    end
  end
end
