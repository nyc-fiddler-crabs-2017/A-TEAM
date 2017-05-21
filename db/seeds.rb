require 'faker'

User.delete_all
Question.delete_all

users = 20.times.map do
  User.create!( :username  => Faker::Name.name,
                :email      => Faker::Internet.email,
                :password   => 'password' )
end

user_questions = ["life?", "meaning?", "language?", "real?"].map do |name|
  Question.create!(:title => name,
                  :text   => Faker::Food.ingredient,
                  :user => users[rand(18)]
                  )
end
