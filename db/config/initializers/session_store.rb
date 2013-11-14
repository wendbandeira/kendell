# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_db_session',
  :secret      => '750dcaa5de50207a1a9a41a84bf98b4847cd8cf2b28894644dafb118f7e5e59dddc0cf1a9210f2a9cfc762686930cde66d689907e1f82ea66e57bac62051a197'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
