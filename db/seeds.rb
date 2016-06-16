10.times {User.create!(username: Faker::Internet.user_name, email: Faker::Internet.email , password: "password" , personal_info: Faker::Lorem.sentence)}

35.times {Membership.create!(member_id: rand(10), group_id: rand(3))}

3.times {Group.create!(name: Faker::Internet.user_name , creator_id: rand(10))}

30.times {Comment.create!(body: Faker::Hacker.say_something_smart , commenter_id: rand(10) , review_id: rand(20))}

40.times {Review.create!(rating: rand(1..5) , title: Faker::Commerce.product_name , body: Faker::Hacker.say_something_smart , reviewer_id: rand(10) , game_id: rand(10))}

25.times {Ownership.create!(owner_id: rand(10), game_id: rand(10))}

7.times {Game.create!(name: Faker::Internet.user_name, description: Faker::Hacker.say_something_smart , number_of_players: rand(6), image_url: "https://metrouk2.files.wordpress.com/2015/06/kitten2.jpg")}

10.times {Categorization.create!(game_id: rand(7), category_id: rand(5))}

5.times {Category.create!(title: Faker::Book.genre)}
