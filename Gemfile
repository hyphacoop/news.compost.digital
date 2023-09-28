# frozen_string_literal: true

require 'yaml'

config = YAML.safe_load File.read('_config.yml')
early_plugins = config['early_plugins'].map { |p| p['gem'] }
plugins = config['plugins'] - early_plugins

source ENV.fetch('GEMS_SOURCE', 'https://gems.sutty.nl')

gem 'jekyll', '~> 4.2.0'
gem config['theme']

plugins.each do |plugin|
  gem plugin
end

group :development do
  gem 'pry'
  gem 'rubocop-jekyll'
end

group :jekyll_plugins do
  config['early_plugins'].each do |plugin|
    name = plugin.delete 'gem'

    gem name, **plugin.transform_keys(&:to_sym)
  end
end
