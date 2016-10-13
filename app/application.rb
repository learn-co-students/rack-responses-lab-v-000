class Application

  def call(env)
    resp = Rack::Response.new

    time = Time.now.hour
     resp.write "Good Morning!\n" if time < 12
     resp.write "Good Afternoon!\n" if time >= 12
    resp.finish
  end
end
