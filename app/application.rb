class Application
  def call(env)
    resp = Rack::Response.new
    greeting = "Good "

    Time.now.hour < 12 ? resp.write(greeting << "Morning") : resp.write(greeting << "Afternoon")

    resp.finish
  end
end
