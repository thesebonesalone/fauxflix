# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Tag.destroy_all
# tag_array = [
#     { :name => "Drama", :description => "For those of us who don't have enough already."},
#     { :name => "Comedy", :description => "Turn off your brain and fall into some laughter."},
#     { :name => "Horror", :description => "Nail biters beware, here lies trouble."},
#     { :name => "Romance", :description => "Sweep yourself off your own feet with these romantic classics."},
#     { :name => "Action", :description => "High octane thrills, dangerous spills. Here there be explosions."},
#     { :name => "Musical", :description => "Welcome one and all to the greatest spectacles of screen and sound."},
#     { :name => "Western", :description => "Howdy, pardner. Be quick, or be dead in the Wild Wild West."}
# ]
# tag_array.each do |tag|
#     Tag.create(tag)
# end
# Movie.destroy_all
movie_array = [
    { :title => "Kung Fury", :url => "bS5P_LAqiVg", :description => "A Test Description. To be changed later.", :tag_id => 12},
    { :title => "Angel and the Badman", :url => "659XwLyOIQw", :description => "A Test Description. To be changed later.",:tag_id => 14},
    { :title => "Carnival of Souls", :url => "kfrab7_5wc0", :description => "A Test Description. To be changed later.", :tag_id => 10},
    { :title => "Carnival Story", :url => "tEqNjz3EwOY",:description => "A Test Description. To be changed later.", :tag_id => 11},
    { :title => "A Farewell to Arms", :url => "JIyUsRq49to", :description => "A Test Description. To be changed later.", :tag_id => 8},
    { :title => "The Devil Bat", :url => "3xOo4EkQ9mc",:description => "A Test Description. To be changed later.", :tag_id => 10},
    { :title => "The General", :url => "V-8I0TyrOpU", :description => "A Test Description. To be changed later.", :tag_id => 9},
    { :title => "The Deadly Companions", :url => "cKiq6G6B8dA", :description => "A Test Description. To be changed later.", :tag_id => 14},
    { :title => "God's Little Acre", :url => "YlRAXiMS0bA", :description => "A Test Description. To be changed later.", :tag_id => 9},
    { :title => "Go For Broke!", :url => "gOfyE3ei0nY", :description => "A Test Description. To be changed later.", :tag_id => 8},
    { :title => "Gulliver's Travels", :url => "H6gLRQpisuI", :description => "A Test Description. To be changed later.", :tag_id => 9},
    { :title => "Captain January", :url => "MpA5suo_V_U", :description => "A Test Description. To be changed later.", :tag_id => 13},
    { :title => "The Gorilla", :url => "qS-vll1rEsM", :description => "A Test Description. To be changed later.", :tag_id => 10},
    { :title => "Dixiana", :url => "nu2S6266Wjw", :description => "A Test Description. To be changed later.", :tag_id => 9},
    { :title => "Father's Little Dividend", :url => "aHT7CVsQZn8", :description => "A Test Description. To be changed later.", :tag_id => 9},
    { :title => "Royal Wedding", :url => "FZ5X0a_PDGU", :description => "A Test Description. To be changed later.", :tag_id => 9},
    { :title => "Plan 9 From Outer Space", :url => "Ln7WF78PolA", :description => "A Test Description. To Be Changed Later.", :tag_id => 10},
    { :title => "Manos The Hands of Fate", :url => "LlG60q2mW90", :description => "A Test Description. To Be Changed Later.", :tag_id => 10},
    { :title => "Mr. Imperium", :url => "C1ys0nTlauk", :description => "A Test Description. To Be Changed Later.", :tag_id => 13},
    { :title => "Road to Bali", :url => "j5JQ1iaq6rE", :description => "A Test Description. To Be Changed Later.", :tag_id => 9},
    { :title => "McLintock", :url => "RGX2GKfhZvg", :description => "A Test Description. To Be Changed Later.", :tag_id => 14},
    { :title => "The Driller Killer", :url => "s51BHigXrm4", :description => "A Test Description. To Be Changed Later.", :tag_id => 10},
    { :title => "Night of the Living Dead", :url => "H91BxkBXttE", :description => "A Test Description. To Be Changed Later.", :tag_id => 10},
    { :title => "The Last Man On Earth", :url => "feQIhzNpBLQ", :description => "A Test Description. To Be Changed Later.", :tag_id => 8},
    { :title => "Tarzan and The Green Goddess", :url => "CnTMHT_TzMg", :description => "A Test Description. To Be Changed Later.", :tag_id => 12}
]
movie_array.each do |movie|
    Movie.create(movie)
end







