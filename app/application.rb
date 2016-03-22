class Application
  def call(env)

    resp = Rack::Response.new

    wut_time_zit = Time.now

    if wut_time_zit.hour <= 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end
    resp.finish
  end
end
