# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'

10.times do
  user = User.new(email: Faker::Internet.email, password: 'admin123')
  user.build_user_profile(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
  user.user_profile.build_address(line_1: Faker::Address.street_address, city: Faker::Address.city, state_code: Faker::Address.state, zip_or_postcode: Faker::Address.zip_code, country_code: Faker::Address.country_code)
  user.build_avatar(attachment: Faker::Avatar.image(Faker::Name.first_name, "640x640", "jpg"))
  user.save!
  puts "user #{user.email} created"
  4.times do
    post = Post.new(title: Faker::Name.title, user: user, body: Faker::Lorem.paragraphs(3, true).join('\n\n'))
    post.build_featured(attachment: open("http://dummyimage.com/600x400/000/fff.jpg&text=dummyimage"))
    4.times do
      post.images.build(attachment: open("http://dummyimage.com/600x400/000/fff.jpg&text=dummyimage"))
      post.audios.build(attachment: open("https://archive.org/download/SineWaveStudiosSineWaveTestFile/sinetest_64kb.mp3"))
    end
    post.save!
    puts "user #{user.email} created post: #{post.title}"
  end
end