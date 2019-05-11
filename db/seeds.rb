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
  username: 'Corgi',
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
  email: 'brad@gmail.com',
  password: 'password',
  password_confirmation: 'password',
  username: 'Brad',
  firstname: 'Brad',
  lastname: 'Richardson',
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

welcome = User.create(
  email: 'Welcome2teaching2learn@gmail.com',
  password: 'password',
  password_confirmation: 'password',
  username: 'Teach-2-Learn',
  firstname: 'Steven',
  lastname: 'Elenora',
  location: 'Melbourne',
  admin: true,
  aboutme: 'I have a cute little dog Lorem ipsum dolor sit amet consectetur adipisicing elit. Nam repellendus assumenda unde odit debitis hic expedita iusto cumque ducimus possimus!'
)
welcome.save
puts 'just made a admin with real email address'
puts 'email: Welcome2teaching2learn@gmail.com'
puts 'password: password'
puts ''
puts '--------------------------'

verified = User.create(
  email: 'theadeptfridge@gmail.com',
  password: 'password',
  password_confirmation: 'password',
  username: 'Best_Teacher_76',
  firstname: 'Bradley',
  lastname: 'Richardson',
  location: 'Melbourne',
  admin: true,
  aboutme: 'I have a cute little dog Lorem ipsum dolor sit amet consectetur adipisicing elit. Nam repellendus assumenda unde odit debitis hic expedita iusto cumque ducimus possimus!'
)
verified.save
puts 'just made a verified user'
puts 'email: theadeptfridge@gmail.com'
puts 'password: password'
puts ''
puts '--------------------------'

post_1 = Post.create(
  user_id: '4',
  category_id: '1',
  title: 'Docker 101: Fundamentals and with Ruby',
  summary: "If you're tired of hearing your coworkers praise Docker and its benefits at every chance they get, or you're tired of nodding your head and walking away every time you find yourself in one of these conversations, you've come to the right place.",
  content: "Docker
  Here's Docker's definition, according to Wikipedia:

  Docker is a computer program that performs operating-system-level virtualization.
  Pretty simple, right? Well, not exactly. Alright, here's my definition of what docker is:

  Docker is a platform for creating and running containers from images.
  Still lost? No worries, that's because you probably don't know what containers or images are.

  Images are single files containing all the dependencies and configurations required to run a program, while containers are the instances of those images. Let's go ahead and see an example of that in practice to make things clearer.",

  address: 'Melbourne'
)
post_1.save

post_10 = Post.create(
  user_id: '4',
  category_id: '1',
  title: 'Ruby way 111011',
  summary: "If you're tired of hearing your coworkers praise Docker and its benefits at every chance they get, or you're tired of nodding your head and walking away every time you find yourself in one of these conversations, you've come to the right place.",
  content: "Docker
  Here's Docker's definition, according to Wikipedia:

  Docker is a computer program that performs operating-system-level virtualization.
  Pretty simple, right? Well, not exactly. Alright, here's my definition of what docker is:

  Docker is a platform for creating and running containers from images.
  Still lost? No worries, that's because you probably don't know what containers or images are.

  Images are single files containing all the dependencies and configurations required to run a program, while containers are the instances of those images. Let's go ahead and see an example of that in practice to make things clearer.",

  address: 'Melbourne'
)
post_10.save

post_2 = Post.create(
  user_id: '4',
  category_id: '2',
  title: 'Learning Ruby: From Zero to Hero',
  summary: "Why learn Ruby?

  For me, the first reason is that it’s a beautiful language. It’s natural to code and it always expresses my thoughts.

  The second — and main — reason is Rails: the same framework that Twitter, Basecamp, Airbnb, Github, and so many companies use.",

  content: "Introduction/History
  Ruby is “A dynamic, open source programming language with a focus on simplicity and productivity. It has an elegant syntax that is natural to read and easy to write.” — ruby-lang.org

  Let’s get started with some basics!

  Variables
  You can think about a variable as a word that stores a value. Simple as that.

  In Ruby it’s easy to define a variable and set a value to it. Imagine you want to store the number 1 in a variable called one. Let’s do it!",
  address: 'Melbourne'

)
post_2.save

post_3 = Post.create(
  user_id: '4',
  category_id: '3',
  title: 'How to Easily Build Desktop Apps with HTML, CSS and Javascript',
  summary: 'in this lesson we will be focussing mainly on how Electron can be used to create desktop applications with Web Technologies like HTML, CSS and Javascript.',

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
  ",
  address: 'Melbourne'
)
post_3.save

