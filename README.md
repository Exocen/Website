[![Code Climate](https://codeclimate.com/github/Exocen/Website/badges/gpa.svg)](https://codeclimate.com/github/Exocen/Website) [![Build Status](https://travis-ci.org/Exocen/Website.svg?branch=master)](https://travis-ci.org/Exocen/Website)
[![Dependency Status](https://gemnasium.com/Exocen/Website.svg)](https://gemnasium.com/Exocen/Website)

WebSite sample on Ror
------------

A Website sample build with Ruby on Rails

Todo
* [x] Js depedencies
* [ ] Add [Image Map](https://github.com/vogievetsky/KoalasToTheMax) with [D3](https://github.com/mbostock/d3)
* [ ] Css + d3 Game
* [ ] Add github GPG 2
* [x] Video playlist
* [ ] Lsint game.js
* [x] Docker integration + https2 + https LetEncrypt on [Docker-rails](https://github.com/exocen/docker-rails)
* [ ] Https script-auto with CRON on [Docker-rails](https://github.com/exocen/docker-rails)
* [ ] Https on Random Kitten
* [ ] Tests
* [x] Docker unicorn + Nginx implementation
* [ ] Footer
* [ ] Parameters in database (like countdown)

---

Gems

```ruby
# Pagination
gem 'will_paginate'
# Pagination css
gem 'will_paginate-bootstrap'
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
