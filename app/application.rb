class Application
 
  def call(env)
    resp = Rack::Response.new
    
    noon = "12:00"
    
    if Time.now.strftime('%H:%M') < noon
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end
    
    resp.finish
  end
 
end