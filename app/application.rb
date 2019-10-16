class Application

  def call(env)
    resp = Rack::Response.new
    t = Time.now.to_a

    if t[0] >= 0 && t[1] >= 0 && t[2] >= 12
      resp.write "Good Afternoon"
    else
      resp.write "Good Morning"
    end
    resp.finish
  end

end
