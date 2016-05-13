require 'pry'
class Application
  def call(env)
    resp = Rack::Response.new
    time1 = Time.now.hour
    if time1 < 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end
    resp.finish
  end
end