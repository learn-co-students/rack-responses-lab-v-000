class Application

  def call(env)
    resp = Rack::Response.new

    right_now = Time.now

    if right_now.hour > 11
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end

    resp.finish
  end

end