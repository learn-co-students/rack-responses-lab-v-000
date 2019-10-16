class Application
  def call time
    resp = Rack::Response.new
    if Time.now.hour >= 12 
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end
    resp.finish
  end
end