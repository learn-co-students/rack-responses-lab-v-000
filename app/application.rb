class Application

  def call(env)
    resp = Rack::Response.new

    time = time.now

    if time < 12:00
      resp.write "Good morning!"
    else
      resp.write "Good afternoon!"
    end
    resp.finish
  end
end 
