require 'bundler/setup'
Bundler.require

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: "db/development.sqlite"
)

# Sqlite3.connect(':memory:')

ActiveRecord::Base.logger = nil

require_all 'app'
