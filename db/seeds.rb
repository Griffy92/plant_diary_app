# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
u1 = User.create :email => 'dom@plant.co', :nickname => 'Dom', :password => 'chicken'
u2 = User.create :email => 'steph@plant.co', :nickname => 'Steph', :password => 'chicken'
puts "#{ User.count } users created"

Plant.destroy_all
p1 = Plant.create :name => 'Woody', :species => 'Monstera', :last_watered => '2023-04-01', :cycle => '7', :image => "https://i.imgur.com/iSM3Bkp.jpg"
p2 = Plant.create :name => 'Leafy', :species => 'Elephant Ear', :last_watered => '2023-04-01', :cycle => '7', :image => "https://i.imgur.com/fbVLiaC.jpg"
p3 = Plant.create :name => 'Orchy', :species => 'Orchid', :last_watered => '2023-04-01', :cycle => '7', :image => "https://i.imgur.com/3NYnaUm.jpg"
p4 = Plant.create :name => 'Figgy', :species => 'Fig Tree', :last_watered => '2023-04-01', :cycle => '7', :image => "https://i.imgur.com/Xsr4lDF.jpg"
p5 = Plant.create :name => 'Peacey', :species => 'Peace Lily', :last_watered => '2023-04-01', :cycle => '7', :image => "https://i.imgur.com/KWU93cr.jpg"
p6 = Plant.create :name => 'Burry', :species => "Burro's-tail", :last_watered => '2023-04-01', :cycle => '7', :image => "https://i.imgur.com/W3a7Bhd.jpg"
p7 = Plant.create :name => 'Bassy', :species => "Basil", :last_watered => '2023-04-01', :cycle => '7', :image => "https://i.imgur.com/Qoaw7eP.jpg"
p8 = Plant.create :name => 'PrayPray', :species => 'Prayer Plant', :last_watered => '2023-04-01', :cycle => '7', :image => "https://i.imgur.com/P15tep4.jpg"
p9 = Plant.create :name => 'Goldy', :species => 'Marigold', :last_watered => '2023-04-01', :cycle => '7', :image => "https://cdn.britannica.com/76/118076-050-756CD4F5/French-marigold.jpg"
p10 = Plant.create :name => 'Colly', :species => 'Coleus', :last_watered => '2023-04-01', :cycle => '7', :image => "https://www.oderings.co.nz/assets/coleus-ruby-heart_614892_2.jpg"
puts "#{ Plant.count } plants created"

Journal.destroy_all
j1 = Journal.create :name => 'My Plant Journal'
j2 = Journal.create :name => 'Green Green Green'
j3 = Journal.create :name => 'Other Plant Journal'
puts "#{ Journal.count } journals created"

# Associations #
puts "Users and Journals"
u1.journals << j1 << j2
u2.journals << j3

puts "Users and Plants"
u1.plants << p1 << p2 << p3 << p4 << p5 << p6
u2.plants << p7 << p8 << p9 << p10

puts "Plants and Journals"
j1.plants << p1 << p2 << p3 << p6
j2.plants << p2 << p3 << p4 << p5
j3.plants << p7 << p8 << p9 << p10
