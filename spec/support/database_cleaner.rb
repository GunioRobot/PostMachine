require 'database_cleaner'

Rspec.configure do |config|
  DatabaseCleaner.strategy = :truncation

  config.before :each do
    Capybara.reset_sessions!
    DatabaseCleaner.clean
  end
end