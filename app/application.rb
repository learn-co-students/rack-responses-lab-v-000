class Application
  def call(env)

    resp = Rack::Response.new

    time = Time.now.strftime("%H:%M%")
    # if time.include?("PM")
    if time.to_i > 12
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end

    resp.finish
  end
end
