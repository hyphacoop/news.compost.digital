# frozen_string_literal: true

if ENV['JEKYLL_ENV'] == 'production'
  source 'https://gems.sutty.nl'
else
  source 'https://rubygems.org'
end

git_source(:github) { |repo_name| "https://github.com/#{repo_name}" }

gem 'jekyll', '~> 4'

group :jekyll_plugins do
  gem 'jekyll-brotli'
  gem 'jekyll-commonmark'
  gem 'jekyll-data'
  gem 'jekyll-drafts-as-metadata'
  gem 'jekyll-feed'
  gem 'jekyll-gzip'
  gem 'jekyll-hardlinks'
  gem 'jekyll-include-cache'
  gem 'jekyll-locales'
  gem 'jekyll-onion-location'
  gem 'jekyll-order'
  gem 'jekyll-purgecss',
      git: 'https://0xacab.org/sutty/jekyll/jekyll-purgecss.git'
  gem 'jekyll-relative-urls'
  gem 'jekyll-seo-tag'
  gem 'jekyll-sitemap'
  gem 'jekyll-turbolinks'
  gem 'sutty-archives'
end

group :jekyll_themes do
  gem 'adhesiones-jekyll-theme'
  gem 'editorial-autogestiva-jekyll-theme'
  gem 'minima'
  gem 'radios-comunitarias-jekyll-theme'
  gem 'share-to-fediverse-jekyll-theme'
  gem 'sutty-donaciones-jekyll-theme'
  gem 'sutty-jekyll-theme'
end

group :development do
  gem 'pry'
  gem 'rubocop-jekyll'
end
