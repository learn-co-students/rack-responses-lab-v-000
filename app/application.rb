class Application

  def call(env)
    resp = Rack::Response.new

    time = Time.now.to_s.split(" ")[1]
    if time < "12:00:00" 
      resp.write "Good Morning!"
    else 
      resp.write "Good Afternoon!"
    end
    resp.finish
  end

end