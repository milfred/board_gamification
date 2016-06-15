require 'Faker'

user_params = {username: Faker::Internet.user_name, email: Faker::Internet.email , password_digest: Faker::Internet.password , personal_info: Faker::Lorem.sentence}
membership_params = {member_id: rand(10), group_id: rand(3) }
group_params = {name: Faker::Space.star_cluster , creator_id: rand(10)}
comment_params = {body: Faker::Hacker.say_something_smart , commenter_id: rand(10) , review_id: rand(20)}

review_params = {rating: rand(5) , title: Faker::Commerce.product_name , body: Faker::Hacker.say_something_smart , reviewer_id: rand(10) , game_id: rand(10) }

ownership_params = {owner_id: rand(10), game_id: rand(10) }

game_params = {name: , description: Faker::Hacker.say_something_smart , number_of_players: rand(6), image_url: "https://metrouk2.files.wordpress.com/2015/06/kitten2.jpg" }

categorization_params = {game_id: rand(7), category_id: rand(5)}

category_params = {title: Faker::Book.genre }

10.times {User.create(user_params)}

35.times {Membership.create(membership_params)}

3.times {Group.create(group_params)}

30.times {Comment.create(comment_params)}

40.times {Review.create(review_params)}

25.times {Ownership.create(ownership_params)}

7.times {Game.create(game_params)}

10.times {Categorization.create(categorization_params)}

5.times {Category.create(category_params)}
