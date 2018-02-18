class Application

  def call(env)
    resp = Rack::Response.new
    date_time = Time.now
    time = date_time.hour
    if time < 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end
    resp.finish
  end

end
