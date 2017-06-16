# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


rails generate scaffold Organizer name description:text
rails generate scaffold Event name organizer:references
rails generate scaffold Speaker first_name last_name birth_year:decimal
rails generate scaffold Session topic description:text event:references speaker:references 