# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_pharmacy_session',
  :secret      => '4c338f6594e67d158b44bafe25e8f9fd42157fa3283922515a7f05a6696884c7cfe7498f96f2c87730a7c2a401f84875848f53b12fffab2cedc825c5118425ef'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
