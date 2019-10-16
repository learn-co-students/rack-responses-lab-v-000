class Application

  def call(env)
    resp = Rack::Response.new

    hour = Time.now.hour


    if hour.between?(0, 11)
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
  end

end
