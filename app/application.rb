class Application
  def call(env)
    resp = Rack::Response.new
    t = Time.now
    msg = t.hour >= 12 ? "Good Afternoon!" : "Good Morning!"
    resp.write msg
    resp.finish
  end
end
