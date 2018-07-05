class Application

  def call(env)
    resp = Rack::Response.new

    time_1 = Time.now

    if ("#{time_1}" < 12:00:00) && ("#{time_1}" < 24:00:00)
      resp.write "Good Morning!"

    else
      resp.write "Good Afternoon!"

    resp.finish
  end
end
