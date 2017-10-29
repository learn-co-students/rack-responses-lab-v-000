class Application

  def call(env)
    resp = Rack::Response.new
    date = Time.now

    if date.hour < 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end
    resp.finish
  end

end
