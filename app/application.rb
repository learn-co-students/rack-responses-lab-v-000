class Application

 def call(env)
   resp = Rack::Response.new
   if Time.now.hour.to_i < 12
     resp.write "Good morning!"
   else
     resp.write "Good afternoon!"
   end
 end
end
