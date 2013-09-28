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

git 'git://github.com/sunspot/sunspot.git', :branch => 'master' do
  gem 'sunspot'
  gem 'sunspot_rails'
  gem 'sunspot_solr'
end

gem 'globalize3', github: 'svenfuchs/globalize3', branch: 'rails4'
gem 'seo_meta', github: 'parndt/seo_meta', branch: 'master'

group :development, :test do
  require 'rbconfig'

  gem 'sqlite3', :platform => :ruby
end

# Refinery/rails should pull in the proper versions of these
group :assets do
  gem 'sass-rails'
  gem 'uglifier'
end

gem 'jquery-rails'
gem 'protected_attributes'
