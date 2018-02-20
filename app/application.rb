require 'pry'
class Application
  def call(env)
    resp = Rack::Response.new
    binding.pry
    if Time.now.hour > 12
      resp.write "Good Afternoon!"
    elsif Time.now.hour < 12
      resp.write "Good Morning!"
    end
    resp.finish
  end
end
