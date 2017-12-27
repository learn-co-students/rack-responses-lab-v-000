class Application

  def call(env)
    resp = Rack::Response.new

    hour = Time.now.hour
    resp.write("Time #{hour} hrs.\n")

    if (0..11).include?(hour)
      resp.write("Good Morning!")
    else
      resp.write("Good Afternoon!")
    end

    resp.finish
  end

end
