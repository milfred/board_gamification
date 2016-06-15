class CreateCategorizations < ActiveRecord::Migration
  def change
    create_table :categorizations do |t|
      t.integer :game_id, null: false
      t.integer :category_id, null: false
      t.timestamps null: false
    end
  end
end
