require 'pry'
class Application

 def call(env)
  resp = Rack::Response.new
  real = Time.now
  if real.hour < 12 
   resp.write "Morning"
  else
   resp.write "Afternoon" 
  end
   resp.finish 
 end 

end