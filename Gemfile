# frozen_string_literal: true

source ENV.fetch('GEMS_SOURCE', 'https://gems.sutty.nl')

git_source(:github) { |repo_name| "https://github.com/#{repo_name}" }

gem 'jekyll', '~> 4.2.0'

group :jekyll_plugins do
  gem 'jekyll-ignore-layouts'
  gem 'jekyll-brotli'
  gem 'jekyll-commonmark'
  gem 'jekyll-data'
  gem 'jekyll-drafts-as-metadata'
  gem 'jekyll-embed-urls'
  gem 'jekyll-feed'
  gem 'jekyll-gzip'
  gem 'jekyll-hardlinks'
  gem 'jekyll-include-cache'
  gem 'jekyll-locales'
  gem 'jekyll-onion-location'
  gem 'jekyll-order'
  gem 'jekyll-purgecss'
  gem 'jekyll-relative-urls'
  gem 'jekyll-seo-tag'
  gem 'jekyll-sitemap'
  gem 'jekyll-turbolinks'
  gem 'jekyll-unique-urls'
  gem 'sutty-archives'
end

group :jekyll_themes do
  gem 'adhesiones-jekyll-theme'
  gem 'editorial-autogestiva-jekyll-theme'
  gem 'radios-comunitarias-jekyll-theme'
  gem 'recursero-jekyll-theme'
  gem 'share-to-fediverse-jekyll-theme'
  gem 'sutty-donaciones-jekyll-theme'
  gem 'sutty-jekyll-theme'
  gem 'sutty-minima'
  gem 'compost-jekyll-theme'
end

group :development do
  gem 'pry'
  gem 'rubocop-jekyll'
end
