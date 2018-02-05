class Application

  def call(env)
    resp = Rack::Response.new
    current_time = Time.now
    hour = current_time.hour

    resp.write "The current hour is #{hour}."

    if hour > 12
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end
    resp.finish
  end

end
