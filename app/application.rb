class Application

  def call(env)
    resp = Rack::Response.new
    
    time = Time.now

    if time.hour <= 12
      resp.write "Good Morning!\n"
      resp.write "The time is currently #{time.hour}:#{time.min}:#{time.sec}"
    else
      resp.write "Good Afternoon!\n"
      resp.write "The time is currently #{time.hour-12}:#{time.min}:#{time.sec}"
    end
    resp.finish
  end

end