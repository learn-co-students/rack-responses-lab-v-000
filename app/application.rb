class Application
  
  def call(env)
    resp = Rack::Response.new 
    
    time = Time.now.hour
    
    time < 12 ? greeting = "Good Morning!" : greeting = "Good Afternoon!"
      
    resp.write greeting

    
    resp.finish
    
  end
  
end