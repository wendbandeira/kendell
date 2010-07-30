# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_kendell_session',
  :secret      => '616d70610305a4c9b36beb3144defe3af910adeac737bd4ff0df2457f3fd9184e016e31d1a2a65eb6bb1f0672496d372e84ec96147cdbe89cabae64c58f7249b'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
