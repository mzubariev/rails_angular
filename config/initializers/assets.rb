Rails.application.config.assets.version = '1.0'

Rails.application.config.assets.precompile += %w(manifest_header.js manifest_footer.js)
Rails.application.config.assets.initialize_on_precompile = true