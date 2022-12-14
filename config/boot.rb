ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../Gemfile', __dir__)

# require "dotenv"
# Dotenv.load(".env", ".env.#{ENV["APP_ENV"]}")

require "bundler/setup" # Set up gems listed in the Gemfile.
require "bootsnap/setup" # Speed up boot time by caching expensive operations.
