# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'
Rails.application.config.assets.precompile += %w( footerMenu.js )
Rails.application.config.assets.precompile += %w( gameMenu.js )
Rails.application.config.assets.precompile += %w( game.js )
Rails.application.config.assets.precompile += %w( jquery.cookie.js )
Rails.application.config.assets.precompile += %w( photo.js )
Rails.application.config.assets.precompile += %w( static_pages.js )
Rails.application.config.assets.precompile += %w( custom.css )
Rails.application.config.assets.precompile += %w( application.css )
Rails.application.config.assets.precompile += %w( favicon.ico )
Rails.application.config.assets.precompile += %w( koala.js )
# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
