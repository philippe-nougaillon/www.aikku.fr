# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "4.0.1"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 8.1"

# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem "sprockets-rails"

# Use postgresql as the database for Active Record
gem "pg"

# Use the Puma web server [https://github.com/puma/puma]
gem "puma"

# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem "importmap-rails"

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem "turbo-rails"

# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "stimulus-rails"

# Use Tailwind CSS [https://github.com/rails/tailwindcss-rails]
gem "tailwindcss-rails", "~> 4.1"

gem "cgi"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

#

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[mri mingw x64_mingw]
end

group :development do
  gem "hotwire-spark"
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console"

  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  # gem "rack-mini-profiler"

  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end

gem "rspec-rails"

# Flexible authentication solution for Rails with Warden.
gem "devise"

gem "image_processing", "~> 1.2"

# A tagging plugin for Rails applications that allows for custom tagging along dynamic contexts.
gem "acts-as-taggable-on"

# SitemapGenerator is a framework-agnostic XML Sitemap generator written in Ruby with automatic Rails integration. It supports Video, News, Image, Mobile, PageMap and Alternate Links sitemap extensions and includes Rake tasks for managing your sitemaps, as well as many other great features.
gem "sitemap_generator"

gem "view_component"

# gem "sidekiq", "~> 6.5"

gem "active_decorator"

gem "recaptcha"

# a Ruby memcache client.
gem "dalli"
gem "pg_search"

# A web server agnostic rack middleware for defining and applying rewrite rules. In many cases you can get away with Rack::Rewrite instead of writing Apache mod_rewrite rules.
gem "rack-rewrite"

gem "canonical-rails", github: "commonlit/canonical-rails", branch: "bump-rails-8-1"

gem "meta-tags"

gem "mailgun-ruby"

gem "standard", "~> 1.54"
