class AddCategoryIdToSubgroup < ActiveRecord::Migration
  def change
    add_column :subgroups, :category_id, :integer
  end
end
