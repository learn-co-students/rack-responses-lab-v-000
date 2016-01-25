class Application

  def call(env)
    resp = Rack::Response.new

    if Time.now.hour < 12
      greeting = "Good Morning!"
    else
      greeting = "Good Afternoon!"
    end

    resp.write greeting
    resp.finish

  end


end
