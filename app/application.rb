class Application

  def call(env)
    rsp = Rack::Response.new

    if Time.now.hour <= 12
      rsp.write "Good Morning!"
    else
      rsp.write "Good Afternoon!"
    end
    rsp.finish
  end
end
