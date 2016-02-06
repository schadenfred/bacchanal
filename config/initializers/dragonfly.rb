require 'dragonfly'

# Configure
Dragonfly.app.configure do
  plugin :imagemagick

  secret "a2c355bce0bb43952e21dd44adc5c3a048e839af944ad27bb27ff6e4ac1fb10f"

  url_format "/media/:job/:name"
  if Rails.env.development? || Rails.env.test?
    datastore :file,
      root_path: Rails.root.join('public/system/dragonfly', Rails.env),
      server_root: Rails.root.join('public')
  else
    datastore :s3,
      bucket_name: "handsomefencer-assets",
      access_key_id: "AKIAJNEJQP363EDINKOQ",
      secret_access_key: "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"
  end

end

# Logger
Dragonfly.logger = Rails.logger

# Mount as middleware
Rails.application.middleware.use Dragonfly::Middleware

# Add model functionality
if defined?(ActiveRecord::Base)
  ActiveRecord::Base.extend Dragonfly::Model
  ActiveRecord::Base.extend Dragonfly::Model::Validations
end
