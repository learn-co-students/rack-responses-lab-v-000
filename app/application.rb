class Application
  def call(env)
    resp = Rack::Response.new
    time = Time.now.hour

    if time < 12
      resp.write "Good Morning!\n"
    else
      resp.write "Good Afternoon!\n"
    end

    resp.finish
  end

end
