class Application

  def call(env)
    resp = Rack::Response.new
    current_time = Time.now
    current_hour = current_time.hour >= 12 ? "Good Afternoon!" : "Good Morning!"
    resp.write current_hour
    resp.finish
  end

end
