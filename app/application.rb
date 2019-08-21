class Application

  def call(env)
    resp = Rack::Response.new
    afternoon = Time.new(2018, 1, 4, 12, 0, 0)
    if Time.now.hour < afternoon.hour
      resp.write "You Morning"
    else
      resp.write "Good Afternoon"
    end

    resp.finish
  end

end
