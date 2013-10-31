source 'https://rubygems.org'

gemspec

git 'git://github.com/refinery/refinerycms.git', :branch => 'master' do
  gem 'refinerycms'

  group :development, :test do
    gem 'refinerycms-testing'
  end
end

git 'git://github.com/refinery/refinerycms-i18n.git', :branch => 'master' do
  gem 'refinerycms-i18n'
end

gem "sunspot", "~> 2.1.0"
gem "sunspot_rails", "~> 2.1.0"
gem "sunspot_solr", "~> 2.1.0"
gem "sunspot_cell", "~> 0.1.2"

gem 'globalize', "~> 4.0.0.alpha.1"
gem 'seo_meta', github: 'parndt/seo_meta', branch: 'master'

group :development, :test do
  require 'rbconfig'

  gem 'sqlite3', :platform => :ruby
  gem 'mysql2', :platform => :ruby
  gem 'pg', :platform => :ruby
end

# Refinery/rails should pull in the proper versions of these
group :assets do
  gem 'sass-rails'
  gem 'uglifier'
end

gem 'jquery-rails'
gem 'protected_attributes'
gem 'coveralls', require: false
