class Application

  def call(env)
    resp = Rack::Response.new
    time = Time.now
    time_array = time.to_a
    hour = time_array[2]

    if hour < 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
  end

end
