class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name, null: false
      t.integer :creator_id, null: false
      t.timestamps null: false
    end
  end
end
