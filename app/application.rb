class Application

  def call(env)
    resp = Rack::Response.new
    current_time = Time.now.to_s
    time = current_time[11,3].to_i
    #you can also just call .hour on the current time to get the hour!
    #current_time = Time.now
    #current_time.hour >> 12 or 6, for example

    if time > 12
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end
    resp.finish
  end

end
