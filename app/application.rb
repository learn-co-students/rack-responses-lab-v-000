class Application

  def call(env)
    resp = Rack::Response.new

    t = Time.now

    if t.hour < 12
      resp.write "Morning"
    elsif t.hour >= 12
      resp.write "Afternoon"
    end

    resp.finish
  end # call

end
