class Application

 def call(env)
  resp = Rack::Response.new
  a = Time.now
  resp.write "#{a.strftime('%H:%M')}\n"
  if a.hour > 12
   resp.write "Good Afternoon!" 
  else
   resp.write "Good Morning!"
  end
  resp.finish
 end

end
