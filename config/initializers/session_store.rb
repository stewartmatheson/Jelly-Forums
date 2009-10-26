# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_jelly_forums_session',
  :secret      => '72e495c8cd199c59a447a1be685f77cd1ca79b40bbefe2cba8d3a326c94ace61905d6d2e8264ec2c90ac495a60ce0417ef0c5ddf526c7118a8a5c8ba1260a5a4'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
