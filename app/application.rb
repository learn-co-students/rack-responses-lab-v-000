class Application

  def call(env)
    resp = Rack::Response.new

    time = Time.new
    resp.write "#{time}\n"

    if time.hour < 12
      resp.write "Good Morning!"
    elsif time.hour >= 12
      resp.write "Good Afternoon!"
    end
    resp.finish
  end

end
