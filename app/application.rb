class Application

  def call(env)
    resp = Rack::Response.new
    t = Time.now
    greeting = t.hour <  12 ? "Good Morning!" : "Good Afternoon!"
    resp.write greeting
    resp.finish
  end
end
