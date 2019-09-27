class Application
 
  def call(env)
    resp = Rack::Response.new
    
    Time.now.getlocal.hour >= 12 ? greeting = "Good Afternoon!" : greeting = "Good Morning!"
    
    resp.write "#{Time.now}\n"
    resp.write greeting
    
    resp.finish
  end
 
end