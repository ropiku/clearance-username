# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_clearance_username_session',
  :secret      => '92d19967f03c4040706246717542f8687c78a2ba0b0c09a0092de553d19918f92c79f30962c215fa25f5ea1a24eef9f0ae77478236203898e095d01dfa4a478d'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
