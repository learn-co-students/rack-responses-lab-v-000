class Application
    
  def call(env)
        resp = Rack::Response.new
        
    resp.write Time.now.hour < 12 ? 'Morning' : 'Afternoon'
    
        resp.finish
  end
    
    
    
    
    
end
    
    
    
    