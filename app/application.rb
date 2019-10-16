class Application

  def call(env)
    resp = Rack::Response.new

    time = Time.now.hour
    # time2 = Time.new(2017, 10, 16, 12, 00, 00)

    if time < 12
      resp.write "Morning"
    else
      resp.write "Afternoon"
    end

    resp.finish
  end

end
