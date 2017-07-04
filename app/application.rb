require 'pry-rescue'
class Application

  def call(env)
    resp = Rack::Response.new
    time = Time.now
    binding.pry
    if time.hour < 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end
    resp.finish
    #binding.pry
  end
end
#1. If it's before noon, greet
#the user with "Good Morning!"
