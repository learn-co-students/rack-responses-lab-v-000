class Application

  def call(env)
    resp = Rack::Response.new

    time = Time.now

    if time.hour < 12
      resp.write "Morning Darling!"
    else
      resp.write "Afternoon oon oon"
    end
    resp.finish
  end
end
