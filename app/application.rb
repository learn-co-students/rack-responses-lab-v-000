class Application

  def call(env)
    resp = Rack::Response.new
    current = Time.now.hour

    if current >= 12
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end

    resp.finish
  end

end