post_4 = Post.create(
  user_id: '4',
  category_id: '4',
  title: 'Learn CSS Grid',
  summary: 'The module has also gotten native support by the major browsers Safari, Chrome, Firefox, Edge this year, so I believe that all front-end developer will have to learn this technology in the not too distant future.',
  content: "
  In this article, I’ll take you through the very basics of CSS Grid as quickly as possible. I’ll be leaving out everything you shouldn’t care about until you’ve understood the basics.

  I’ve also created a free CSS Grid course. Click here to get full access to it.

  Alternatively, check out this article, which explains what you’ll learn throughout the course:

  Want to learn CSS Grid? Here’s my free full-length course. Merry Christmas!

  13 interactive screencasts to take you from beginner to advanced.
  medium.freecodecamp.org
  Now let’s jump into it!",
  address: "Melbourne"

)
post_4.save

post_5 = Post.create(
  user_id: '4',
  category_id: '5',
  title: 'Learn Python for Data Science',
  summary: 'The module has also gotten native support by the major browsers Safari, Chrome, Firefox, Edge this year, so I believe that all front-end developer will have to learn this technology in the not too distant future.',
  content: "
  In this article, I’ll take you through the very basics of CSS Grid as quickly as possible. I’ll be leaving out everything you shouldn’t care about until you’ve understood the basics.

  I’ve also created a free CSS Grid course. Click here to get full access to it.

  Alternatively, check out this article, which explains what you’ll learn throughout the course:

  Want to learn CSS Grid? Here’s my free full-length course. Merry Christmas!

  13 interactive screencasts to take you from beginner to advanced.
  medium.freecodecamp.org
  Now let’s jump into it!",
  address: "Melbourne"
)
post_5.save

post_6 = Post.create(
  user_id: '4',
  category_id: '5',
  title: 'Learn Python 5 minutes a day',
  summary: 'The module has also gotten native support by the major browsers Safari, Chrome, Firefox, Edge this year, so I believe that all front-end developer will have to learn this technology in the not too distant future.',
  content: "
  In this article, I’ll take you through the very basics of CSS Grid as quickly as possible. I’ll be leaving out everything you shouldn’t care about until you’ve understood the basics.

  I’ve also created a free CSS Grid course. Click here to get full access to it.

  Alternatively, check out this article, which explains what you’ll learn throughout the course:

  Want to learn CSS Grid? Here’s my free full-length course. Merry Christmas!

  13 interactive screencasts to take you from beginner to advanced.
  medium.freecodecamp.org
  Now let’s jump into it!",
  address: "Melbourne"

)
post_6.save

post_7 = Post.create(
  user_id: '4',
  category_id: '6',
  title: 'Learn JavaScript 5 minutes a day',
  summary: 'The module has also gotten native support by the major browsers Safari, Chrome, Firefox, Edge this year, so I believe that all front-end developer will have to learn this technology in the not too distant future.',
  content: "
  In this article, I’ll take you through the very basics of CSS Grid as quickly as possible. I’ll be leaving out everything you shouldn’t care about until you’ve understood the basics.

  I’ve also created a free CSS Grid course. Click here to get full access to it.

  Alternatively, check out this article, which explains what you’ll learn throughout the course:

  Want to learn CSS Grid? Here’s my free full-length course. Merry Christmas!

  13 interactive screencasts to take you from beginner to advanced.
  medium.freecodecamp.org
  Now let’s jump into it!",
  address: "Melbourne"
  
)
post_7.save

post_8 = Post.create(
  user_id: '4',
  category_id: '6',
  title: 'JavaScript basics',
  summary: 'The module has also gotten native support by the major browsers Safari, Chrome, Firefox, Edge this year, so I believe that all front-end developer will have to learn this technology in the not too distant future.',
  content: "
  In this article, I’ll take you through the very basics of CSS Grid as quickly as possible. I’ll be leaving out everything you shouldn’t care about until you’ve understood the basics.

  I’ve also created a free CSS Grid course. Click here to get full access to it.

  Alternatively, check out this article, which explains what you’ll learn throughout the course:

  Want to learn CSS Grid? Here’s my free full-length course. Merry Christmas!

  13 interactive screencasts to take you from beginner to advanced.
  medium.freecodecamp.org
  Now let’s jump into it!",
  address: "Melbourne"
)
post_8.save

