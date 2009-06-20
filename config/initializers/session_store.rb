# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_turismo_session',
  :secret      => '16db2ee8b0e09b13a4df0b12056eab768220ad33a73859a003ac04df65634d3fce48f9e6c64735181dbc40ea3697a6d54e63aa450a24f7982a8c21a713105b81'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
