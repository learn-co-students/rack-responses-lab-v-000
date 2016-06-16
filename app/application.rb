class Application

  def call(env)
    resp = Rack::Response.new
    greeting = Time.now.hour < 12 ? "Good Morning" : "Good Afternoon"
    resp.write(greeting)
    resp.finish
  end

end
