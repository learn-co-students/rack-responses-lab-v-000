class Application

  def call(env)
    resp = Rack::Response.new
    now = Time.now
    if now.hour <= 11
      resp.write "Good Morning"
    else
      resp.write "Good Afternoon"
    end
    resp.finish
  end

end
