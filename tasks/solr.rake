namespace :refinery do
  namespace :solr do
    desc 'Generates a dummy app for testing'
    task :dummy_app do
      system 'bundle exec rake refinery:testing:dummy_app'
      system "cd #{dummy_app_path} && bundle exec rails generate sunspot_rails:install"

      File.open(File.join(dummy_app_path, 'config', 'sunspot.yml'), 'w') do |config|
        config.puts "development:\n  solr:\n    hostname: localhost\n    port: 8982\n    log_level: WARNING\n    path: /solr/development\n\ntest:\n  solr:\n    hostname: localhost\n    port: 8982\n    log_level: WARNING\n    path: /solr/test"
      end

    end

    def dummy_app_path
      Refinery::Testing::Railtie.target_extension_path.join('spec', 'dummy')
    end
  end
end