# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Ideahandler::Application.initialize!

begin
  Tire.configure do
    logger STDERR
    url = "http://192.168.8.110:9300"
  end
rescue => e
  p "Wrong configuration: #{e}"
end
