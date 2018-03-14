class Application

  def call(env)
    resp = Rack::Response.new

    time = Time.now

    resp.write "#{time.hour}:#{time.min} #{time.zone}\n"

    if time.hour >= 12
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end

    resp.finish
  end

end
