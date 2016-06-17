[![Code Climate](https://codeclimate.com/github/Exocen/Website/badges/gpa.svg)](https://codeclimate.com/github/Exocen/Website) [![Build Status](https://travis-ci.org/Exocen/Website.svg?branch=master)](https://travis-ci.org/Exocen/Website)
[![Dependency Status](https://gemnasium.com/Exocen/Website.svg)](https://gemnasium.com/Exocen/Website)

WebSite sample on Ror
------------

A Website sample build with Ruby on Rails

Todo
* [x] Js depedencies
* [ ] Add [Image Map](https://github.com/vogievetsky/KoalasToTheMax) with [D3](https://github.com/mbostock/d3)
* [x] Css + d3 Game
* [ ] Add github GPG 2
* [x] Video playlist
* [x] Lsint game.js
* [x] Docker integration + https2 + https LetEncrypt on [Docker-rails](https://github.com/exocen/docker-rails)
* [ ] Https script-auto with CRON on [Docker-rails](https://github.com/exocen/docker-rails)
* [ ] Https on Random Kitten
* [ ] Tests
* [x] Docker unicorn + Nginx implementation
* [x] Video pagination
* [x] Better header (responsive)
* [ ] Footer
* [ ] CV Update (and alterable)
* [ ] Parameters in database (like countdown)
* [ ] Add an share photo service for users

---

Gems

```ruby
# Pagination
gem 'will_paginate'
# Pagination css
gem 'will_paginate-bootstrap'
# Nginx compatibility
gem 'unicorn'
# Jquery for rails
gem 'jquery-ui-rails'
# Js graphic librairy
gem 'd3-rails'
# Cookies for game
gem 'jquery-cookie-rails'
# Js countdown sample
gem 'flipclockjs-rails'
# Photos Dropzone
gem 'dropzonejs-rails'
# Postgrepsql compatibiliy
gem 'pg'
# Add carrousel
gem 'jquery-slick-rails'
# Paperclip database
gem "paperclip_database"
# Add paper-clip (pictures)
gem 'paperclip'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails'
# Use SCSS for stylesheets
gem 'sass-rails'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier'
# Bootstrap
gem 'bootstrap-sass'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster
gem 'turbolinks'
# Build JSON APIs with ease.
gem 'jbuilder'
# Bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', group: :doc
# Use ActiveModel has_secure_password
gem 'bcrypt'
```
