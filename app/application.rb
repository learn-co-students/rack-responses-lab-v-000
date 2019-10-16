class Application
 
 def call(env)
  resp = Rack::Response.new
  t = Time.now
  hour = t.to_s.split(" ")[1].split(":")[0]
  if hour.to_i < 12
    resp.write "Good Morning!"
  else
    resp.write "Good Afternoon!"
  end
  resp.finish
 end
end
