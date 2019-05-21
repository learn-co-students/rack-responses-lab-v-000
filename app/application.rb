class Application
  def call(env)
    resp = Rack::Response.new
 
    t = Time.now
    tnow = t.to_a 
 
    if tnow[2] >= 12
      resp.write "Good Afternoon"
    else
      resp.write "Good Morning"
    end
 
    resp.finish
  end
end