require 'pry'
class Application

  def call(env)
    resp = Rack::Response.new

    #binding.pry

    #no need to make a variable for this Time.now.hour
    if Time.now.hour < 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
  end

end
