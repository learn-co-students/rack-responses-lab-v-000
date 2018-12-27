class Application
  def call(env)
    resp = Rack::Response.new

    time = Time.now

    if time.hour <= 11 && time.min <= 59
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
  end
end
