class Application

  def call(env)
    resp = Rack::Response.new

    t = Time.now

    if t.hour >= 12 && t.hour < 24
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end

    resp.finish
  end

end