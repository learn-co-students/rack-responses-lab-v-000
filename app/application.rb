
class Application

  def call(env)
    resp = Rack::Response.new
     val = Time.now
    if val.hour < 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end
    resp.finish
  end
end
