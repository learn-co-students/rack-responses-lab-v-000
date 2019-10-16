class Application

  def call(resp)
    resp = Rack::Response.new

    t = Time.now

    if t.hour < 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
  end
end
