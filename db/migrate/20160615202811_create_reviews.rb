class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :rating, null: false
      t.string :title, null: false
      t.text :body
      t.integer :reviewer_id, null: false
      t.integer :game_id, null: false
      t.timestamps null: false
    end
  end
end
