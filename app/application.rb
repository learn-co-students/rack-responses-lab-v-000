class Application
 
  def call(env)
    resp = Rack::Response.new
 
    time = Time.now
 

 
    if time.hour < 12
      resp.write "It is after #{time.hour}, Good Morning!"
    else
      resp.write "It is after #{time.hour}, Good Afternoon!"
    end
 
    resp.finish
  end
 
end