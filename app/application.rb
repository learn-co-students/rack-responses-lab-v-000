class Application

  def call(env)
    resp = Rack::Response.new

    current_time = Time.now

    if current_time.strftime("%H:%M:%S") > "12:00:00"
      resp.write "Good Afternoon"
    else
      resp.write "Good Morning"
    end
    resp.finish
  end
end
