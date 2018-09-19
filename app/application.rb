class Application

  def call(env)
    resp = Rack::Response.new

    afternoon = Time.now

    if afternoon.hour < 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
  end

end
