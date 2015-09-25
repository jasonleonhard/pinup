# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )

# gem frontend-generators Start Bootstrap Stylish Portfolio
  Rails.application.config.assets.precompile += %w( stylish_portfolio/manifest.css stylish_portfolio/manifest.js )
    # http://localhost:3000/stylish_portfolios/index
  Rails.application.config.assets.precompile += %w( creative/manifest.js creative/manifest.css )
    # http://localhost:3000/creatives/index
  
