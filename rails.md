# Rails Assessments

Try your best to answer each question on your own before looking up the answer online. Once you're done writing your first answer, you can google the question and write the best answer you find.

### 1. What are some advantages of using Ruby on Rails?
Rails framework is great for quick application development. It absorbs changes easily.
Its time-efficient. Rails contains many gems, plugins and modules which allow developers not to waste time.
Bug-free development. Rails encourages test driven development and behavior-driven development.
Convention over configuration is magic.
Rails includes 3 environments: production, development and testing. It means the entire software development cycle is optimized.
Rails is open source.

### 2. How does Ruby on Rails use the Model View Controller (MVC) framework?
The application has 3 interconnected layers.
Model has the logic of the application and manipulates the data.
Views are HTML files with embedded ruby code which determine how users interact with the application and how it presents the data to the users.
Controller communicates with models and views. It receives a request from the browser, works with models to process it and tells the view what and how to display to the user.

### 3. Using the information given, complete the steps for creating a new view in a rails app by filling in the blanks:
  1. Create a route:

  code:
  ```
  get '/about' => 'statics#about'
  ```
  file: config/routes

  2. Create a statics controller:

  code:
  ```
  class StaticsController < ApplicationController
    def about
    end
  end
  ```

  file: app/controllers/statics_controller.rb

  3. Create the View

  code:

  ```
  <div>This is the About page!</div>
  ```

  file: app/view/statics/about.html.erb
  
  
### 4. Look at these sets of Rails routes, they are an example of which principle/term that we touched on briefly in class? Find the term, and explain why it is important.
```
/users/       method="GET"     # :controller => 'users', :action => 'index'
(Shows all users from database)

/users/1      method="GET"     # :controller => 'users', :action => 'show'
(shows a user with a specific id nr (id nr 1) from the database)

/users/new    method="GET"     # :controller => 'users', :action => 'new'
(new action renders new user form)

/users/       method="POST"    # :controller => 'users', :action => 'create'
(creates a new user and saves it database)

/users/1/edit method="GET"     # :controller => 'users', :action => 'edit'
(edit action renders edit user form)

/users/1      method="PUT"     # :controller => 'users', :action => 'update'
(updates a user with a specific id nr (id nr 1) in database)

/users/1      method="DELETE"  # :controller => 'users', :action => 'destroy'
(removes the user with the specified id nr (id nr 1) from the database)
```
CRUD : create read update delete
In a REST environment CRUD corresponds to the HTTP methods POST, GET, PUT, DELETE
Create - POST
Read - GET
Update - PUT
Delete - DELETE

### 5. What is the public folder used for in Rails?
The public folder contains some of the common files for web applications. By default, HTML templates for HTTP errors, such as 404, 422 and 500, are generated along with a favicon and a robots.txt file.

### 6. Write a rails route for a controller called "main" and a page called "game" that takes in a parameter called "guess"
get '/game/:id' to: "main#show"

### 7. What are cookies for? How do they work? What is the difference between a session and a cookie?
Cookies are key-value data pairs that are stored in the users's browser until they reach their specified expiration date. They can be used for pretty much anything, most commonly to “bookmark” the user’s place in a web page or to store simple site display preferences. You could also store shopping cart information or even passwords but that would be a bad idea – you shouldn’t store anything in regular browser cookies that needs to either be secure or persisted across browser sessions. It’s too easy for users to clear their cache and/or steal/manipulate unsecured cookies.
Cookies and Sessions are used to store information. Cookies are only stored on the client-side machine, while sessions get stored on the client as well as a server.

A session creates a file in a temporary directory on the server where registered session variables and their values are stored. This data will be available to all pages on the site during that visit.
A session ends when the user closes the browser or after leaving the site, the server will terminate the session after a predetermined period of time, commonly 30 minutes duration.

### 8. In an html form, what does the "action" attribute tell you about the form?  How do you designate the HTTP verb for the form?
The action attribute specifies where to send the form-data when a form is submitted.
<form action="/actions" method="get">
...
</form>
GET or POST
GET is a default, submitted form data will be visible in the page address field.
Use POST if the form data contains sensitive or personal information. POST method does not display the submitted from data in the page address field.

### 9. Why would you use an instance variable in a rails controller?
Instance variables in controllers are for exposing content to views.

### 10. Name two rails generator commands and what files they create:
rails g model User: genertes a model User and a migration 
rails g resource User: generates User model User controller User routes and a migration

### 11. Rails has a great community and lots of free tutorials to help you learn. Here is a list of some tutorials to choose from, choose one, do it, and then report back here at least one thing you learned. You can also use a different resource if you find one that you like better. 

- https://www.tutorialspoint.com/ruby-on-rails/index.htm
- http://railsforzombies.org
- http://guides.rubyonrails.org/getting_started.html
