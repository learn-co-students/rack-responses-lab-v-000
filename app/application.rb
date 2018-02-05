class Application

  def call(env)
    resp = Rack::Response.new
    time = Time.new
      if time.hour >= 0 && time.hour < 12
        resp.write "Good Morning!"
      elsif time.hour >= 12 && time.hour <= 23
        resp.write "Good Afternoon!"
      end
    resp.finish
  end

end
