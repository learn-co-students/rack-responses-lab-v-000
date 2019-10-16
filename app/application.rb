class Application

  def call(env)
    resp = Rack::Response.new
    time_now = Time.now.hour
    if time_now < 12
      time_of_day = "Morning"
    else
      time_of_day = "Afternoon"
    end
    resp.write "Good #{time_of_day}\n"
    resp.finish
  end

end