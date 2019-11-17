class Application

  def call(env)
    resp = Rack::Response.new
    time = Time.now
    time = time.hour
    if time >= 12
      resp.write "Good Afternoon"
    elsif time < 12
      resp.write "Good Morning"
    end
    resp.finish
  end

end
