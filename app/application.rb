class Application

  def call(env)
    response = Rack::Response.new
    time = Time.now

    if time.hour < 12
      response.write "Good Morning!"
    else
      response.write "Good Afternoon!"
    end
    response.finish
  end

end