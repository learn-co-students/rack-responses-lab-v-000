class Application
  def call(env)
    resp = Rack::Response.new

    if Time.now.hour < 12 && Time.now.hour > 0
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end
    resp.finish
  end
end
