
class Application

  def call(env)

    resp = Rack::Response.new

    time = Kernel.rand(1..24)

    resp.write time

    resp.finish
  end

end
