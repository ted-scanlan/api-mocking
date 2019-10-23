# Set the environment to "test"
ENV['RACK_ENV'] = 'test'

# Bring in the contents of the `app.rb` file
require File.join(File.dirname(__FILE__), '..', 'app.rb')

# Require all the testing gems
require 'capybara'
require 'capybara/rspec'
require 'rspec'
require 'webmock/rspec'
# require 'webmock/test_unit'

# Tell Capybara to talk to BookmarkManager
Capybara.app = NewsSummary
