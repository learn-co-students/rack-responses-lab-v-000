class Application

  def call(env)
    resp = Rack::Response.new
    t = Time.now
    t.localtime
    if t.hour >= 12 then
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end

    resp.finish
  end

end
