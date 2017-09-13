require_relative '../config/environment'
require 'rack/test'
require 'pry'

def app()
  Application.new
end
RSpec.configure do |config|

  config.include Rack::Test::Methods

  config.order = 'default'
end
