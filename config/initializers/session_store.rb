# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_musicdb_session',
  :secret      => 'f8dbcebe17c32e11d57d867e46ca68ff510bf4cc6ef7c44f40d46c87f096e76e226986e6626347be077a11d31b8e48aa294c184bda672464c0bf35778d35c8de'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
