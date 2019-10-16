class Application

  def call(env)
    time = Time.now
    resp = Rack::Response.new
    if time.hour <= 12 then
    resp.write "Good Morning!"
  else
    resp.write "Good Afternoon!"
  end
    resp.finish

  end

end
