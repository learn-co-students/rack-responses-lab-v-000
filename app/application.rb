class Application

  def call(env)
    resp = Rack::Response.new
    #resp.write "Hello, World"

    current_time = Time.now.hour

    if current_time < 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
  end

end
