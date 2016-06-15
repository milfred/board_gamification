class CreateOwnerships < ActiveRecord::Migration
  def change
    create_table :ownerships do |t|
      t.integer :owner_id, null: false
      t.integer :game_id, null: false
    end
  end
end
