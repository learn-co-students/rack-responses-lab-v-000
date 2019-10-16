class Application

  def call(env)
    resp = Rack::Response.new
    right_now = Time.now

    if right_now.hour < 12
      resp.write "Good Morning"
    else
      resp.write "Good Afternoon"
    end
    resp.finish 
  end

end