class Application
  
  def call(env)
    
    resp = Rack::Response.new
    
    time = Time.now 
    
    resp.write "Current time: #{time}\n"
    resp.write "\n"
    resp.write "\n"
    
    if time.hour >= 0 && time.hour < 12
      resp.write "Morning"
    else 
      resp.write "Afternoon"
    end 
    resp.finish
  end 
  
end 