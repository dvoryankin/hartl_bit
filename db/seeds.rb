User.create!(name:  "Example User",
             email: "example@railstutorial.org",
             password:             "foobar",
             password_confirmation: "foobar")

User.create!(name:  'iam',
             email: 'a@a.com',
             password: 'asdfasdf',
             password_confirmation: 'asdfasdf',
             admin: true)

99.times do |n|
  name = Faker::Movies::StarWars.character
  # name = Faker::Name.name
  email = Faker::Internet.email
  # email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name: name,
               email: email,
               password:             password,
               password_confirmation: password)
end