class Application

  def call(env)
    resp = Rack::Response.new

    t = Time.now.hour
    resp.write "#{t}"

    if t < 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
  end

end
