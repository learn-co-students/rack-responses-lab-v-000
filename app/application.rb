class Application

  def clock(env)
    resp = Rack::Response.new
    time = Time.now.hour
    if time >= 0 && time <= 11
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end
  resp.finish
  end

end
