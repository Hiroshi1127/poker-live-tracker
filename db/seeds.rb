# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(name:  "Example User",
            email: "example@railstutorial.org",
            password:              "foobar",
            password_confirmation: "foobar")

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
              email: email,
              password:              password,
              password_confirmation: password)
end

users = User.order(:created_at).take(6)
50.times do
  memo = Faker::Lorem.sentence(5)
  users.each { |user| user.poker_sessions.create!(stakes: "1/2",
                                            place: "My house-#{rand(1.5)}",
                                            memo: memo,
                                            start_at: 1.hour.ago,
                                            stop_at: Time.now,
                                            buy_in: rand(1.1000),
                                            cash_out: rand(1.1000)
                                            ) }
end