class Application

  def call(env)
    resp = Rack::Response.new

    time = Time.now.strftime("%I:%M %p")

    if time.include?("PM")
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end

    resp.finish
  end
end
