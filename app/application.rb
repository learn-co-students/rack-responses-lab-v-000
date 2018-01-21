#wishes user a good morning in the morning
#wishes user a good afternoon in the afternoon


class Application

  def call(env)
    resp = Rack::Response.new

    time = Time.now

    if time.hour < 12
#resp.write instead of puts
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon."
    end

    resp.finish
  end

end
