require 'pry'

class Application

  def call(env)
    resp = Rack::Response.new
    time = Time.now
    #time = Time.new(utc_offset="-08:00").hour
    if time.hour >= 12
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end
    resp.finish
  end

end
