# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Tag.destroy_all
tag_array = [
    { :name => "Drama", :description => "For those of us who don't have enough already."},
    { :name => "Comedy", :description => "Turn off your brain and fall into some laughter."},
    { :name => "Horror", :description => "Nail biters beware, here lies trouble."},
    { :name => "Romance", :description => "Sweep yourself off your own feet with these romantic classics."},
    { :name => "Action", :description => "High octane thrills, dangerous spills. Here there be explosions."},
    { :name => "Musical", :description => "Welcome one and all to the greatest spectacles of screen and sound."},
    { :name => "Western", :description => "Howdy, pardner. Be quick, or be dead in the Wild Wild West."}
]
tag_array.each do |tag|
    Tag.create(tag)
end
Movie.destroy_all
movie_array = [
    { :title => "Kung Fury", :url => "bS5P_LAqiVg", :description => "A Test Description. To be changed later.", :tag_id => 5},
    { :title => "Angel and the Badman", :url => "659XwLyOIQw", :description => "A Test Description. To be changed later.",:tag_id => 7},
    { :title => "Carnival of Souls", :url => "kfrab7_5wc0", :description => "A Test Description. To be changed later.", :tag_id => 3},
    { :title => "Carnival Story", :url => "tEqNjz3EwOY",:description => "A Test Description. To be changed later.", :tag_id => 4},
    { :title => "A Farewell to Arms", :url => "JIyUsRq49to", :description => "A Test Description. To be changed later.", :tag_id => 1},
    { :title => "The Devil Bat", :url => "3xOo4EkQ9mc",:description => "A Test Description. To be changed later.", :tag_id => 3},
    { :title => "The General", :url => "V-8I0TyrOpU", :description => "A Test Description. To be changed later.", :tag_id => 2},
    { :title => "The Deadly Companions", :url => "cKiq6G6B8dA", :description => "A Test Description. To be changed later.", :tag_id => 7},
    { :title => "God's Little Acre", :url => "YlRAXiMS0bA", :description => "A Test Description. To be changed later.", :tag_id => 2},
    { :title => "Go For Broke!", :url => "gOfyE3ei0nY", :description => "A Test Description. To be changed later.", :tag_id => 1},
    { :title => "Gulliver's Travels", :url => "H6gLRQpisuI", :description => "A Test Description. To be changed later.", :tag_id => 2},
    { :title => "Captain January", :url => "MpA5suo_V_U", :description => "A Test Description. To be changed later.", :tag_id => 13},
    { :title => "The Gorilla", :url => "qS-vll1rEsM", :description => "A Test Description. To be changed later.", :tag_id => 3},
    { :title => "Dixiana", :url => "nu2S6266Wjw", :description => "A Test Description. To be changed later.", :tag_id => 2},
    { :title => "Father's Little Dividend", :url => "aHT7CVsQZn8", :description => "A Test Description. To be changed later.", :tag_id => 2},
    { :title => "Royal Wedding", :url => "FZ5X0a_PDGU", :description => "A Test Description. To be changed later.", :tag_id => 2},
    { :title => "Plan 9 From Outer Space", :url => "Ln7WF78PolA", :description => "A Test Description. To Be Changed Later.", :tag_id => 3},
    { :title => "Manos The Hands of Fate", :url => "LlG60q2mW90", :description => "A Test Description. To Be Changed Later.", :tag_id => 3},
    { :title => "Mr. Imperium", :url => "C1ys0nTlauk", :description => "A Test Description. To Be Changed Later.", :tag_id => 5},
    { :title => "Road to Bali", :url => "j5JQ1iaq6rE", :description => "A Test Description. To Be Changed Later.", :tag_id => 2},
    { :title => "McLintock", :url => "RGX2GKfhZvg", :description => "A Test Description. To Be Changed Later.", :tag_id => 7},
    { :title => "The Driller Killer", :url => "s51BHigXrm4", :description => "A Test Description. To Be Changed Later.", :tag_id => 3},
    { :title => "Night of the Living Dead", :url => "H91BxkBXttE", :description => "A Test Description. To Be Changed Later.", :tag_id => 3},
    { :title => "The Last Man On Earth", :url => "feQIhzNpBLQ", :description => "A Test Description. To Be Changed Later.", :tag_id => 1},
    { :title => "Tarzan and The Green Goddess", :url => "CnTMHT_TzMg", :description => "A Test Description. To Be Changed Later.", :tag_id => 5},
    { :title => "Silent Night, Bloody Night", :url => "gdBdiuU8Rew", :description => "A Test Description. To Be Changed Later.", :tag_id => 3},
    { :title => "Nosferatu", :url => "FC6jFoYm3xs", :description => "A Test Description. To Be Changed Later.", :tag_id => 3},
    { :title => "White Zombie", :url => "lQ0hL4EBC58", :description => "A Test Description. To Be Changed Later.", :tag_id => 3},
    { :title => "Reefer Madness", :url => "zhQlcMHhF3w", :description => "A Test Description. To Be Changed Later.", :tag_id => 3},
    { :title => "Teenagers From Outer Space", :url => "NYuFwdMkQd0", :description => "A Test Description. To Be Changed Later.", :tag_id => 3},
    { :title => "The Brain That Wouldn't Die", :url => "j_4uHlSITlE", :description => "A Test Description. To Be Changed Later.", :tag_id => 3},
    { :title => "Kid Vengeance", :url => "odCfnLFgoEE", :description => "A Test Description. To Be Changed Later.", :tag_id => 7},
    { :title => "Yuma", :url => "zNwoz1fo7J0", :description => "A Test Description. To Be Changed Later.", :tag_id => 7},
    { :title => "Gone to Texas", :url => "I8mwxY7J04c", :description => "A Test Description. To Be Changed Later.", :tag_id => 7},
    { :title => "Gunmen From Laredo", :url => "wJC_ytQc9Hc", :description => "A Test Description. To Be Changed Later.", :tag_id => 7},
    { :title => "A Rage to Live", :url => "ktCXWPhKegQ", :description => "A Test Description. To Be Changed Later.", :tag_id => 1},
    { :title => "Blood on the Sun", :url => "IT5kXxUQU_Q", :description => "A Test Description. To Be Changed Later.", :tag_id => 1},
    { :title => "Baby Face Nelson", :url => "c4qQ80rlwos", :description => "A Test Description. To Be Changed Later.", :tag_id => 1},
    { :title => "Kiss and Tell", :url => "RMHDy5os7vo", :description => "A Test Description. To Be Changed Later.", :tag_id => 1},
    { :title => "Copacabana", :url => "TY_tXb7JF3I", :description => "A Test Description. To Be Changed Later.", :tag_id => 6},
    { :title => "Second Chorus", :url => "gLP9YaGyNhc", :description => "A Test Description. To Be Changed Later.", :tag_id => 6},
    { :title => "Diamond Horseshoe", :url => "JUY41kGOoU0", :description => "A Test Description. To Be Changed Later.", :tag_id => 6},
    { :title => "Loving You", :url => "bXcxrK-_APk", :description => "A Test Description. To Be Changed Later.", :tag_id => 6},
    { :title => "Fiesta", :url => "rBzpyG04xr0", :description => "A Test Description. To Be Changed Later.", :tag_id => 6}
    

]
movie_array.each do |movie|
    Movie.create(movie)
end







