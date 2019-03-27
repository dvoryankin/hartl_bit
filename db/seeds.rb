User.create!(name:  "Example User",
             email: "example@railstutorial.org",
             password:             "foobar",
             password_confirmation: "foobar",
             admin: true,
             activated: true,
             activated_at: Time.zone.now)

User.create!(name:  'iam',
             email: 'aa@aa.com',
             password: 'asdfasdf',
             password_confirmation: 'asdfasdf',
             admin: true,
             activated: true,
             activated_at: Time.zone.now)

99.times do |n|
  name = Faker::Movies::StarWars.character
  # name = Faker::Name.name
  email = Faker::Internet.email
  # email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name: name,
               email: email,
               password:             password,
               password_confirmation: password,
               activated: true,
               activated_at: Time.zone.now)
end

users = User.order(:created_at).take(6)
50.times do
  content = Faker::Lorem.sentence(5)
  users.each { |user| user.microposts.create!(content: content) }
end