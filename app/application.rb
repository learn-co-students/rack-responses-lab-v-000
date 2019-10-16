class Application

  def call(env)
    resp = Rack::Response.new
    t = Time.now

    if t.hour >= 12
      resp.write "Good Afternoon!\n"
    else
      resp.write "Good Morning!\n"
    end
    resp.write "Current Time: #{t}\n"
    resp.finish
  end

end