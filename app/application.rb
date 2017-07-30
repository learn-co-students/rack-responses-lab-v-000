class Application
  def call(env)
    resp = Rack::Response.new

    current_time = Time.now
    noon = 12
    if current_time.hour < noon
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"

    end

    resp.finish
  end
end
