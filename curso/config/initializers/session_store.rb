# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_curso_session',
  :secret      => '194f1f9b649707ae5a48a7b5775aa04323e77c43b5d8e0bdf3189e20b896fd2d7ce70aa48f3710bd028d0b1c2a91a2348a550af2b3063c14d1269e5dd2334c31'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
