# frozen_string_literal: true

require 'yaml'

config = YAML.safe_load File.read('_config.yml')

source ENV.fetch('GEMS_SOURCE', 'https://gems.sutty.nl')

gem 'jekyll', '~> 4.2.0'
gem config['theme']

config['plugins'].each do |plugin|
  gem plugin
end

group :development do
  gem 'pry'
  gem 'rubocop-jekyll'
end

group :jekyll_plugins do
  gem 'jekyll-activity-pub', require: 'jekyll/activity_pub/commands'
end
