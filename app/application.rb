class Application

  def call(env)
    resp = Rack::Response.new
    t = Time.now.localtime.hour

    if t < 12
      resp.write "Good Morning!\n"
    else
      resp.write "Good Afternoon!\n"
    end
    resp.write "The current time is #{Time.now.localtime.asctime}"
    resp.finish
  end

end
