require 'rubygems'

# Configure Rails Environment
ENV["RAILS_ENV"] ||= 'test'

require File.expand_path("../dummy/config/environment", __FILE__)

require 'rspec/rails'
require 'capybara/rspec'

Rails.backtrace_cleaner.remove_silencers!

RSpec.configure do |config|
  config.mock_with :rspec
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.filter_run :focus => true
  config.run_all_when_everything_filtered = true

  config.before(:suite) do
    system "bundle exec rake -f #{File.expand_path("../dummy/Rakefile", __FILE__)} sunspot:solr:start"
    sleep 2
  end

  config.after(:suite) do
    system "bundle exec rake -f #{File.expand_path("../dummy/Rakefile", __FILE__)} sunspot:solr:stop"
  end
end

# set javascript driver for capybara
Capybara.javascript_driver = :selenium

# Requires supporting files with custom matchers and macros, etc,
# in ./support/ and its subdirectories including factories.
([Rails.root.to_s] | ::Refinery::Plugins.registered.pathnames).map{|p|
  Dir[File.join(p, 'spec', 'support', '**', '*.rb').to_s]
}.flatten.sort.each do |support_file|
  require support_file
end
