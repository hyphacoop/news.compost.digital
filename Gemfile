# frozen_string_literal: true

if ENV['JEKYLL_ENV'] == 'production'
  source 'https://gems.sutty.nl'
else
  source 'https://rubygems.org'
end

git_source(:github) { |repo_name| "https://github.com/#{repo_name}" }

gem 'jekyll', '~> 4'

group :jekyll_plugins do
  gem 'jekyll-brotli',
      git: 'https://0xacab.org/sutty/jekyll/jekyll-brotli.git'
  gem 'jekyll-commonmark'
  gem 'jekyll-drafts-as-metadata'
  gem 'jekyll-feed'
  gem 'jekyll-gzip',
      git: 'https://0xacab.org/sutty/jekyll/jekyll-gzip.git'
  gem 'jekyll-include-cache'
  gem 'jekyll-locales'
  gem 'jekyll-purgecss',
      git: 'https://0xacab.org/sutty/jekyll/jekyll-purgecss.git'
  gem 'jekyll-relative-urls'
  gem 'jekyll-seo-tag'
  gem 'jekyll-sitemap'
  gem 'jekyll-turbolinks'
end

group :jekyll_themes do
  gem 'minima'
end

group :development do
  gem 'pry'
  gem 'rubocop-jekyll'
end
