class Application

  def call(env)
    current_hour  = Time.now.hour
    resp = Rack::Response.new
    
    if current_hour < 13
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end
    resp.finish
  end

end
