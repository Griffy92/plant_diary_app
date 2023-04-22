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
p1 = Plant.create :name => 'Woody', :species => 'Monstera', :last_watered => '2023-04-01', :cycle => '7', :image => "https://media.gq.com/photos/63bc7b867bd889812e33312a/master/w_2000,h_1333,c_limit/Monstera-bloomscape.png"
p2 = Plant.create :name => 'Leafy', :species => 'Elephant Ear', :last_watered => '2023-04-01', :cycle => '7', :image => "https://www.allaboutgardening.com/wp-content/uploads/2022/06/Colocasia.jpg"
p3 = Plant.create :name => 'Orchy', :species => 'Orchid', :last_watered => '2023-04-01', :cycle => '7', :image => "https://flowersonthehilltop.co.nz/wp-content/uploads/2021/06/Double-spike-white-orchid.jpg"
p4 = Plant.create :name => 'Figgy', :species => 'Fig Tree', :last_watered => '2023-04-01', :cycle => '7', :image => "https://www.gardeningknowhow.com/wp-content/uploads/2019/01/ficus-ginseng-400x544.jpg"
p5 = Plant.create :name => 'Peacey', :species => 'Peace Lily', :last_watered => '2023-04-01', :cycle => '7', :image => "https://www.mydomaine.com/thmb/N3StDx3PyGbF0Pwafv-P9-qiNZU=/900x0/filters:no_upscale():strip_icc()/1566417254329_20190821-1566417255317-b9314f1d9f7a4668a466c5ffb1913a8f.jpg"
p6 = Plant.create :name => 'Burry', :species => "Burro's-tail", :last_watered => '2023-04-01', :cycle => '7', :image => "https://cdn.apartmenttherapy.info/image/upload/v1589851758/stock/shutterstock_1620707989.jpg"
p7 = Plant.create :name => 'Bassy', :species => "Basil", :last_watered => '2023-04-01', :cycle => '7', :image => "https://www.thespruce.com/thmb/_H3tIOm1tqotyBZLfu0HNBF7iKQ=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/how-to-grow-basil-plants-1402624-07-6071d2544ef2423a99d2e30a153c2b00.jpg"
p8 = Plant.create :name => 'PrayPray', :species => 'Prayer Plant', :last_watered => '2023-04-01', :cycle => '7', :image => "https://images.immediate.co.uk/production/volatile/sites/10/2021/02/2048x1365-Maranta-SEO-GettyImages-1248988991-6ed2ea4.jpg"
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

puts "Plants and Journals"
j1.plants << p1 << p2 << p3 << p6
j2.plants << p2 << p3 << p4 << p5
j3.plants << p7 << p8 << p9 << p10