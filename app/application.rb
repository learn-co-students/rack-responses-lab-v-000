class Application

  def call(env)
    resp = Rack::Response.new

    time_now = Time.now.localtime.hour
    
    time_now >= 0 && time_now < 12 ? (resp.write "Good Morning!") : (resp.write "Good Afternoon!")
     
    resp.finish
  end

end