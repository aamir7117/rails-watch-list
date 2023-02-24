# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'cleaning database...'
Bookmark.delete_all()
Movie.delete_all()
List.delete_all()

puts 'creating seed records...'
m1 = Movie.new(title: "Wonder Woman 1984", overview: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s", poster_url: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg", rating: 6.9)
m1.save
m2 = Movie.new(title: "The Shawshank Redemption", overview: "Framed in the 1940s for double murder, upstanding banker Andy Dufresne begins a new life at the Shawshank prison", poster_url: "https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg", rating: 8.7)
m2.save
m3 = Movie.new(title: "Titanic", overview: "101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.", poster_url: "https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg", rating: 7.9)
m3.save
m4 = Movie.new(title: "Ocean's Eight", overview: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.", poster_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg", rating: 7.0)
m4.save

l1 = List.new(name: 'my_list1')
l1.save
l2 = List.new(name: 'my_list2')
l2.save
l3 = List.new(name: 'my_list3')
l3.save
l4 = List.new(name: 'my_list4')
l4.save

# debugger
b1 = Bookmark.new(comment: 'good movie! add m1 to l1')
b1.movie = m1
b1.list = l1
b1.save
b5 = Bookmark.new(comment: 'add m2 to l1')
b5.movie = m2
b5.list = l1
b5.save

b2 = Bookmark.new(comment: 'okay movie')
b2.movie = m2
b2.list = l2
b2.save

b3 = Bookmark.new(comment: 'fine movie')
b3.movie = m3
b3.list = l3
b3.save

b4 = Bookmark.new(comment: 'testing')
b4.movie = m4
b4.list = l4
b4.save
puts 'finished!'
