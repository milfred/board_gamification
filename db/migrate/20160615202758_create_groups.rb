class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name, null: false, unique: true
      t.integer :creator_id, null: false
      t.timestamps null: false
    end
  end
end
