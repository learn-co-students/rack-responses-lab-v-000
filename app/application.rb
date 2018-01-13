
class Application
  def call(env)
    resp = Rack::Response.new

    rand_time = Kernel.rand(1..24)

    if rand_time.between?(1,11)
      resp.write "Good Morning!"
    else rand_time.between?(12,24)
      resp.write "Good Afternoon!"
    end

    resp.finish

  end

end
