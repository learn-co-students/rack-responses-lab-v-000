class Application

  def call(env)
    resp = Rack::Response.new

    time = Time.now

    if time.hour >= 12
      resp.write "Good Afternoon World !!"
    else
      resp.write "Good Morning World !!"
    end

    resp.finish
  end
end