post_9 = Post.create(
  user_id: '4',
  category_id: '7',
  title: 'Fortran for the busy developer',
  summary: 'The module has also gotten native support by the major browsers Safari, Chrome, Firefox, Edge this year, so I believe that all front-end developer will have to learn this technology in the not too distant future.',
  content: "
  In this article, I’ll take you through the very basics of CSS Grid as quickly as possible. I’ll be leaving out everything you shouldn’t care about until you’ve understood the basics.

  I’ve also created a free CSS Grid course. Click here to get full access to it.

  Alternatively, check out this article, which explains what you’ll learn throughout the course:

  Want to learn CSS Grid? Here’s my free full-length course. Merry Christmas!

  13 interactive screencasts to take you from beginner to advanced.
  medium.freecodecamp.org
  Now let’s jump into it!",
  address: "Melbourne",
  latitude: "37.8136",
  longitude: "144.9631"

)
post_9.save


post_11 = Post.create(
  user_id: '4',
  category_id: '6',
  title: 'How it feels to learn JavaScript in 2019',
  summary: 'No JavaScript frameworks were created during the writing of this article.
  The following is inspired by the article “It’s the future” from Circle CI. You can read the original here. This piece is just an opinion, and like any JavaScript framework, it shouldn’t be taken too seriously.',
  content: "Hey, I got this new web project, but to be honest I haven’t coded much web in a few years and I’ve heard the landscape changed a bit. You are the most up-to date web dev around here right?

  -The actual term is Front End engineer, but yeah, I’m the right guy. I do web in 2016. Visualisations, music players, flying drones that play football, you name it. I just came back from JsConf and ReactConf, so I know the latest technologies to create web apps.
  
  Cool. I need to create a page that displays the latest activity from the users, so I just need to get the data from the REST endpoint and display it in some sort of filterable table, and update it if anything changes in the server. I was thinking maybe using jQuery to fetch and display the data?
  
  -Oh my god no, no one uses jQuery anymore. You should try learning React, it’s 2016.
  
  Oh, OK. What’s React?
  
  -It’s a super cool library made by some guys at Facebook, it really brings control and performance to your application, by allowing you to handle any view changes very easily.
  
  That sounds neat. Can I use React to display data from the server?
  
  -Yeah, but first you need to add React and React DOM as a library in your webpage.
  
  Wait, why two libraries?
  
  -So one is the actual library and the second one is for manipulating the DOM, which now you can describe in JSX.
  
  JSX? What is JSX?
  
  -JSX is just a JavaScript syntax extension that looks pretty much like XML. It’s kind of another way to describe the DOM, think of it as a better HTML.
  
  What’s wrong with HTML?
  
  -It’s 2016. No one codes HTML directly anymore.
  
  Right. Anyway, if I add these two libraries then I can use React?
  
  -Not quite. You need to add Babel, and then you are able to use React.
  
  Another library? What’s Babel?
  
  -Oh, Babel is a transpiler that allows you to target specific versions of JavaScript, while you code in any version of JavaScript. You don’t HAVE to include Babel to use ReactJS, but unless you do, you are stuck with using ES5, and let’s be real, it’s 2016, you should be coding in ES2016+ like the rest of the cool kids do.
  
  ES5? ES2016+? I’m getting lost over here. What’s ES5 and ES2016+?
  
  -ES5 stands for ECMAScript 5. It’s the edition that has most people target since it has been implemented by most browsers nowadays.
  
  ECMAScript?
  
  -Yes, you know, the scripting standard JavaScript was based on in 1999 after its initial release in 1995, back then when JavaScript was named Livescript and only ran in the Netscape Navigator. That was very messy back then, but thankfully now things are very clear and we have, like, 7 editions of this implementation.
  
  7 editions. For real. And ES5 and ES2016+ are?
  
  -The fifth and seventh edition respectively.
  
  Wait, what happened with the sixth?
  
  -You mean ES6? Yeah, I mean, each edition is a superset of the previous one, so if you are using ES2016+, you are using all the features of the previous versions.
  
  Right. And why use ES2016+ over ES6 then?
  
  -Well, you COULD use ES6, but to use cool features like async and await, you need to use ES2016+. Otherwise you are stuck with ES6 generators with coroutines to block asynchronous calls for proper control flow.
  
  I have no idea what you just said, and all these names are confusing. Look, I’m just loading a bunch of data from a server, I used to be able to just include jQuery from a CDN and just get the data with AJAX calls, why can’t I just do that?
  
  -It’s 2016 man, no one uses jQuery anymore, it ends up in a bunch of spaghetti code. Everyone knows that.
  
  Right. So my alternative is to load three libraries to fetch data and display a HTML table.
  
  -Well, you include those three libraries but bundle them up with a module manager to load only one file.
  
  I see. And what’s a module manager?
  
  -The definition depends on the environment, but in the web we usually mean anything that supports AMD or CommonJS modules.
  
  Riiight. And AMD and CommonJS are…?
  
  -Definitions. There are ways to describe how multiple JavaScript libraries and classes should interact. You know, exports and requires? You can write multiple JavaScript files defining the AMD or CommonJS API and you can use something like Browserify to bundle them up.
  
  OK, that makes sense… I think. What is Browserify?
  
  -It’s a tool that allows you to bundle CommonJS described dependencies to files that can be run in the browser. It was created because most people publish those dependencies in the npm registry.
  
  npm registry?
  
  -It’s a very big public repository where smart people put code and dependencies as modules.
  
  Like a CDN?
  
  -Not really. It’s more like a centralised database where anyone can publish and download libraries, so you can use them locally for development and then upload them to a CDN if you want to.
  
  Oh, like Bower!
  
  -Yes, but it’s 2016 now, no one uses Bower anymore.
  
  Oh, I see… so I need to download the libraries from npm then?
  
  -Yes. So for instance, if you want to use React , you download the React module and import it in your code. You can do that for almost every popular JavaScript library.
  
  Oh, like Angular!
  
  -Angular is so 2015. But yes. Angular would be there, alongside VueJS or RxJS and other cool 2016 libraries. Want to learn about those?
  
  Let’s stick with React, I’m already learning too many things now. So, if I need to use React I fetch it from this npm and then use this Browserify thing?
  
  -Yes.
  
  That seems overly complicated to just grab a bunch of dependencies and tie them together.
  
  -It is, that’s why you use a task manager like Grunt or Gulp or Broccoli to automate running Browserify. Heck, you can even use Mimosa.
  
  Grunt? Gulp? Broccoli? Mimosa? The heck are we talking about now?
  
  -Task managers. But they are not cool anymore. We used them in like, 2015, then we used Makefiles, but now we wrap everything with Webpack.
  
  Makefiles? I thought that was mostly used on C or C++ projects.
  
  -Yeah, but apparently in the web we love making things complicated and then going back to the basics. We do that every year or so, just wait for it, we are going to do assembly in the web in a year or two.
  
  Sigh. You mentioned something called Webpack?
  
  -It’s another module manager for the browser while being kind of a task runner as well. It’s like a better version of Browserify.
  
  Oh, Ok. Why is it better?
  
  -Well, maybe not better, it’s just more opinionated on how your dependencies should be tied. Webpack allows you to use different module managers, and not only CommonJS ones, so for instance native ES6 supported modules.
  
  I’m extremely confused by this whole CommonJS/ES6 thing.
  
  -Everyone is, but you shouldn’t care anymore with SystemJS.
  
  Jesus christ, another noun-js. Ok, and what is this SystemJS?
  
  -Well, unlike Browserify and Webpack 1.x, SystemJS is a dynamic module loader that allows you to tie multiple modules in multiple files instead of bundling them in one big file.
  
  Wait, but I thought we wanted to build our libraries in one big file and load that!
  
  -Yes, but because HTTP/2 is coming now multiple HTTP requests are actually better.
  
  Wait, so can’t we just add the three original libraries for React??
  
  -Not really. I mean, you could add them as external scripts from a CDN, but you would still need to include Babel then.",
  address: "Melbourne",
  latitude: "37.8136",
  longitude: "144.9631"

)
post_11.save

post_12 = Post.create(
  user_id: '4',
  category_id: '6',
  title: '10 Interview Questions
  Every JavaScript Developer Should Know',
  summary: 'At most companies, management must trust the developers to give technical interviews in order to assess candidate skills. If you do well as a candidate, you’ll eventually need to interview. Here’s how.',
  content: "
  In this article, I’ll take you through the very basics of CSS Grid as quickly as possible. I’ll be leaving out everything you shouldn’t care about until you’ve understood the basics.

  I’ve also created a free CSS Grid course. Click here to get full access to it.

  Alternatively, check out this article, which explains what you’ll learn throughout the course:

  Want to learn CSS Grid? Here’s my free full-length course. Merry Christmas!

  13 interactive screencasts to take you from beginner to advanced.
  medium.freecodecamp.org
  Now let’s jump into it!",
  address: "Melbourne",
  latitude: "37.8136",
  longitude: "144.9631"

)
post_12.save