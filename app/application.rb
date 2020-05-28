class Application
  
  def call(env)
    resp = Rack::Response.new
    resp.write "Good Morning!" if Time.now.hour < 12
    resp.write "Good Afternoon!" if Time.now.hour >= 12
    resp.finish
  end
end