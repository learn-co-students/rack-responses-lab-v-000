class Application
  def call(env)
    resp = Rack::Response.new
    current_time = Time.now.hour

    resp.write current_time < 12 ? "Good Morning" : "Good Afternoon\n"
    resp.write "Current time is: #{current_time}."
    resp.finish
  end
end
