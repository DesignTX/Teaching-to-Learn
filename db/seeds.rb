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
  username: 'catdog69',
  firstname: 'Tony',
  lastname: 'Xu',
  location: 'Melbourne',
  admin: false,
  aboutme: 'I have a cute little dog Lorem ipsum dolor sit amet consectetur adipisicing elit. Nam repellendus assumenda unde odit debitis hic expedita iusto cumque ducimus possimus!'
)
tony.save
puts 'just made a tony'

tony = User.create(
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
tony.save
puts 'just made a admin'
puts ''

brad = User.create(
  email: 'brad@hotsexyman.com',
  password: 'brad12345',
  password_confirmation: 'brad12345',
  username: 'brad',
  firstname: 'sdsd',
  lastname: 'Zdsdsoo',
  location: 'Sydney',
  admin: true,
  aboutme: 'I have a cute little dog Lorem ipsum dolor sit amet consectetur adipisicing elit. Nam repellendus assumenda unde odit debitis hic expedita iusto cumque ducimus possimus!'
)
brad.save
puts 'just made a brad'
