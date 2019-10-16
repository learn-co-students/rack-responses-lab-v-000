class Application

  def call(env)
    resp = Rack::Response.new
    time = Kernel.rand(1..24)

    #time = Time.new

    #resp.write "#{time}\n"

    if time > 12
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end

    resp.finish
  end

end
