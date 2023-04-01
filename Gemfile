# frozen_string_literal: true

require 'yaml'

config = YAML.safe_load_file '_config.yml'

source ENV.fetch('GEMS_SOURCE', 'https://gems.sutty.nl')

gem 'jekyll', '~> 4.2.0'
gem 'sutty-jekyll-theme'

config['plugins'].each do |plugin|
  gem plugin
end

group :development do
  gem 'pry'
  gem 'rubocop-jekyll'
end
