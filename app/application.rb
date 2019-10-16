class Application

  def call(env)
    resp = Rack::Response.new

    # time_1 = Kernel.rand(1..12)
    # time_2 = Kernel.rand(12..24)

    if Time.now.hour < 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
  end

end
