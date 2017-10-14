class Application

  def call(env)
    resp = Rack::Response.new

    tnow = Time.now.hour.to_i

    if tnow.between?(0, 12)
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end
    resp.finish
  end

end
