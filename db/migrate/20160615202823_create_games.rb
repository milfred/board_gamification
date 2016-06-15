class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name, null: false, unique: true
      t.text :description
      t.string :number_of_players
      t.string :image_url, default: "https://media.licdn.com/mpr/mpr/shrinknp_200_200/AAEAAQAAAAAAAAZOAAAAJGE3MWQ1N2JmLTViZTAtNGY4My05NWFkLWU0NzQ5YTUzN2Y5OA.jpg"
      t.timestamps null: false
    end
  end
end
