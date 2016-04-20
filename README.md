[![Code Climate](https://codeclimate.com/github/Exocen/Website/badges/gpa.svg)](https://codeclimate.com/github/Exocen/Website) [![Build Status](https://travis-ci.org/Exocen/Website.svg?branch=master)](https://travis-ci.org/Exocen/Website)
[![Dependency Status](https://gemnasium.com/Exocen/Website.svg)](https://gemnasium.com/Exocen/Website)

WebSite sample on Ror
------------

A Website sample build with Ruby on Rails

Todo
* Js depedencies
* Add [Image Map](http://bl.ocks.org/nswamy14/df13d67b6efeb19eb640) with [D3](https://github.com/mbostock/d3)
* Css + d3 Game
* ~~Video playlist~~
* Lsint game.js
* ~~Docker integration + https2 + https LetEncrypt on [Docker-rails](https://github.com/exocen/docker-rails)~~
* Https script-auto with CRON on [Docker-rails](https://github.com/exocen/docker-rails)
* Https on Random Kitten
* Tests
* ~~Docker unicorn + Nginx implementation~~

---

Gems

```ruby
#Nginx compatibility
gem 'unicorn'
#Jquery for rails
gem 'jquery-ui-rails'
#Js graphic librairy
gem 'd3-rails'
#Cookies for game
gem 'jquery-cookie-rails'
#Js countdown sample
gem 'flipclockjs-rails'
#dropzone for photos
gem 'dropzonejs-rails'
#postgrepsql compatibiliy
gem 'pg'
#add carrousel
gem 'jquery-slick-rails'
# paperclip database
gem "paperclip_database"
#add paper-clip (pictures)
gem 'paperclip'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails'
# Use SCSS for stylesheets
gem 'sass-rails'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier'
```
