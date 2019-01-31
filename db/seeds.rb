

require 'faker'


10.times do |index|
city = City.create(name: Faker::Nation.capital_city, zip_code: '75018')
user = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Music.band, email: Faker::Internet.email, age: rand(18..75), city: City.all.sample)
potin = Potin.create(title: Faker::Music.band, content: Faker::Music.album, user: User.all.sample)
tag = Tag.create(title: Faker::Music.band, user: User.all.sample)
post = Post.create(potin_id: Potin.all.sample, tag: Tag.all.sample)
end


