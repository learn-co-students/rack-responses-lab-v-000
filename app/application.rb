class Application

  def call(env)
    resp = Rack::Response.new
    resp.write message
    resp.finish
  end

  def message
    if Time.now.hour < 12
      "Good Morning!"
    else
      "Good Afternoon!"
    end
  end

end
