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
http://curriculum.railsbridge.org/intro-to-rails/deploying_to_heroku
git push heroku master
to open the app: heroku open
to view logs: heroku logs --tail
to restart: heroku restart
* ...

### Setup in localhost ###

1. Install MySQL Server 5.7 (I encountered problems with 8.0)

2. Set the mysqld2 version in the Gemfile to '0.3.21' (I encountered problems with ewer version)

3. Set the db details in config/database.yml.

4. Install ruby 2.3 and appropriate devkit (I encountered problems with 2.5, because ysql connector is not available for it)

5. `gem install rails`

6. `bundle install`

7. `rails server`

8. `rails db:migrate`

9. `rake db:seed`
