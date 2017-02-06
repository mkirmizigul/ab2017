# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts 'categories seed ..'

Category.create(name:"Diğer",description:"Herhangi bir kategori de olmayan yazılar")
Category.create(name:"Ruby on Rails",description:"Ruby on Rails hakkında tuttuğum notlarım")
Category.create(name:"Ruby",description:"Ruby açıklaması")

puts 'categories seeded ..'

puts 'Post seed ...'

Post.create(title:"Ruby on Rails 101",context:"Ruby on Rails \'e giriş",rating:"5",slug:"ruby-on-rails-101")
Post.create(title:"Ruby on Rails Atölye",context:"Ruby on Rails Proje Geliştirme Atölyesi",rating:"5",slug:"ruby-on-rails-atolge")
Post.create(title:"Ruby 101",context:"Ruby  101",rating:"5",slug:"ruby-101")

puts 'Post seeded ...'
