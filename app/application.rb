class Application

  def call(env)
    resp = Rack::Response.new

    t = Time.now
    hour = t.hour

    if hour.between?(1, 11)
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end
    resp.finish
  end

end
