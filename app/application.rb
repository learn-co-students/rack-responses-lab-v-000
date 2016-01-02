class Application
  def call(env)
    resp = Rack::Response.new

    time = Time.now #Time.new is synonym
    if time.hour < 12 #24 hour format
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
  end
end