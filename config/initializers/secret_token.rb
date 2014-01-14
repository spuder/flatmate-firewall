# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
FlatmateFirewall::Application.config.secret_key_base = 'eba984bb004371f3727c38ffda9cff3eaa4b82630ad57850568e2ee4bcff756bbadcdd2a7dcabecd8da5c07dd842b887e03da4ac21cc60850c9d611c6e77718a'
