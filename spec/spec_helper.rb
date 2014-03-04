ENV["RAILS_ENV"] ||= "test"

require File.expand_path("../../config/environment", __FILE__)
require "rspec/rails"
require "rspec/autorun"
require "capybara/rspec"
require "capybara/poltergeist"
Dir[Rails.root.join("spec/support/**/*.rb")].each { |f| require f }

ActiveRecord::Migration.check_pending! if defined?(ActiveRecord::Migration)

RSpec.configure do |config|
  config.fixture_path = "#{::Rails.root}/spec/fixtures"
  config.infer_base_class_for_anonymous_controllers = false
  config.order = "random"

  #-----BEGIN => DATABASE CLEANER CONFIG-----
  # config settings from this blog post => goo.gl/EjD0Z0

  config.use_transactional_fixtures = false

  config.before(:suite) { DatabaseCleaner.clean_with(:truncation) }
  config.before(:each)  { DatabaseCleaner.strategy = :transaction }
  config.before(
    :each,
    :js => true)       { DatabaseCleaner.strategy = :truncation }
  config.before(:each) { DatabaseCleaner.start                  }
  config.after(:each)  { DatabaseCleaner.clean                  }
  #-----END => DATABASE CLEANER CONFIG-----
end

# Poltergeist gem config
Capybara.javascript_driver = :poltergeist
