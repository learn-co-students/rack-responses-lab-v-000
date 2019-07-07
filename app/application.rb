class Application

  def call(env)
    resp = Rack::Response.new

    t = Time.now
    t_integer = t.strftime("%H%M").to_i

    if t_integer > 1200
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end

    resp.finish
  end

end
