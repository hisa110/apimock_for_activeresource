# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Apimock::Application.initialize!


require 'find'
$response_code=200
$yaml_dir=ENV['MOCK_DIR'].nil? ? Rails.root : ENV['MOCK_DIR']
