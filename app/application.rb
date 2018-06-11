
class Application
  
  def call(env)
    resp = Rack::Response.new
    t = Time.now
    new_time = t.strftime("%k:%M").to_f
    if new_time >= 12
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end
    resp.finish
  end
    
end