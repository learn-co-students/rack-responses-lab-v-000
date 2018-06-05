class Application

  def call(env)
    resp = Rack::Response.new

    set_time = "12"
    time = Time.now
    time = time.strftime("%H")
    if time >= set_time
      resp.write "Good Afternoon"
    else
      resp.write "Good Morning"
    end

    resp.finish
  end
end
