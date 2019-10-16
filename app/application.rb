class Application
  def call(env)
    resp = Rack::Response.new
    time = Time.now
    noon = 12
    if time.hour > noon then resp.write "Good Afternoon!" else resp.write "Good Morning!" end
    resp.finish
  end
end
