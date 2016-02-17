class Application

  def call(env)
    now = Time.now
    resp = Rack::Response.new

    if now.hour >= 12
      resp.write "Good Afternoon"
    else
      resp.write "Good Morning"
    end
    resp.finish
  end

end