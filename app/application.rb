class Application

  def call(env)
    res = Rack::Response.new

    t = Time.now

    if t.hour < 12
      # res.write "#{t}"
      res.write "Morning"
    else
      res.write "Afternoon"
    end
    res.finish
  end

end
