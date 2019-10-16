class Application

  def call(env)
    resp = Rack::Response.new

    time = Kernel.rand(0..24)

    resp.write "#{time}\n"


    if time > 12
      resp.write "You Afternoon"
    else
      resp.write "Good Morning"
    end

    resp.finish
  end

end
