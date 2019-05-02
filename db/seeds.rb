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



post_1 = Post.create(
  user_id: '1',
  category_id: '1',
  title: "Docker 101: Fundamentals and Practice",
  summary: "If you're tired of hearing your coworkers praise Docker and its benefits at every chance they get, or you're tired of nodding your head and walking away every time you find yourself in one of these conversations, you've come to the right place.",
  content: "Docker
  Here's Docker's definition, according to Wikipedia:
  
  Docker is a computer program that performs operating-system-level virtualization.
  Pretty simple, right? Well, not exactly. Alright, here's my definition of what docker is:
  
  Docker is a platform for creating and running containers from images.
  Still lost? No worries, that's because you probably don't know what containers or images are.
  
  Images are single files containing all the dependencies and configurations required to run a program, while containers are the instances of those images. Let's go ahead and see an example of that in practice to make things clearer."
)
post_1.save

post_2 = Post.create(
  user_id: "2",
  category_id: "2",
  title: "Learning Ruby: From Zero to Hero",
  summary: "Why learn Ruby?

  For me, the first reason is that it’s a beautiful language. It’s natural to code and it always expresses my thoughts.
  
  The second — and main — reason is Rails: the same framework that Twitter, Basecamp, Airbnb, Github, and so many companies use.",

  content: "Introduction/History
  Ruby is “A dynamic, open source programming language with a focus on simplicity and productivity. It has an elegant syntax that is natural to read and easy to write.” — ruby-lang.org
  
  Let’s get started with some basics!
  
  Variables
  You can think about a variable as a word that stores a value. Simple as that.

  In Ruby it’s easy to define a variable and set a value to it. Imagine you want to store the number 1 in a variable called one. Let’s do it!"
)
post_2.save

post_3 = Post.create(
  user_id: "2",
  category_id: "3",
  title: "How to Easily Build Desktop Apps with HTML, CSS and Javascript",
  summary: "in this lesson we will be focussing mainly on how Electron can be used to create desktop applications with Web Technologies like HTML, CSS and Javascript.",

  content: "Understanding the Existing Folder Structure and Code
  The application has a particular folder structure. Here I will be mentioning some of the important things in this folder structure.
  
  package.json
  It has information about the application you are creating, all the dependencies needed for the app, and some scripts. Some of the scripts are already pre configured, and you can add new scripts as well.
  
  The config.forge path has all the configurations which are specific to ElectronJS. For example make-targets is used to specify the target make files for various platforms like Windows, Mac or Linux.
  
  Also package.json has  which indicates that src/index.js is the starting point of the application
  
  src/index.js
  According to package.json, index.js is the main script. The process which runs the main script is known as the main process. So the main process runs the index.js script.
  
  The main process is used to display GUI elements. It does this by creating web pages.
  
  Each web page created runs in a process called the renderer process.
  "
)
post_3.save


post_4 = Post.create(
  user_id: "2",
  category_id: "4",
  title: "Learn CSS Grid",
  summary: "The module has also gotten native support by the major browsers Safari, Chrome, Firefox, Edge this year, so I believe that all front-end developer will have to learn this technology in the not too distant future.",
  content: "
  In this article, I’ll take you through the very basics of CSS Grid as quickly as possible. I’ll be leaving out everything you shouldn’t care about until you’ve understood the basics.
  
  I’ve also created a free CSS Grid course. Click here to get full access to it.
  
  Alternatively, check out this article, which explains what you’ll learn throughout the course:
  
  Want to learn CSS Grid? Here’s my free full-length course. Merry Christmas!
  
  13 interactive screencasts to take you from beginner to advanced.
  medium.freecodecamp.org	
  Now let’s jump into it!"
)
post_4.save