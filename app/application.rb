class Application

  def call (env)
    response = Rack::Response.new

    time = Time.now

    if time.hour >= 12
      response.write "Good Afternoon"
    else
      response.write "Good Morning"
    end

    response.finish
  end

end