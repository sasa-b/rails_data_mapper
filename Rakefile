# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative "config/application"

Rails.application.load_tasks

require 'rom/sql/rake_task'

# namespace :db do
#   task :setup do
#     ROM.env.gateways[:default].use_logger(Logger.new($stdout))
#   end
# end