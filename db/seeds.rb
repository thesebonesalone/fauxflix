# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Tag.destroy_all
tag_array = [
    { :name => "Drama"},
    { :name => "Comedy"},
    { :name => "Horror"},
    { :name => "Romance"},
    { :name => "Action"}
]
tag_array.each do |tag|
    Tag.create(tag)
end
Movie.destroy_all
movie_array = [
    { :title => "Kung Fury", :url => "bS5P_LAqiVg", :description => "A Test Description. To be changed later.", :tag_id => rand(4)+1},
    { :title => "Angel and the Badman", :url => "659XwLyOIQw", :description => "A Test Description. To be changed later.",:tag_id => rand(4)+1},
    { :title => "Carnival of Souls", :url => "kfrab7_5wc0", :description => "A Test Description. To be changed later.", :tag_id => rand(4)+1},
    { :title => "Carnival Story", :url => "tEqNjz3EwOY",:description => "A Test Description. To be changed later.", :tag_id => rand(4)+1},
    { :title => "A Farewell to Arms", :url => "JIyUsRq49to", :description => "A Test Description. To be changed later.", :tag_id => rand(4)+1},
    { :title => "The Devil Bat", :url => "3xOo4EkQ9mc",:description => "A Test Description. To be changed later.", :tag_id => rand(4)+1},
    { :title => "The General", :url => "V-8I0TyrOpU", :description => "A Test Description. To be changed later.", :tag_id => rand(4)+1},
    { :title => "The Deadly Companions", :url => "cKiq6G6B8dA", :description => "A Test Description. To be changed later.", :tag_id => rand(4)+1},
    { :title => "God's Little Acre", :url => "YlRAXiMS0bA", :description => "A Test Description. To be changed later.", :tag_id => rand(4)+1},
    { :title => "Go For Broke!", :url => "gOfyE3ei0nY", :description => "A Test Description. To be changed later.", :tag_id => rand(4)+1},
    { :title => "Gulliver's Travels", :url => "H6gLRQpisuI", :description => "A Test Description. To be changed later.", :tag_id => rand(4)+1},
    { :title => "Captain January", :url => "MpA5suo_V_U", :description => "A Test Description. To be changed later.", :tag_id => rand(4)+1},
    { :title => "The Gorilla", :url => "qS-vll1rEsM", :description => "A Test Description. To be changed later.", :tag_id => rand(4)+1},
    { :title => "Dixiana", :url => "nu2S6266Wjw", :description => "A Test Description. To be changed later.", :tag_id => rand(4)+1},
    { :title => "Father's Little Dividend", :url => "aHT7CVsQZn8", :description => "A Test Description. To be changed later.", :tag_id => rand(4)+1},
    { :title => "The First Legion", :url => "eLjjYut7KC0", :description => "A Test Description. To be changed later.", :tag_id => rand(4)+1},
    { :title => "Plan 9 From Outer Space", :url => "Ln7WF78PolA", :description => "A Test Description. To Be Changed Later.", :tag_id => rand(4)+1}
]
movie_array.each do |movie|
    Movie.create(movie)
end







