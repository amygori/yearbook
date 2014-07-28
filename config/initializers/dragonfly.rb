require 'dragonfly'
require 'dragonfly/s3_data_store'
#require 'dragonfly/dropbox_data_store'

# Configure
Dragonfly.app.configure do
  plugin :imagemagick

  protect_from_dos_attacks true
  secret "3204796a8c63dd2adef4c33e6509b1c974d393db3c88002a5c70c9b7815a18e4"

  url_host "http://localhost:3000"
  url_format "/media/:job/:name"
  # remote_url_for(:s3)
  #datastore :file,
    #root_path: Rails.root.join('public/system/dragonfly', Rails.env),
    #server_root: Rails.root.join('public')

  datastore :s3,
    bucket_name: 'tiy_yearbook',
    access_key_id: 'AKIAIS5AYCMA5ATS4K7A',
    secret_access_key: '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'

  #datastore :dropbox,
        #app_key:              ENV['DROPBOX_APP_KEY'],
        #app_secret:           ENV['DROPBOX_APP_SECRET'],
        #access_token:         ENV['DROPBOX_ACCESS_TOKEN'],
        #access_token_secret:  ENV['DROPBOX_ACCESS_TOKEN_SECRET'],
        #user_id:              ENV['DROPBOX_USER_ID'],     
        #root_path:            Rails.env # optional
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
