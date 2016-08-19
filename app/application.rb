class Application

  def call(env)
    resp = Rack::Response.new

    t = Time.now.hour

    if t > 12
      resp.write "Good Afternoon!"
    elsif t < 12
      resp.write "Good Morning!"
    end

    resp.finish
  end
end
