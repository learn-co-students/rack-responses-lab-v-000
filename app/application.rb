class Application

  def call(env)
    resp = Rack::Response.new
    current_time = Time.now
    current_time < 12 ? resp.write "Good Morning!" : resp.write "Good Afternoon!"
    resp.finish
  end

end
