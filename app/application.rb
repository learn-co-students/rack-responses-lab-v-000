class Application

  def call(env)
    resp = Rack::Response.new

    t = Time.now.hour

    if t < 12
      resp.write "Morning"
    else
      resp.write "Afternoon"
    end

    resp.finish
  end

end
