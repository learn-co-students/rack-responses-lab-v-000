class Application

  def call(env)
    resp = Rack::Response.new
    now = Time.now
    if now.hour < 12
      resp.write "Good Morning User!"
    else
      resp.write "Good Afternoon User!"
    end
      resp.finish
  end

end
