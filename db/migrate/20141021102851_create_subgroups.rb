class CreateSubgroups < ActiveRecord::Migration
  def change
    create_table :subgroups do |t|
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
