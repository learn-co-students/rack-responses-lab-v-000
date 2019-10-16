class Application

  def call(env)
    resp = Rack::Response.new
    t = Time.now
    now = t.to_a
    if now[2] >= 12
      resp.write "Good Afternoon!"
      resp.finish
    else
      resp.write "Good Morning!"
      resp.finish
    end
  end

end
