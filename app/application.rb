class Application

  def call(env)
    resp = Rack::Response.new

    hour = Time.now.hour

    resp.write hour <= 11 ? "Good Morning!" : "Good Afternoon!"

    resp.finish
  end

end
