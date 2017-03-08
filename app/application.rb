class Application
  def call(env)
    hour = Time.now.strftime("%H").to_i
    response = Rack::Response.new
    time_of_day = ""
    if hour < 12
      time_of_day = "Morning"
    else
      time_of_day = "Afternoon"
    end
    response.write "Good #{time_of_day}!"
    response.finish
  end
end
