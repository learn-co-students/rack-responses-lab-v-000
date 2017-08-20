class Application

  def call(env)
    resp = Rack::Response.new
    time = Kernel.rand(1..24)

    resp.write "you entered: #{time}\n"


    if time.between?(1, 12)
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end
    resp.finish
  end

end
