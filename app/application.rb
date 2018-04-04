class Application
  def call(env)
    resp = Rack::Response.new
    time = Time.now.getlocal('-05:00').to_a[2]
    if time > 12
      resp.write "Good Afternoon!\n"
    else
      resp.write "Good Morning!\n"
    end
    resp.finish
  end

end
