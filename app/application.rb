class Application

  def call(env)
    resp = Rack::Response.new

    t = Time.now.hour
      if t < 12
        resp.write "Good Morning!"
      elsif t >= 12
        resp.write "Good Afternoon!"
      end

    resp.finish
  end

end
