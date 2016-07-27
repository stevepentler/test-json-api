require_relative './boot'
require 'yaml'

namespace :db do
  task :connect do
    config = YAML.load_file(File.expand_path './config/database.yml', __dir__)
    ActiveRecord::Base.establish_connection config[ENV['RACK_ENV']]
  end

  task :migrate => :connect do
    ActiveRecord::Migrator.migrate('db/migrate', ENV["VERSION"] ? ENV["VERSION"].to_i : nil)
  end
end
