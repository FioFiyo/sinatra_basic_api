# frozen_string_literal: true

source "https://rubygems.org"

# Ruby Version
ruby '2.6.0'

gem 'sinatra'
gem 'json'
gem 'sinatra-jsonp'
# ORM to interact with db
gem 'activerecord'
gem 'require_all'

# Active record helpers
gem 'sinatra-activerecord'
gem 'rake' #mostly for activerecord tasks


group :development, :test do
	gem 'shotgun'
	gem 'thin'
	gem 'sqlite3'
end

group :production do
	# Postgres DB interface
	#gem 'pg'
end