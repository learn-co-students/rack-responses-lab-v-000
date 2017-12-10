class Application

  def call(env)
    resp = Rack::Response.new

    if datetime <= 12:00 && > 23:59
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end
    resp.finish
  end

end
