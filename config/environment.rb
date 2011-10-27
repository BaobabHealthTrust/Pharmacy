# Be sure to restart your server when you modify this file

# Specifies gem version of Rails to use when vendor/rails is not present
RAILS_GEM_VERSION = '2.3.5' unless defined? RAILS_GEM_VERSION

# Bootstrap the Rails environment, frameworks, and default configuration
require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
  config.frameworks -= [ :action_web_service, :action_mailer, :active_resource ]
  config.log_level = :debug
  config.action_controller.session_store = :active_record_store
  config.active_record.schema_format = :sql
  # config.time_zone = 'UTC'
  
end

BART_SETTINGS = YAML.load_file(File.join(Rails.root, "config", "settings.yml"))[Rails.env] rescue nil

class Mime::Type
  delegate :split, :to => :to_s
end

# Foreign key checks use a lot of resources but are useful during development
ActiveRecord::Base.connection.execute("SET FOREIGN_KEY_CHECKS=0") if ENV['RAILS_ENV'] != 'development'
