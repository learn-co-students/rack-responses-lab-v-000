class Application

  def call(env)
    resp = Rack::Response.new
    date = Time.now
    if date.hour > 12
      resp.write "Good Afternoon!"
    elsif date.hour < 12
      resp.write "Good Morning!"
    end
    resp.finish
  end

end
