# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )


# Rails.application.config.assets.precompile += %w( home/index.css )
Rails.application.config.assets.precompile += %w( home/index.min.css )
# Rails.application.config.assets.precompile += %w( home/index.js )
Rails.application.config.assets.precompile += %w( home/index.min.js )


Rails.application.config.assets.precompile += %w( publications/index.css )
Rails.application.config.assets.precompile += %w( publications/show.css )


Rails.application.config.assets.precompile += %w( about/index.css )
Rails.application.config.assets.precompile += %w( about/index.js )
Rails.application.config.assets.precompile += %w( about/game.css )


# Rails.application.config.assets.precompile += %w( doubts/index.css )
Rails.application.config.assets.precompile += %w( doubts/index.min.css )
# Rails.application.config.assets.precompile += %w( doubts/index.js )
Rails.application.config.assets.precompile += %w( doubts/index.min.js )


Rails.application.config.assets.precompile += %w( institutes/index.css )


# Rails.application.config.assets.precompile += %w( bootstrap/bootstrap.css )
Rails.application.config.assets.precompile += %w( bootstrap/bootstrap.min.css )
Rails.application.config.assets.precompile += %w( bootstrap/bootstrap.bundle.min.js )
# Rails.application.config.assets.precompile += %w( bootstrap/bootstrap.js )
# Rails.application.config.assets.precompile += %w( bootstrap/bootstrap.min.js )


Rails.application.config.assets.precompile += %w( jquery/jquery.min.js )


Rails.application.config.assets.precompile += %w( jquery-easing/jquery.easing.min.js )