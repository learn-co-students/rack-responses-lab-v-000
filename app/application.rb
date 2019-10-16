class Application

  def call(env)
    resp = Rack::Response.new
    if Time.now.hour < 12
      resp.write "Good Morning, Bonswa"
    else
      resp.write "Good Afternoon, Bonjou"
    end
    resp.finish
  end
end
