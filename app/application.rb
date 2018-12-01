class Application 
  
  def call(env)
    resp = Rack::Response.new 
    time = Time.now
    current_hour = time.hour
    noon = 12
    
    if current_hour < noon
      resp.write "Good Morning!"
    else 
      resp.write "Good Afternoon"
    end 
    resp.finish
  end 
end 