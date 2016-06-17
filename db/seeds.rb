

10.times {User.create!(username: Faker::Internet.user_name, email: Faker::Internet.email , password: "password" , personal_info: Faker::Lorem.sentence)}

3.times {Group.create!(name: Faker::Internet.user_name , creator_id: rand(1..10), description: Faker::Hacker.say_something_smart)}

35.times {Membership.create!(member_id: rand(1..10), group_id: rand(1..3))}

30.times {Comment.create!(body: Faker::Hacker.say_something_smart , commenter_id: rand(1..10) , review_id: rand(1..20))}

40.times {Review.create!(rating: rand(1..5) , title: Faker::Commerce.product_name , body: Faker::Hacker.say_something_smart , reviewer_id: rand(1..10) , game_id: rand(1..10))}

25.times {Ownership.create!(owner_id: rand(1..10), game_id: rand(1..10))}


random_numbers = [24503, 198053, 5749, 24985]

random_numbers.each do |number|
  url ="http://www.boardgamegeek.com/xmlapi/boardgame/#{number}"
  if url
    xml_data = open(url)
    read_file = xml_data
    @response_body = Crack::XML.parse(read_file)
    game = @response_body["boardgames"]["boardgame"]
    game["name"].class == Array ? game_name = game["name"][0] : game_name = game["name"]
    Game.create!(name: game_name, description: game["description"].gsub("<br/>", " "), number_of_players: rand(1..6), image_url: game["thumbnail"])
  else
    Game.create!(name: Faker::Internet.user_name, description: Faker::Hacker.say_something_smart , number_of_players: rand(1..6), image_url: "https://metrouk2.files.wordpress.com/2015/06/kitten2.jpg")
  end

end

# 7.times {Game.create!(name: Faker::Internet.user_name, description: Faker::Hacker.say_something_smart , number_of_players: rand(1..6), image_url: "https://metrouk2.files.wordpress.com/2015/06/kitten2.jpg")}

10.times {Categorization.create!(game_id: rand(1..7), category_id: rand(1..5))}

5.times {Category.create!(title: Faker::Book.genre)}





