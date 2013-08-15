# Load the rails application
require File.expand_path('../application', __FILE__)
require 'simple-navigation'
SimpleNavigation::config_file_paths << File.expand_path("../../config", __FILE__)
# Initialize the rails application
Yehkevin::Application.initialize!
