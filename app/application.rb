class Application

 def call(env)
   resp = Rack::Response.new

   time = Time.now

   resp.write "#{time}\n"

   if Time.now.hour.between?(0, 11)
     resp.write "Good Morning!"
   else
     resp.write "Good Afternoon!"
   end

   resp.finish
 end

end
