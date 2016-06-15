class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name, null: false, unique: true
      t.text :description
      t.string :number_of_players
      t.string :image_url, default: "http://assets.londonist.com/uploads/2007/09/i730/monopoly.jpg"
      t.timestamps null: false
    end
  end
end
