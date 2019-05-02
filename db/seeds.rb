# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ruby = Category.create(name: 'ruby')
ruby.save

java = Category.create(name: 'java')
java.save

html = Category.create(name: 'HTML')
html.save

css = Category.create(name: 'CSS')
css.save

python = Category.create(name: 'python')
python.save

javascript = Category.create(name: 'JavaScript')
javascript.save

fortran = Category.create(name: 'Fortran')
fortran.save

tony = User.create(
  email: 'tony@gmail.com',
  password: 'password',
  password_confirmation: 'password',
  username: 'Furry_kid_69',
  firstname: 'Tony',
  lastname: 'Xu',
  location: 'Melbourne',
  admin: false,
  aboutme: 'I have a cute little dog Lorem ipsum dolor sit amet consectetur adipisicing elit. Nam repellendus assumenda unde odit debitis hic expedita iusto cumque ducimus possimus!'
)
tony.save
puts 'just made a tony'
puts 'email: tony@gmail.com'
puts 'password: password'
puts ''
puts '--------------------------'

brad = User.create(
  email: 'tony@gmail.com',
  password: 'password',
  password_confirmation: 'password',
  username: 'Furry_kid_69',
  firstname: 'Tony',
  lastname: 'Xu',
  location: 'Melbourne',
  admin: false,
  aboutme: 'I have a cute little dog Lorem ipsum dolor sit amet consectetur adipisicing elit. Nam repellendus assumenda unde odit debitis hic expedita iusto cumque ducimus possimus!'
)
brad.save
puts 'just made a brad'
puts 'email: brad@gmail.com'
puts 'password: password'
puts ''
puts '--------------------------'

admin = User.create(
  email: 'admin@gmail.com',
  password: 'password',
  password_confirmation: 'password',
  username: 'Admin',
  firstname: 'Admin',
  lastname: 'Neckbeard',
  location: 'Melbourne',
  admin: true,
  aboutme: 'I have a cute little dog Lorem ipsum dolor sit amet consectetur adipisicing elit. Nam repellendus assumenda unde odit debitis hic expedita iusto cumque ducimus possimus!'
)
admin.save
puts 'just made a admin'
puts 'email: admin@gmail.com'
puts 'password: password'
puts ''
puts '--------------------------'



t.bigint "user_id"
t.bigint "category_id"
t.datetime "created_at", null: false
t.datetime "updated_at", null: false
t.string "title"
t.string "content"

post = Post.create(
  user_id: '1'
  category_id: '1'
  title: "Docker 101: Fundamentals and Practice"
  content: 
)