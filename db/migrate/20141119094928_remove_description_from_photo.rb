class RemoveDescriptionFromPhoto < ActiveRecord::Migration
  def change
    remove_column :photos, :description, :string
  end
end
