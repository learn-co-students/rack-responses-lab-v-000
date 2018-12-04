class Application

  def call(env)
    resp = Rack::Response.new

    #get time right now
    time = Time.now

    resp.write "#{time}\n"

    if time.hour < 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
  end
end
