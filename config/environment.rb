$twitter = YAML::load( File.open( File.join(Rails.root, 'config', 'twitter.yaml' ) ) )

# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
AutocompleteDemo::Application.initialize!
