<p align="center">
  <img width="1050" height="250" src=images/cube.png></p>
  
<h1 align="center"> 
Teaching to Learn
</h1>

## Knowledge Shared is Power Multiplied
----
## About Teaching2Learn
Brad write something interesting here
- - - 
https://afternoon-eyrie-61635.herokuapp.com/
- - -
## T2L Features
* _Donations_: User's have the option to donate to a peer teacher if they appreciate their work.
* _Category_: User's may filter posts by coding languages they are interested in eg; Ruby, Javascript, Fortran.
* _User Profile_: Allows User's to change their avatar, username, email, password.
* _Devise Authentication_: Allows users to create new accounts.

![T2L](https://i.imgur.com/whmqBe4.jpg)

## Contributors
* Bradley Jake Richardson
* Tony Xu

## Contents
- **[Concept](#Concept)**
    - **[Challenge](#Challenge)**
    - **[Problem](#Problem)**
    - **[Solution](#Solution)**
- **[Application](#Application)**
    - **[Network Infrastructure](#Network-Infrastructure)**
    - **[Software](#Software)**
    - **[Architecture](#Architecture)**
    - **[Components](#Components)**
    - **[Third Party Services](#Third-Party-Services)**
- **[Database](#Database)**
    - **[Database Justification](#Database-Justification)**
    - **[Production Database](#Production-Database)**
    - **[Market Research](#Market-Research)**
    - **[Database Relations](#Database-Relations)**
    - **[Entity Relationship Diagram](#Entity-Relationship-Diagram)** 
- **[Project Management](#Project-Management)**
    - **[Inspiration](#Inspiration)**
    - **[User Stories](#User-Stories)**
    - **[Wireframes](#Wireframes)**
    - **[Task Management](#Task-Management)**
    - **[Agile Methodologies](#Agile-Methodologies)**
    - **[Source Control](#Source-Control)**
    - **[Deployment](#Deployment)**
    - **[UX/UI](#UX-UI)**
- **[Testing and Information Security](#Testing-and-Information-Security)**
    - **[Testing](#Testing)**
    - **[Information Security Requirements](#Information-Security-Requirements)**
    - **[Information Security Methodologies](#Information-Security-Methodologies)**
    - **[User Data Management](#User-Data-Management)**
- **[Minimum Viable Product](#Minimum-Viable-Product)**
    - **[Challenges](#Challenges)**
    - **[Future Enhancements](#Future-Enhancements)**
    - **[The Pitch](#The-Pitch)**
- **[Conclusion](#Conclusion)**

## <a id="Concept"></a>Concept
### <a id="Challenge"></a>Challenge
*What is the need (i.e. challenge) that you will be addressing in your project?*

Technology has revolutionized modern society, we are in an era where you can control the temperature of your cooking from anywhere your smartphone has a connection, to having a voice controlled AI turning on household appliances. A decade ago, self-driving cars were merely a dream. Today they are being created and tested by leading car manufacturers around the world. 
With all these advances in technology lay the visionaries behind these fascinating tools. Coders.
Coding is impacting the future of technology and the future of our lives in ways we are only just beginning to understand.
As we are in the midst of a transitioning to a fully digital world many people are intrigued by the the wonders that allow technology to work.
This is where ‘Teaching2Learn’ comes in.

### <a id="Problem"></a>Problem

*Identify the problem you’re trying to solve by building this particular marketplace App? Why is it a problem that needs solving?*

The internet has created an ease of access to the insight of the world, free knowledge of anything you are interested is but a click away. With all this knowledge, many people have began to research and study their passion, for us it’s coding.
Self-learning is very different to attending school. There is no one around you when you are coding. There are no classmates, there are no social interactions, you cannot find that “grand ceremony” waiting for you at the end of the tunnel. Most of the time you do it alone. And most of the time, you are alone.
Coding is not a simple task to learn. It is mentally taxing and there are times you find yourself copy pasting snippets of code but have no understanding to the intricacies of why it works.
‘Teaching 2 Learn’ solves many if not all of these issues that people come across.
We provide a free peer to peer learning network, creating a fantastic atmosphere where the student receives more time for individualized learning, a direct interaction which promotes active learning while the peer teacher reinforces their own learning by instructing others.

### <a id="Solution"></a>Solution
*Describe the project will you be conducting and how. your App will address the needs.*

Teach2Learn can be seen as a lesson board. Anyone that makes an account can advertise a lesson. A lesson that will be based on technologies the developer has just used. Any other registered user can email the teacher in order to organise a time for the lesson to take place.
The app will provide a platform that connect mentors to students. Allowing them to both gain knowledge from the interaction. 
Teaching someone anything creates deep connections in your own understanding of the learnt/taught concept. Think about that last public presentation you did, woah you remember a lot right? Teach2Learn exploits the mechanisms behind this and thus two distinct groups benefit from the interaction and exchange of information. 
While simultaneously experiencing some social interaction. Which we all know is critical to overall health. 

## <a id="Application"></a>Application
### <a id="Network-Infrastructure"></a>Network Infrastructure

*Describe the network infrastructure the App may be based on.*

The application utilizes pre-existing network infrastructure. We don't have to worry about things such as routers, switches and cables. Our app uses what is already there.
Hosting infrastructure 
Puma server for local hosting 
Heroku for production hosting 
The Heroku hosting uses containers called “dynos” these dynos are containers that allow for simple hosting that abstracts things away from the developer. Allowing for easy deployment and enables scalability. 
Though if the app was to become popularized in the future, we would need to look into scalability of our server system due to the increased number of traffic needing to be handled.
One option we could look at would be Horizontal Scaling, which converts the single server architecture of the application to become multiple-tiers. Whereby the application and database instances are located on different servers, allowing equal allocation and smaller workloads amongst the machines.

### <a id="Software"></a>Software
*Identify and describe the software to be used in your App.*

#### Code editor
* _VScode_: Source-code editor, a code editor redefined and optimized for building and debugging modern web and cloud applications.

#### Programming languages 
* _Ruby_: Dynamic, object-orientated general purpose programming language 
* _HTML_: Markup language that is interpreted by the browser
* _CSS_: The style sheet language used to specify the presentation of web pages and web applications written in markup languages like HTML such as layouts, colours and fonts.
Frameworks 
* _Ruby on Rails_: MVC framework, provides structure for building an application.
* _Bootstrap_: CSS framework, has pre built classes, rapid development.
Jquery: JS framework, has pre built components. 
Services
* _AWS_: Amazon Web Services S3 provides hosting for images.
* _Mailgun_: Transactional Email APIs that enable you to send, receive, and track emails.
* _Heroku_: Cloud hosting platform, enables deployment to production.
* _Google Maps API_: Google maps, allows us to add an interactive map to the application.

### <a id="Architecture"></a>Architecture
*Identify the database to be used in your App and provide a justification for your choice.*

Postgres will be used in both development and production. As we will be deploying to heroku this made the most sense. In preparation for a hassle free deployment we made the decision to use Postgres in both development and production. PostgreSQL was also chosen due to being a relational database management system. One of the benefits of this database is that it conforms to the SQL standard, furthermore as these databases are more common there are more options and more documentation. A disadvantage of the RDMS can be seen as lack of direct interpretation from OOP languages. 

### <a id="Components"></a>Components
*Identify and describe the production database setup (i.e. postgres instance).*

The production database will be postgresSQL. We have also chosen to use this in development as well to allow smooth deployment to production. Querying the database is abstracted away due to the ActiveRecord class. Therefore we interact with the Active Record Query Interface using the ruby programming language.

“PostgreSQL is an open-source relational database management system emphasizing extensibility and standards compliance” (wikipedia) 

### <a id="Third-Party-Services"></a>Third Party Services
*Describe the architecture of your App.*

Landing page, this greets the user and is what everyone sees when first visiting Teach-2-Learn.  When attempting to visit the landing page the browser calls the DNS resolver this asks for the IP of the URL. The browser then initiates a TCP/IP connection with the webserver. The webserver then serves the HTML via HTTP.

#### What occurs 
---

The controller interprets user input and does something then display a view.
The model speaks to the database reading and writing data. 

*MODELS*

“Maintains the relationship between Object and Database and handles validation, association, transactions”

*CONTROLLERS*

“The facility within the application that directs traffic, on the one hand querying the models for specific data, and on the other hand organizing that data (searching, sorting) into a form that fits the needs of a given view.”
In hindsight upon looking at the controller we wrote. They are not the current way to go about structuring the application. As a lot of the logic and processors where lazily just kept in the controller rather than passing them out to a separate module.

*VIEWS*

“A presentation of data in a particular format, triggered by a controller’s decision to present the ![Rails](https://cdn-images-1.medium.com/max/2000/1*KK61kGXrkaFBDfY7uWukyQ.png)

### <a id="Database"></a>Database
#### <a id="Database-Justification"></a>Database Justification
*Explain the different high-level components (abstractions) in your App.*

* _ActiveRecord_ - can be seen as the M in MVC. It deals with communication to the database. ActiveRecord is an abstraction of SQL (a database querying language). This is one high-level component that abstracts away the need to write SQL queries to talk to the database. 
* _Ruby_ - is a high level programming language that compiles down to C. The language C then compiles down to binary. Which is interpreted by computers. This abstraction allows the programmer to write more code with less effort and also improves the experience. It takes away the nuances of syntax allowing the language to be more english-like.
* _Devise_ - Devise is a GEM that is commonly used for authentication and managing user sessions. It abstracts ALOT away and can be seen as a more secure way as no mistake can be made. Devise abstracts away writing a lot of ruby methods to cover things such as encryption and session management. 
* _Rails_ - Abstracts away everything. Rails is a framework that has so many built in methods and functionality that allow for rapid software development. It not only abstracts away ruby methods, for example the link_to helper is an abstraction from HTML. It allows the developer to focus on more specific features of applications and abstracts away the scaffolding. 

#### <a id="Production-Database"></a>Production Database
*Detail any third party services that your App will use.*

* _AWS_: Amazon Web Services S3 provides hosting for images, will be used to allow users to attach a profile image to their profile and also to attach an image to a post. 
* _Mailgun_: Transactional Email APIs that enable you to send, receive, and track emails, in our application it will enable a user to connect with another user who was the author of the lesson. 
* _Heroku_: Cloud hosting platform, enables deployment to production. In our application heroku was used to deploy the application to production. 
* _Google Maps API_: Google maps, allows us to add an interactive map to the application. 
Facebook, Github, Google Authorization: Allows for login with such platforms, was used as every modern application has this feature. 

#### <a id="Market-Research"></a>Market Research
*Describe (in general terms) the data structure of marketplace apps that are similar to your own (e.g. eBay, Airbnb).*

Two-sided marketplaces such as Airbnb, Ebay, Uber, our app ‘Teaching2Learn’ all operate under similar data structures (SQL tables) using models for users (which the user may act as both a buyer or seller).  In our case the user would be able to be the poster(peer teacher) or customer (student).

#### <a id="Database-Relations"></a>Database Relations
*Discuss the database relations to be implemented.*

In SQL, database relations describe the way in which tables (represented in Rails as models through PostgreSQL) are connected. By defining these relationships, we can leverage powerful cross-table queries, either by specifying foreign key pairings (by pairing a unique ID reference from each table to create the relationship) and/or using join tables (tables which combine columns from two separate tables), depending on the type of database relationship.
There are three main types of database relationships, named according to the number of table rows that may be involved in the relationships:
* _One-to-one relationships_: Using a foreign key matched to the primary key, occurs when each entry in a table has one, and only one, counterpart in the second table.
* _One-to-many-relationships_: Using a foreign key matched to the primary key, occurs when each record in the first table corresponds to one or more records in another table, but each record in the second table only corresponds to one record in the first.
* _Many-to-many relationships_: Using a join table, occurs when each record in the first table corresponds to one or more records in the second and vice versa.
In Rails, these relationships are defined as associations between two Active Record models. By creating these associations, common operations are simpler and easier to code. Rails supports six types of associations:
```
belongs_to
has_one
has_many
has_many :through
has_one :through
has_and_belongs_to_many
```

*Describe your project’s models in terms of the relationships (active record associations) they have with each other.*

**Category**
```
has_many :posts
```

**User**
```
has_many :posts
belongs_to :user
```
**Comment**
```
belongs_to :post
belongs_to :user
```
**Post**
```
belongs_to :user
belongs_to :category
has_one_attached :image
has_many :comments, dependent :destroy
```

#### <a id="Entity-Relationship-Diagram"></a>Entity Relationship Diagram
*Provide your database schema design.*
![wireframes](https://i.imgur.com/hi9FJuE.png)

## <a id="Project-Management"></a>Project Management
### <a id="Inspiration"></a>Inspiration

“User stories are simple, yet extremely powerful constructs: they describe pieces of functionality from a user’s point of view, expressed in a solid, compact way.”
* _“As a Mentor, I want to make posts so that I can learn by teaching someone”_
* _“As a student, I want to be able to find a lesson so that I can learn and socialise”_

### <a id="Wireframes"></a>Wireframes
*Provide Wireframes for your App.*


### <a id="Task-Management"></a>Task Management
*Describe the way tasks are allocated and tracked in your project.*

For task management and tracking we are using the trello web app. In our workflow there are three stages todo, doing and done. Each morning before the standup meeting we discussed the objectives for the day, made new cards and moved old cards. 
Alongside trello we used 
* _Slack_: Slack is an instant messaging application and was utilised by our team to communicate outside of hours, or just even while in different classrooms. 
* _Google docs_: This was used to write this readme, it allows for multiple people to work on the same document. In earlier stages it was used to take notes and write up what the application was about. 

### <a id="Agile-Methodologies"></a>Agile Methodologies
*Discuss how Agile methodology is being implemented in your project.*

We attended a stand-up meeting every morning at 10:30 
requirements and solutions evolve through the collaborative effort of self-organizing and cross-functional teams
We attended a standup meeting every morning and discuss what we were working on yesterday, what we plan to work on today and also what blockers we have been having that last day or that we see to be a blocker for a day. 
The use of trello can be seen as an agile technique. Small tasks that are picked by the team member to be completed. Once started the task is moved from to-do to doing and then upon completion the task is put into the completed column.

### <a id="Source-Control"></a>Coding & Source Control
*Provide an overview and description of your Source control process.*

In this project we are collaborating using git and GitHub. Our source control progress is branching off from the master, working on a feature, pushing that branch up to be merged and then merging that branch. We chose to enable the team to merge their own branches. We figured if we be careful this allows us to work on features and not rely on the other team member in order to merge.
Writing this now the project is said and done. Reflecting our source control process worked smoothly. We had no issues after the first few days.

### <a id="Deployment"></a>Deployment
*Provide an overview and description of your Testing process.*

Manual testing was practiced at regular intervals when deployed to heroku to ensure complete functionality. Many roadblocks were encountered when deploying to heroku but were resolved upon analysis of the heroku logs. Manual testing proved to be effective and not too time consuming in our project. 
Tests were attempted to be written in Mini:test. Some tests where written and then the transition to the RSPEC testing framework was undertaken. During this transition writing a significant amount of tests was abandoned due to time constraints. 
The benefits of automated testing are obvious and given more time and familiarity with testing we’d have implemented TDD

## <a id="Testing-and-Information-Security"></a>Testing and Information Security
### <a id="Testing"></a>Testing
*Discuss and analyse requirements related to information system security.*

Information systems security is the process of protecting information (data) from unauthorized access, use, disclosure, disruption, modification, or destruction.

Having an application that stores any user information into a database is a security concern. It is a requirement that preventative measure such as not storing passwords in plain text must be taken. Luckily the third party gem Devise handled a lot of the concerns that we have. 

Another aspect of Information security can be seen as permission, again a third part gem handled this for us. CanCanCan makes it so only admins or post owners can edit content. This ensures that information is not disrupted and people identities and reputations are maintained. 

### <a id="Information-Security-Requirements"></a>Information Security Requirements
*Discuss methods you will use to protect information and data.*

To protect information and data we used a few Ruby gems, this allowed the information such as emails/passwords/credit card details to be passed through a third party protected database.
Devise: Provides authentication for hashing and storing user data and adding user registration, log-in and log-out features to our application.

* _Stripe_: Payments are processed through Stripe (which has the highest grade of payment processing security) so that sensitive financial data (i.e. credit card information) is not stored by our application.
* _CANCANCAN_: A authorization library for Ruby >= 2.2.0 and Ruby on Rails >= 4.2 which restricts what resources a given user is allowed to access.

The developer’s data (API keys) will be either encoded in a credentials.yml file or will be link through the .ENV and added to the git ignore.

### <a id="User-Data-Management"></a>User Data Management
*Research what your legal obligations are in relation to handling user data.*

As legal obligations in relation to handling user data vary across different countries and jurisdictions, it is vital to check the laws and requirements for compliance. Legal obligations to consider in Australia include:
* _Cookie Policy_: Website requirements to get consent from visitors to store or retrieve any information on a computer, smartphone or tablet for tracking purposes.
* _Privacy Policy_: Disclosing the ways in which the a website gathers, uses, discloses and managers a visitor or customer's data and legal requirements to protect a user's privacy.
* _Legal Notice and Terms_: Outlining the terms on which users may make use of the website and the legal use of copyrighted or proprietary assets and information.



<h2 align="center"> 
Initial Planning
</h2>
<p align="center">
  <img width="250" height="250" src=docs/image.png>
</p>

<p align="center">
  <img width="250" height="250" src=docs/image.png>
</p>


<h2 align="center"> 
Slack Communications
</h2>
<p align="center">
  <img width="250" height="250" src=docs/image.png>
</p>


<h2 align="center"> 
Trello Use
</h2>
<p align="center">
  <img width="250" height="250" src=docs/image.png>
</p>

<p align="center">
  <img width="250" height="250" src=docs/image.png>
</p>
